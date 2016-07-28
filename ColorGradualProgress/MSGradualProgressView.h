//
//  MSGradualProgressView.h
//  ColorGradualProgress
//
//  Created by mr.scorpion on 15/6/12.
//  Copyright (c) 2015年 mr.scorpion. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MSGradualProgressView : UIView


/**  Progress values go from 0.0 to 1.0  */
@property (nonatomic, assign) CGFloat progress;


/**  init  */
- (instancetype)initWithFrame:(CGRect )frame;


@end
