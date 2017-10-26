//
//  UserDetailViewModel.h
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/26.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "User.h"
#import <Foundation/Foundation.h>

@interface UserDetailViewModel : NSObject

- (instancetype)initWithUser: (User *)inputUser;
- (NSInteger)getUserId;
- (NSInteger)getDefaultId;
- (NSString *)getTitle;
- (NSString *)getBody;

@end
