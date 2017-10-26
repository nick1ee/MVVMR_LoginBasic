//
//  Router.m
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "Router.h"
#import "UserViewModel.h"
#import "LoginViewController.h"
#import "MainTableViewController.h"
#import <UIKit/UIKit.h>

@interface Router ()

@property (strong, nonatomic) UINavigationController *navigationController;

@end

@implementation Router

- (instancetype)initWithNavigation: (UINavigationController *)inputNavigation {
    
    self = [super init];
    
    if (self) {
    
        self.navigationController = inputNavigation;
    
    }
    
    return self;
}

- (void)start {
    
    LoginViewModel *viewModel = [LoginViewModel new];
    
    LoginViewController *loginVC = [[LoginViewController alloc] init:viewModel inputRouter:self];
    
    [self.navigationController pushViewController:loginVC animated:true];

}

- (void)showNextPage:(bool)isLoggedIn {
    
    if (isLoggedIn) {
        
        UserViewModel *viewModel = [[UserViewModel alloc] init];
        
        MainTableViewController *mainTableViewController = [[MainTableViewController alloc] initWithViewModel: viewModel];
        
        [self.navigationController pushViewController:mainTableViewController animated:true];
        
    } else {
        
        NSLog(@"===============");
        
        NSLog(@"Wrong Password!");
        
    }
}

@end
