//
//  LoginViewModel.h
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginViewModel : NSObject

- (bool)loginWithCredential:(NSString *)account
                   password:(NSString *)password;

@end
