//
//  ViewController.m
//  CustomPicker
//
//  Created by xgm on 16/4/5.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

UIImage* loseImage;
UIImage* winImage;
//保存系统中所有图片的集合
NSArray* images;

- (void)viewDidLoad {
    [super viewDidLoad];
    loseImage = [UIImage imageNamed:@"lose.jpg"];
    winImage = [UIImage imageNamed:@"win.gif"];
    //依次加载6张图片，生成对应的UIImage对象
    UIImage* dog = [UIImage imageNamed:@"dog.png"];
    UIImage* duck = [UIImage imageNamed:@"duck.png"];
    UIImage* elephant = [UIImage imageNamed:@"elephant.png"];
    UIImage* frog = [UIImage imageNamed:@"frog.png"];
    UIImage* mouse = [UIImage imageNamed:@"mouse.png"];
    UIImage* rabbit = [UIImage imageNamed:@"rabbit.png"];
    //初始化images集合，将前面6张图片封装成images集合
    images = [NSArray arrayWithObjects:dog, duck, elephant, frog, mouse, rabbit, nil];
    self.picker.dataSource = self;
    self.picker.delegate = self;
}
//UIPickerViewDataSource中定义的方法，该方法的返回值决定该kongjain包含多少列
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    //返回5表明该控件只包含5列
    return  5;
}
#define kImageTag 1
//该方法返回的UIView控件将直接作为该UIPickerView控件中指定列的指定列表项
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    //如果可重用的view的tag不等于kIMageTag，表明该view已经不存在，需要重新创建
    if(view.tag != kImageTag) {
        view = [[UIImageView alloc] initWithImage:[images objectAtIndex:row]];
        //为该UIView设置tag属性
        view.tag = kImageTag;
        //设置不允许用户交互
        view.userInteractionEnabled = NO;
    }
    return  view;
}
// UIPickerViewDataSource中定义的方法，该方法的返回值决定该控件指定列包含多少个列表项
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //images集合包含多少个元素，该控件的各列久包含多少个列表项
    return  images.count;
}
//UIPickerViewDelegate中定义的方法，该方法的返回值决定列表项的高度
- (CGFloat) pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 40;
}
//UIPickerViewDelegate中定义的方法，该方法的返回值决定列表项的宽度
- (CGFloat) pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    return 40;
}
- (IBAction)clicked:(id)sender
{
    self.startBn.enabled = NO;//禁用该按钮
    self.image.image
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
