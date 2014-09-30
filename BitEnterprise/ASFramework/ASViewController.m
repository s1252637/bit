//
//  rootViewController.m
//  ASTemplate
//
//  Created by ZGX on 14-9-23.
//  Copyright (c) 2014年 tixa. All rights reserved.
//

#import "ASViewController.h"
@interface ASViewController ()
@property (nonatomic, strong) UIView                      *loadingView;            // 加载视图
@property (nonatomic, strong) UIActivityIndicatorView     *activityIndicatorView;
@property (nonatomic, strong) UILabel                     *loadingTitleLabel;
@end

@implementation ASViewController


- (id)init
{
    self = [super init];
    if (self) {
        _systemVersion = [[[UIDevice currentDevice] systemVersion] floatValue];
        if (_systemVersion >= 7.0) {
            self.edgesForExtendedLayout = UIRectEdgeNone;
            self.navigationController.interactivePopGestureRecognizer.enabled = YES;
        }
        
        _backgroundColor = [UIColor colorWithWhite:0.97 alpha:1.0];
        
    }
    return self;
}


- (id)initWithTag:(NSUInteger)tag
{
    self = [self init];
    if (self) {
        _tag = tag;
    }
    return self;
}


-(void)loadView{
    
    [super loadView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = _backgroundColor;
 
}










#pragma mark - lodingView -

// 显示加载视图
- (void)showLoadingView
{
    if (!_loadingView) {
        _loadingView = [[UIView alloc] initWithFrame:self.view.bounds];
        
        UIView *backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 100.0, 100.0)];
        if (_systemVersion >= 7.0) {
            backgroundView.center = CGPointMake(_loadingView.center.x, _loadingView.center.y-80.0);
        }else{
            backgroundView.center = CGPointMake(_loadingView.center.x, _loadingView.center.y-50.0);
        }
        backgroundView.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.5];
        backgroundView.layer.cornerRadius = 6.0;
        [_loadingView addSubview:backgroundView];
        
        _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        _activityIndicatorView.center = backgroundView.center;
        [_loadingView addSubview:_activityIndicatorView];
        
        [self.view addSubview:_loadingView];
    }
    
    [_loadingTitleLabel removeFromSuperview];
    [self.view bringSubviewToFront:_loadingView];
    _loadingView.hidden = NO;
    
   
    [_activityIndicatorView startAnimating];
    
}

- (void)showLoadingViewWithTitle:(NSString *)title
{
    if (!_loadingView) {
        _loadingView = [[UIView alloc] initWithFrame:self.view.bounds];
        _loadingView.backgroundColor = [UIColor greenColor];
        UIView *backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 100.0, 100.0)];
        if (_systemVersion >= 7.0) {
            backgroundView.center = CGPointMake(_loadingView.center.x, _loadingView.center.y-80.0);
        }else{
            backgroundView.center = CGPointMake(_loadingView.center.x, _loadingView.center.y-50.0);
        }
        backgroundView.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.8];
        backgroundView.layer.cornerRadius = 6.0;
        [_loadingView addSubview:backgroundView];
        
        _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        _activityIndicatorView.center = CGPointMake(CGRectGetMidX(backgroundView.frame), CGRectGetMidY(backgroundView.frame)-10.0);
        [_loadingView addSubview:_activityIndicatorView];
        
        _loadingTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, backgroundView.frame.size.width, 40.0)];
        _loadingTitleLabel.center = CGPointMake(CGRectGetMidX(backgroundView.frame), CGRectGetMidY(backgroundView.frame)+30.0);
        _loadingTitleLabel.backgroundColor = [UIColor clearColor];
        _loadingTitleLabel.textAlignment = NSTextAlignmentCenter;
        _loadingTitleLabel.font = [UIFont systemFontOfSize:12.0];
        _loadingTitleLabel.textColor = [UIColor whiteColor];
        _loadingTitleLabel.text = title;
        
        [self.view addSubview:_loadingView];
    }
    
    [_loadingView addSubview:_loadingTitleLabel];
    [self.view bringSubviewToFront:_loadingView];
    _loadingView.hidden = NO;
    _loadingTitleLabel.text = title;

    [_activityIndicatorView startAnimating];
}

// 隐藏加载视图
- (void)hideLoadingView
{
    _loadingView.hidden = YES;
    [_activityIndicatorView stopAnimating];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
