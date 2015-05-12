//
//  ViewController.m
//  CarbonKitError
//
//  Created by Paulo Coutinho on 5/12/15.
//  Copyright (c) 2015 PRSoluções. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"CarbonKit - Error - iOS7";
    
    [self enablePullToRefresh];
}

- (void)enablePullToRefresh
{
    self.refresh = [[CarbonSwipeRefresh alloc] initWithScrollView:self.tableView];
    [self.refresh setMarginTop:0];
    [self.view addSubview:self.refresh];
    [self.refresh addTarget:self action:@selector(pullToRefresh:) forControlEvents:UIControlEventValueChanged];
}

- (void)pullToRefresh:(id)sender
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.refresh endRefreshing];
    });
}

@end
