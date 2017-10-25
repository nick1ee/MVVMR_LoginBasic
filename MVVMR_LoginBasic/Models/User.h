//
//  User.h
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (assign, nonatomic) NSInteger userId;
@property (assign, nonatomic) NSInteger defaultId;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *body;

+ (NSArray *)initWithObjects: (NSDictionary *)inputObjects;

@end
