//
//  UserDetailViewModel.m
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/26.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "UserDetailViewModel.h"

@interface UserDetailViewModel ()

@property (strong, nonatomic) User *user;

@end

@implementation UserDetailViewModel

-(instancetype)initWithUser:(User *)inputUser {
    self = [super init];
    if (self) {
        self.user = inputUser;
    }
    return self;
}

- (NSInteger)getUserId {
    return self.user.userId;
}

- (NSInteger)getDefaultId {
    return self.user.defaultId;
}

- (NSString *)getTitle {
    return self.user.title;
}

- (NSString *)getBody {
    return self.user.body;
}

@end
