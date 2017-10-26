//
//  UserViewModel.m
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "UserViewModel.h"
#import "DataService.h"
#import "UserDetailViewModel.h"
#import <UIKit/UIKit.h>

@interface UserViewModel ()

@property (strong, nonatomic) NSArray<User *> *users;

@end

@implementation UserViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        [DataService fetchData:^(NSArray *fetchedUsers) {
            self.users = fetchedUsers;
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.delegate didFeteched];
            });
        } failure:^(NSError *operationError) {
            NSLog(@"====================");
            NSLog(@"%@", operationError);
        }];
    }
    return self;
}

- (NSInteger)getCountOfArray {
    return self.users.count;
}

- (UserDetailViewModel *)getUserWithIndexPath:(NSIndexPath *)indexPath {
    UserDetailViewModel *viewModel = [[UserDetailViewModel alloc] initWithUser:self.users[indexPath.row]];
    return viewModel;
}

@end
