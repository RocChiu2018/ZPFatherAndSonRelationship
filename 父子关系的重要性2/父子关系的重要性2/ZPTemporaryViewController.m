//
//  ZPTemporaryViewController.m
//  父子关系的重要性
//
//  Created by apple on 2016/12/9.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZPTemporaryViewController.h"
#import "ZPOneViewController.h"

@interface ZPTemporaryViewController ()

@property (nonatomic, strong) ZPOneViewController *oneViewController;

@end

@implementation ZPTemporaryViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    /**
     一开始从xib文件加载过来的本视图控制器的view的宽高都为600，ZPOneViewController的view的宽高又都设为了100，因为在默认的情况下，所有视图控制器的view的autoresizingMask属性都包含了UIViewAutoresizingFlexibleWidth（宽度伸缩）和UIViewAutoresizingFlexibleHeight（高度伸缩），即子视图的宽高会跟随着它的父视图的宽高进行伸缩，所以当本视图控制器的view由一开始的600*600到后来的375*667的时候，ZPOneViewController的view的宽会跟着缩短，而高会跟着伸长，所以ZPOneViewController的view就会缩成了一条竖线，程序运行之后也就看不到了。要想把ZPOneViewController的view显示出来的话就要设置这个view的autoresizingMask属性为UIViewAutoresizingNone，即不要自动伸缩。
     */
    NSLog(@"%@", NSStringFromCGRect(self.view.frame));
    
    self.oneViewController = [[ZPOneViewController alloc] init];
    self.oneViewController.view.frame = CGRectMake(20, 100, 100, 100);
    self.oneViewController.view.autoresizingMask = UIViewAutoresizingNone;
    [self.view addSubview:self.oneViewController.view];
    [self addChildViewController:self.oneViewController];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
