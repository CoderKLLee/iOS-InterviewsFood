//
//  KLEnlargeRangeViewController.m
//  TouchEventDemo
//
//  Created by xjq on 25/9/19.
//  Copyright © 2019年 kairon. All rights reserved.
//

#import "KLEnlargeRangeViewController.h"
#import "KLEnlargeRangeButton.h"

@interface KLEnlargeRangeViewController ()
@property (nonatomic, readwrite, strong) KLEnlargeRangeButton *enlargeRangeButton;


@property (nonatomic, readwrite, strong) UILabel *titleLabel;
@end

@implementation KLEnlargeRangeViewController

#pragma mark    ---     Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.titleLabel];
    [self.view addSubview:self.enlargeRangeButton];
    
    
}
#pragma mark    ---     Initialize Methods

#pragma mark    ---     OverwriteSuperClass

#pragma mark    ---     Response Mehtods
- (void)onEnlargeRangeClick {
    
    static int clickNumber = 0;
    self.titleLabel.text = [NSString stringWithFormat:@"点击了%d次",clickNumber];
    clickNumber ++;
    
}


#pragma mark    ---     Delegate

#pragma mark    ---     Private Methods

#pragma mark    ---     Public Methods

#pragma mark    ---     Getters and Setters


- (KLEnlargeRangeButton *)enlargeRangeButton {
    if (!_enlargeRangeButton) {
        _enlargeRangeButton = [KLEnlargeRangeButton buttonWithType:UIButtonTypeCustom];
        _enlargeRangeButton.frame = CGRectMake(0, 0,122, 122);
        _enlargeRangeButton.center = self.view.center;
        [_enlargeRangeButton setImage:[UIImage imageNamed:@"upload"] forState:UIControlStateNormal];
        [_enlargeRangeButton.deleteButton addTarget:self action:@selector(onEnlargeRangeClick) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _enlargeRangeButton;
    
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, self.view.frame.size.width, 20)];
        
    }
    return _titleLabel;
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
