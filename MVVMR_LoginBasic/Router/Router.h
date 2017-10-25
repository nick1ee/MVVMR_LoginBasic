//
//  Router.h
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface Router : NSObject

- (instancetype)initWithNavigation: (UINavigationController *)inputNavigation;

- (void)start;

- (void)showNextPage: (bool) isLoggedIn;

@end
