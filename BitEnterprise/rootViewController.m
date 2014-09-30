//
//  rootViewController.m
//  ASTemplate
//
//  Created by ZGX on 14-9-23.
//  Copyright (c) 2014年 tixa. All rights reserved.
//

#import "rootViewController.h"
@interface rootViewController ()

@end

@implementation rootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    UIScrollView *aa = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 80, 250, 250)];
    aa.backgroundColor = [UIColor redColor];
    aa.contentSize =CGSizeMake(500, 250);
    aa.contentInset = UIEdgeInsetsMake(0, 10, 10, 10);
    UIView *vv = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 250, 250)];
    vv.backgroundColor = [UIColor blueColor];
    [aa addSubview:vv];
    
    
    UIView *vv1 = [[UIView alloc]initWithFrame:CGRectMake(250, 0, 250, 250)];
    vv1.backgroundColor = [UIColor grayColor];
    [aa addSubview:vv1];
    
    [self.view addSubview:aa];
  
    
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
