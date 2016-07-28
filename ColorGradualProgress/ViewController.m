//
//  ViewController.m
//  ColorGradualProgress
//
//  Created by mr.scorpion on 15/6/12.
//  Copyright (c) 2015年 mr.scorpion. All rights reserved.
//


#import "ViewController.h"
#import "MSGradualProgressView.h"

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    MSGradualProgressView * gradualProgressView = [[MSGradualProgressView alloc] initWithFrame:CGRectMake(0., 64., self.view.frame.size.width, 2.0)];
    [self.view addSubview:gradualProgressView];
    [self performSelector:@selector(gradualProgressWithView:) withObject:gradualProgressView afterDelay:5.];
}

- (void)gradualProgressWithView:(MSGradualProgressView *)gradualProgressView
{
    gradualProgressView.progress += 0.1;
   
    if (gradualProgressView.progress == 1.0)
    {
        return;
    }
    [self performSelector:@selector(gradualProgressWithView:) withObject:gradualProgressView afterDelay:0.3];
}
@end
