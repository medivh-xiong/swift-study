//
//  HttpTools.swift
//  12-闭包的使用
//
//  Created by 熊欣 on 16/8/2.
//  Copyright © 2016年 熊欣. All rights reserved.
//

import UIKit

class HttpTools: NSObject {
    
    
    var callBack : ((jsonData : String) -> ())?
    
    // 闭包类型：() -> ()
    func loadData(callBack : (jsonData : String) -> (Void) ) {
        
        // 这样会产生循环引用
        self.callBack = callBack
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) { 
            print("发送网络请求:\(NSThread.currentThread())")
            
            dispatch_async(dispatch_get_main_queue(), { 
                print("获取到数据，进行回调\(NSThread.currentThread())")
                
                callBack(jsonData: "我是json数据")
            });
            
            
        }
    }
    
    // deinit相当于OC中的dealloc方法
    deinit {
        print("VC ----deinit")
    }

}
