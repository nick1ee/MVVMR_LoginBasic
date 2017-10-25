//
//  DataService.h
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataService : NSObject

+ (void)fetchData: (void (^)(NSArray *fetchedUsers))success
          failure: (void (^)(NSError *operationError))failure;

@end
