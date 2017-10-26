//
//  UserTableViewCell.m
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "UserTableViewCell.h"

@interface UserTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *userIdLabel;
@property (weak, nonatomic) IBOutlet UILabel *idLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *bodyLabel;

@end

@implementation UserTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)configWithViewModel:(UserDetailViewModel *)viewModel {
    self.userIdLabel.text = [NSString stringWithFormat:@"%ld", [viewModel getUserId]];
    self.idLabel.text = [NSString stringWithFormat:@"%ld", [viewModel getDefaultId]];
    self.titleLabel.text = [viewModel getTitle];
    self.bodyLabel.text = [viewModel getBody];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
