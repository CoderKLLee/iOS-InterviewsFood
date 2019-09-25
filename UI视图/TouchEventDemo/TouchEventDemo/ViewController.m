//
//  ViewController.m
//  TouchEventDemo
//
//  Created by xjq on 24/9/19.
//  Copyright © 2019年 kairon. All rights reserved.
//

#import "ViewController.h"
#import "KLHitTestingViewController.h"
#import "KLEnlargeRangeViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, readwrite, strong) UITableView *tableView;

@property (nonatomic, readwrite, strong) NSArray *titleArray;



@end

@implementation ViewController

#pragma mark    ---     Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Demo";
    
    [self.view addSubview:self.tableView];
    
}
#pragma mark    ---     Initialize Methods

#pragma mark    ---     OverwriteSuperClass

#pragma mark    ---     Response Mehtods

#pragma mark    ---     Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titleArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"UITableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = self.titleArray[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            [self.navigationController pushViewController:[[KLHitTestingViewController alloc]init] animated:YES];
            break;
        case 1:
              [self.navigationController pushViewController:[[KLEnlargeRangeViewController alloc]init] animated:YES];
            break;
            
        default:
            break;
    }
}
#pragma mark    ---     Private Methods

#pragma mark    ---     Public Methods

#pragma mark    ---     Getters and Setters
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
    }
    return _tableView;

}

- (NSArray *)titleArray {
    if (!_titleArray) {
        _titleArray = @[@"Hit-Testing", @"父视图范围外响应"];
    }
    return _titleArray;

}

@end
