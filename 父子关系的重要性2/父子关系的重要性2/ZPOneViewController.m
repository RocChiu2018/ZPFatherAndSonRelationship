//
//  ZPOneViewController.m
//  父子关系的重要性
//
//  Created by apple on 2016/12/9.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZPOneViewController.h"
#import "ZPTemporaryViewController.h"

@interface ZPOneViewController ()

@end

@implementation ZPOneViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

/**
 "dismissViewControllerAnimated: completion: "方法先会检测本视图控制器是不是modle出来的，如果不是的话则会检测本视图控制器的父视图控制器是不是modle出来的，如果要是的话，则会dismiss下去。
 */
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
