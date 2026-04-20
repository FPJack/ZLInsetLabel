//
//  ZLViewController.m
//  ZLPaddingLabel
//
//  Created by fanpeng on 04/20/2026.
//  Copyright (c) 2026 fanpeng. All rights reserved.
//

#import "ZLViewController.h"
#import <ZLInsetLabel/ZLInsetLabel.h>

@interface ZLViewController ()

@end

@implementation ZLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 基本用法
    ZLInsetLabel *label1 = [[ZLInsetLabel alloc] init];
    label1.text = @"默认无内边距";
    label1.backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:1.0 alpha:1.0];
    label1.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:label1];
    
    // 设置内边距
    ZLInsetLabel *label2 = [[ZLInsetLabel alloc] init];
    label2.text = @"内边距 (10, 20, 10, 20)";
    
    label2.edgeInsets = UIEdgeInsetsMake(10, 50, 10, 20);
    label2.backgroundColor = [UIColor colorWithRed:0.9 green:1.0 blue:0.9 alpha:1.0];
    label2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:label2];
    
    // 大内边距 + 圆角
    ZLInsetLabel *label3 = [[ZLInsetLabel alloc] init];
    label3.text = @"大内边距 + 圆角";
    label3.edgeInsets = UIEdgeInsetsMake(16, 32, 16, 32);
    label3.backgroundColor = [UIColor colorWithRed:1.0 green:0.9 blue:0.8 alpha:1.0];
    label3.layer.cornerRadius = 8;
    label3.layer.masksToBounds = YES;
    label3.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:label3];
    
    // 多行文本
    ZLInsetLabel *label4 = [[ZLInsetLabel alloc] init];
    label4.text = @"这是一个支持多行文本的PaddingLabel，设置了内边距后，自动布局会正确计算内容尺寸并撑开。";
    label4.numberOfLines = 0;
    label4.edgeInsets = UIEdgeInsetsMake(12, 16, 12, 16);
    label4.backgroundColor = [UIColor colorWithRed:1.0 green:0.95 blue:0.9 alpha:1.0];
    label4.layer.cornerRadius = 6;
    label4.layer.masksToBounds = YES;
    label4.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:label4];
    
    // Auto Layout
    [NSLayoutConstraint activateConstraints:@[
        [label1.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:20],
        [label1.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        
        [label2.topAnchor constraintEqualToAnchor:label1.bottomAnchor constant:20],
        [label2.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        
        [label3.topAnchor constraintEqualToAnchor:label2.bottomAnchor constant:20],
        [label3.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        
        [label4.topAnchor constraintEqualToAnchor:label3.bottomAnchor constant:20],
        [label4.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
        [label4.trailingAnchor constraintLessThanOrEqualToAnchor:self.view.trailingAnchor constant:-20],
    ]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
