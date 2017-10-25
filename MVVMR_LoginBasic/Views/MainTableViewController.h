//
//  MainTableViewController.h
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "UserViewModel.h"
#import <UIKit/UIKit.h>

@interface MainTableViewController : UITableViewController <UserViewModelDelegate>

- (instancetype)initWithViewModel: (UserViewModel *)inputViewModel;

@end
