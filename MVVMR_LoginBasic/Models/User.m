//
//  User.m
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "User.h"

@implementation User

+ (NSArray *)initWithObjects:(NSDictionary *)inputObjects {
    NSMutableArray *users = @[].mutableCopy;
    for (NSDictionary *object in inputObjects) {
        User *user = [User new];
        user.userId = [object[@"userId"] integerValue];
        user.defaultId = [object[@"id"] integerValue];
        user.title = object[@"title"];
        user.body = object[@"body"];
        [users addObject: user];
    }
    return users;
}

@end
