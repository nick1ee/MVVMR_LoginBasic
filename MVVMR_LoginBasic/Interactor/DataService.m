//
//  DataService.m
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import "User.h"
#import "DataService.h"
#import "UserViewModel.h"

@implementation DataService

+ (void)fetchData:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure {
    NSURL *url = [NSURL URLWithString:@"https://jsonplaceholder.typicode.com/posts"];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithURL:url
                                        completionHandler:^(NSData * _Nullable data,
                                                            NSURLResponse * _Nullable response,
                                                            NSError * _Nullable error) {
        if (error) {
            failure(error);
            return;
        }
        NSDictionary *objects = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSArray *users = [User initWithObjects:objects];
        success(users);
    }];
    [task resume];
}

@end
