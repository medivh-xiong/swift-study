

//
//  HttpTools.h
//  11-block回顾
//
//  Created by 熊欣 on 16/8/2.
//  Copyright © 2016年 熊欣. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface HttpTools : NSObject

- (void)loadData:(void(^)(NSString *jsonData))callBack;

@end
