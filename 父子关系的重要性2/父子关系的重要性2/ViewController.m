//
//  ViewController.m
//  父子关系的重要性2
//
//  Created by apple on 2016/12/9.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "ZPTemporaryViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ZPTemporaryViewController *tempVC = [[ZPTemporaryViewController alloc] init];
    [self presentViewController:tempVC animated:YES completion:nil];
}

@end
