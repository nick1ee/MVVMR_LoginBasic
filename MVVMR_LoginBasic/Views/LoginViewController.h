//
//  LoginViewController.h
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "Router.h"
#import "LoginViewModel.h"
#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

- (instancetype)init: (LoginViewModel *)inputModel
         inputRouter: (Router *)inputRouter;

@end
