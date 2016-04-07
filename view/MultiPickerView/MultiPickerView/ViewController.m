//
//  ViewController.m
//  MultiPickerView
//
//  Created by xgm on 16/4/4.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSDictionary* books;
NSArray* authors;
//保存当前选中的作者
NSString* selectedAuthor;


- (void)viewDidLoad {
    [super viewDidLoad];
    //创建并初始化NSDictionary对象
    books = [NSDictionary dictionaryWithObjectsAndKeys:
             [NSArray arrayWithObjects:@"飞鸟集", @"吉檀迦利", nil], @"泰戈尔",
             [NSArray arrayWithObjects:@"醒世恒言", @"喻世明言", @"警世通言", nil], @"冯梦龙",
             [NSArray arrayWithObjects:@"疯狂Android讲义", @"疯狂IOS讲义", @"疯狂Ajax讲义", @"疯狂XML讲义", nil], @"李刚",
             nil];
    //使用authors保存所有key组成的NSArray排序后的结果
    authors = [[books allKeys] sortedArrayUsingSelector:@selector(compare:)];
    //设置默认选中的作者
    selectedAuthor = [authors objectAtIndex:0];
    self.picker.dataSource = self;
    self.picker.delegate = self;
}

//UIPickerViewDataSource中定义的方法，该方法的返回值决定该控件包含多少列
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return  2;//该控件包含2列
}
//UIPickerDataSource中定义的方法，该方法的返回值决定该控件指定列包含多少个列表项
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //如果是第一列，返回authors中元素的个数
    //即authors包含多少个元素，第一列包含多少个列表项
    if (component == 0) {
        return  authors.count;
    }
    //如果是其他列，（只有第二列）
    //返回books中selectedAuthor对应的NSArray中元素的个数
    return [[books objectForKey:selectedAuthor] count];
}

//UIPickViewDelegate中定义的方法，该方法返回的NSString将作为
//UIPickerView中指定列和列表项上显示的标题
- (NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    //如果是第一列，返回authors中row索引出的元素
    //即第一列的元素由集合authors集合元素决定
    if (component == 0) {
        return  [authors objectAtIndex:row];
    }
    return [[books objectForKey:selectedAuthor] objectAtIndex:row];
}

//当用户选中UIPickerViewDataSource中指定列和列表项是技法该方法
- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component == 0) {
        //改变被选中的作者
        selectedAuthor = [authors objectAtIndex:row];
        //控制重写加载第二个列表，根据选中的作者来加载第二个列表
        [self.picker reloadComponent:1];
    }
    NSArray* tmp = component == 0 ? authors:[books objectForKey:selectedAuthor];
    NSString* tip = component == 0 ? @"作者" : @"图书";
    //使用一个UIAlertview来显示用户选中的列表项
    UIAlertView* alert = [[UIAlertView alloc]
                          initWithTitle:@"提示"
                          message:[NSString stringWithFormat:@"你选中的%@是%@", tip, [tmp objectAtIndex:row]]
                          delegate:nil
                          cancelButtonTitle:@"确定"
                          otherButtonTitles:nil];
    [alert show];
}
//Delegate中定义的方法，该方法返回的NSString将作为
//UIPickerView中指定列的宽度
- (CGFloat) pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    //如果是第一列，宽度是90
    if (component == 0) {
        return 90;
    }
    return  210;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
