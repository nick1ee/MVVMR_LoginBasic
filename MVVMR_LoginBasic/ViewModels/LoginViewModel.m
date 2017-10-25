//
//  LoginViewModel.m
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "LoginViewModel.h"

@implementation LoginViewModel

static NSString *const masterAccount = @"Nicklee";
static NSString *const masterPassword = @"12345678";

- (bool)loginWithCredential:(NSString *)account password:(NSString *)password {
    
    if ([account isEqualToString:masterAccount] && [password isEqualToString:masterPassword]) {
        
        return true;
        
    }

    return false;
    
}

@end
