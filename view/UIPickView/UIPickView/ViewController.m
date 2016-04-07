//
//  ViewController.m
//  UIPickView
//
//  Created by xgm on 16/4/3.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize picker;

NSArray* books;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建并初始化NSArray对象
    books = [NSArray arrayWithObjects:@"疯狂Android讲义", @"疯狂IOS讲义", @"疯狂Ajax讲义", @"疯狂XML讲义", nil];
    //为UIPickView控件设置dataSource和delegate
    self.picker.dataSource = self;
    self.picker.delegate = self;
}

//UIPickViewDataSource中定义的方法，该方法的返回值决定该控件包含多少列
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;//返回1表明该控件包含1列
}

//UIPickViewDataSource中定义的方法，该方法的返回值指定该控件包含多少了列表项
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //由于该控件只包含了一列，因此无需理会列序号参数component
    //该方法返回books.count，表明books包含对少个元素，该控件就包含多少行
    return books.count;

}
//指定列和列表项的标题文本
- (NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    //由于该控件只包含一列，因此无须理会列序号参数component
    //该方法根据row参数返回返回books中的元素，row参数代表列表项的编号，
    //因此该方法表示第几个列表项，就使用books中的第几个元素
    return [books objectAtIndex:row];
}
//当用户选中UIPickerViewDataSource中指定列和列表项时激活该方法
- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //使用一个UIAlertView来显示用户选中的列表项
    UIAlertView* alert = [[UIAlertView alloc]
                          initWithTitle:@"提示"
                          message:[NSString stringWithFormat:@"你选中的图书是:%@", [books objectAtIndex:row]]
                          delegate:nil
                          cancelButtonTitle:@"确定"
                          otherButtonTitles:nil];
    [alert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
