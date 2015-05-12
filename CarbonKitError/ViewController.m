//
//  ViewController.m
//  CarbonKitError
//
//  Created by Paulo Coutinho on 5/12/15.
//  Copyright (c) 2015 PRSoluções. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
     UITableView *tableView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"CarbonKit - Error - iOS7";
    
    tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:tableView];
    
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)])
    {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    [self enablePullToRefresh];
}

- (void)enablePullToRefresh
{
    self.refresh = [[CarbonSwipeRefresh alloc] initWithScrollView:tableView];
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
