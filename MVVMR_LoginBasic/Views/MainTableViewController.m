//
//  MainTableViewController.m
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "UserTableViewCell.h"
#import "MainTableViewController.h"

@interface MainTableViewController ()

@property (strong, nonatomic, nonnull) UserViewModel *viewModel;

@end

@implementation MainTableViewController

- (instancetype)initWithViewModel:(UserViewModel *)inputViewModel {
    self = [super init];
    if (self) {
        self.viewModel = inputViewModel;
        self.viewModel.delegate = self;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerTableViewCells];
    [self customizedUIComponents];
}

- (void)registerTableViewCells {
    UINib *userNib = [UINib nibWithNibName:@"UserTableViewCell" bundle:nil];
    [self.tableView registerNib:userNib forCellReuseIdentifier:@"UserCell"];
}

- (void)customizedUIComponents {
    self.tableView.allowsSelection = false;
}

#pragma mark - UserViewModelDelegate

- (void)didFeteched {
    [self.tableView reloadData];
}

- (void)didFail {
    // TODO: Error handling
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.viewModel getCountOfArray];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UserTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UserCell" forIndexPath:indexPath];
    [cell configWithViewModel: [self.viewModel getUserWithIndexPath: indexPath]];
    return cell;
}

@end
