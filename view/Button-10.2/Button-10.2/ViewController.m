//
//  ViewController.m
//  Button-10.2
//
//  Created by xgm on 16/3/15.
//  Copyright © 2016年 xgm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize btn1;
@synthesize btn2;
@synthesize btn3;
@synthesize btn4;
@synthesize btn5;
@synthesize btn6;
@synthesize btn7;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)disableClicked :(id)sender
{
    //切换btn1、btn2两个按钮的enabled状态
    //如果这两个按钮处于启用状态，将它们设为禁用
    //如果这两个按钮处于禁用状态，将它们设为启用
    self.btn1.enabled = !(self.btn1.enabled);
    self.btn2.enabled = !(self.btn2.enabled);
    //切换事件源（第5个按钮）上的文本标题
    if([[sender titleForState:UIControlStateNormal] isEqualToString:@"禁用"]) {
        [sender setTitle:@"启用" forState:UIControlStateNormal];
    } else {
        [sender setTitle:@"禁用" forState:UIControlStateNormal];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
