//
//  ViewController.m
//  UIImageView
//
//  Created by xgm on 16/3/19.
//  Copyright © 2016年 xgm. All rights reserved.
//  图片浏览器



#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSArray* images;
int curImage;
CGFloat alpha;

- (void)viewDidLoad {
    [super viewDidLoad];
    curImage = 0;
    alpha = 1.0;
    images = [NSArray arrayWithObjects:
              @"75279.jpg",
              @"75288.jpg",
              @"75290.jpg",
              @"75308.jpg",
              @"75755.jpg",
              @"76022.jpg",
              @"76061.jpg",
              nil];
    
    //启用iv控件的用户交互，从而允许该控件能响应用户手势
    self.iv1.userInteractionEnabled = YES;
    //创建一个轻击的手势检测器
    UITapGestureRecognizer* singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clicked:)];
    //为UIImageView添加手势检测器
    [self.iv1 addGestureRecognizer:singleTap];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)plus:(id)sender
{
    alpha += 0.02;
    //如果透明度大于或等于1.0，将透明度设置为1.0
    if (alpha >= 1.0) {
        alpha = 1.0;
    }
    self.iv1.alpha = alpha;
}
- (IBAction)minus:(id)sender
{
    alpha -= 0.02;
    if (alpha <= 0) {
        alpha = 0.0;
    }
    self.iv1.alpha = alpha;
}
- (IBAction)next:(id)sender
{
    //控制iv1的image显示images数组中的下一张图片
    self.iv1.image = [UIImage imageNamed:[images objectAtIndex:(++curImage % images.count)]];
}
- (IBAction)clicked:(UIGestureRecognizer*) gestureRecognizer
{
    //获取正在显示的原始位图
    UIImage* srcImage = self.iv1.image;
    //获取用户手指在iv控件上的触碰点
    CGPoint pt = [gestureRecognizer locationInView:self.iv1];
    //获取正在显示的原图对应的CGImageRef
    CGImageRef sourceImageRef = [srcImage CGImage];
    //获取图片实际大小与第一个UIImageView的缩放比例
    CGFloat scale = srcImage.size.width / 143;
    //将iv控件上触碰点的左边换算成原始图片上的位置
    CGFloat x = pt.x * scale;
    CGFloat y = pt.y * scale;
    if (x+120 > srcImage.size.width) {
        x = srcImage.size.width - 143;
    }
    if (y+120 > srcImage.size.width) {
        y = srcImage.size.height - 143;
    }
    //调用CGImageCreateWithImageInRect函数获取sourceImageRef中指定区域的图片
    CGImageRef newImageRef = CGImageCreateWithImageInRect(sourceImageRef, CGRectMake(x, y, 143, 143));
    //让iv2控件显示newImageRef对应的图片
    self.iv2.image = [UIImage imageWithCGImage:newImageRef];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
