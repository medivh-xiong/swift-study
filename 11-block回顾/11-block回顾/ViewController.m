//
//  ViewController.m
//  11-block回顾
//
//  Created by 熊欣 on 16/8/2.
//  Copyright © 2016年 熊欣. All rights reserved.
//

#import "ViewController.h"
#import "HttpTools.h"

@interface ViewController ()

@property (nonatomic, readwrite, strong) HttpTools *httpTool;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.httpTool = [[HttpTools alloc] init];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.httpTool loadData:^(NSString *jsonData) {
        NSLog(@"在ViewC中拿到数据%@", jsonData);
    }];
}

@end
