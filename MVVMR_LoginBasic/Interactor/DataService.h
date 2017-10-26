//
//  DataService.h
//  MVVMR_LoginBasic
//
//  Created by Nick Lee on 2017/10/25.
//  Copyright © 2017年 Nick Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataService : NSObject

/*
     There is no difference to use class method or instance method. But if there is any propery will be changed after sending API request, you should use instance method instead of class method to capture those instance variable.
*/

+ (void)fetchData: (void (^)(NSArray *fetchedUsers))success
          failure: (void (^)(NSError *operationError))failure;

@end
