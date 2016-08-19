//
//  ViewController.m
//  DragButtonDemo
//
//  Created by zhangmh on 12-7-20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+NMCategory.h"

@interface ViewController ()

@end

@implementation ViewController
/**
 *  就是这样做项目的
 */
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(5, 100,60, 60)];
    btn.backgroundColor = [UIColor redColor];
    btn.tag = 0;
    btn.layer.cornerRadius = 8;
    [btn setDragEnable:YES];
    [btn setAdsorbEnable:YES];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(showTag:) forControlEvents:UIControlEventTouchDown];
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(5, 200,60, 60)];
    btn1.backgroundColor = [UIColor blackColor];
    btn1.tag = 1;
    btn1.layer.cornerRadius = 8;
    [btn1 setDragEnable:YES];
    [btn1 setAdsorbEnable:NO];
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(showTag:) forControlEvents:UIControlEventTouchUpInside];
}
/**
 *  button的流水布局
 *
 *  @param sender 可以来回拖动button实现位置的变化
 */
-(void)showTag:(UIButton *)sender
{
    NSLog(@"button.tag >> %@",@(sender.tag));
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
/**
 *  通知的布局
 *
 *  @param interfaceOrientation <#interfaceOrientation description#>
 *
 *  @return <#return value description#>
 */
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
