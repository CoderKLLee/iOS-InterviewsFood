//
//  KLWindow.m
//  TouchEventDemo
//
//  Created by xjq on 25/9/19.
//  Copyright © 2019年 kairon. All rights reserved.
//

#import "KLWindow.h"

@implementation KLWindow

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    
    return [super hitTest:point withEvent:event];
}

- (void)sendEvent:(UIEvent *)event
{
   
    [super sendEvent:event];
}


@end
