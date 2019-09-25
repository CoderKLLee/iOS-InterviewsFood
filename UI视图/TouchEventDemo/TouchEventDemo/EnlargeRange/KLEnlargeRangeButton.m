//
//  KLEnlargeRangeButton.m
//  TouchEventDemo
//
//  Created by xjq on 24/9/19.
//  Copyright © 2019年 kairon. All rights reserved.
//

#import "KLEnlargeRangeButton.h"

@implementation KLEnlargeRangeButton

#pragma mark    ---     Lifecycle

#pragma mark    ---     Initialize Methods

#pragma mark    ---     OverwriteSuperClass

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *view = [super hitTest:point withEvent:event];
    //如果找不到合适的响应者
    if (view == nil) {
        //按钮坐标系的转换
        CGPoint newPoint = [self.deleteButton convertPoint:point fromView:self];
        if (CGRectContainsPoint(self.deleteButton.bounds, newPoint)) {
            // 满足条件,返回按钮
            view = self.deleteButton;
        }
    }
    
    return view;
}

#pragma mark    ---     Response Mehtods

#pragma mark    ---     Delegate

#pragma mark    ---     Private Methods

#pragma mark    ---     Public Methods

#pragma mark    ---     Getters and Setters

- (UIButton *)deleteButton {
    if (!_deleteButton) {
        _deleteButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _deleteButton.frame = CGRectMake(self.frame.size.width- 25, -25, 50, 50);
        [_deleteButton setImage:[UIImage imageNamed:@"clean"] forState:UIControlStateNormal];
        [_deleteButton setBackgroundColor:[UIColor redColor]];
        [self addSubview:_deleteButton];
    }
    return _deleteButton;
    
}

@end
