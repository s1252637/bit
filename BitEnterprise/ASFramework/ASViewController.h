//
//  rootViewController.h
//  ASTemplate
//
//  Created by ZGX on 14-9-23.
//  Copyright (c) 2014年 tixa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASViewController : UIViewController
@property (nonatomic) NSUInteger tag;
@property (nonatomic) CGFloat systemVersion;
@property (nonatomic, strong) UIColor *backgroundColor;
- (id)initWithTag:(NSUInteger)tag;

// 显示加载视图
- (void)showLoadingView;
- (void)showLoadingViewWithTitle:(NSString *)title;
// 隐藏加载视图
- (void)hideLoadingView;
@end
