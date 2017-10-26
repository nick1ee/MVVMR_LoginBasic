//
//  UserViewModel.h
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "User.h"
#import "UserDetailViewModel.h"
#import <Foundation/Foundation.h>

@protocol UserViewModelDelegate
- (void)didFeteched;
- (void)didFail;
@end

@interface UserViewModel : NSObject
@property (weak, nonatomic) id<UserViewModelDelegate> delegate;
- (NSInteger)getCountOfArray;
- (UserDetailViewModel *)getUserWithIndexPath: (NSIndexPath *)indexPath;
@end
