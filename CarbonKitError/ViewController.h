//
//  ViewController.h
//  CarbonKitError
//
//  Created by Paulo Coutinho on 5/12/15.
//  Copyright (c) 2015 PRSoluções. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CarbonKit/CarbonKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) CarbonSwipeRefresh *refresh;

- (void)enablePullToRefresh;
- (void)pullToRefresh:(id)sender;

@end

