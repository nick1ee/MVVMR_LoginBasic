//
//  UserTableViewCell.h
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "UserViewModel.h"
#import "UserDetailViewModel.h"
#import <UIKit/UIKit.h>

@interface UserTableViewCell : UITableViewCell

- (void)configWithViewModel:(UserDetailViewModel *)viewModel;

@end
