//
//  HttpTools.m
//  11-block回顾
//
//  Created by 熊欣 on 16/8/2.
//  Copyright © 2016年 熊欣. All rights reserved.
//

#import "HttpTools.h"

@implementation HttpTools

- (void)loadData:(void (^)(NSString *))callBack
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"发送网络请求:%@", [NSThread currentThread]);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"拿到数据，进行回调：%@", [NSThread currentThread]);
            
            callBack(@"json数据");
        });
        
    });
}


@end
