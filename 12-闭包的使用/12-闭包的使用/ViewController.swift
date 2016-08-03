//
//  ViewController.swift
//  12-闭包的使用
//
//  Created by 熊欣 on 16/8/2.
//  Copyright © 2016年 熊欣. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tools : HttpTools = HttpTools()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
//        tools.loadData {(jsonData) -> (Void) in
//            self.view.backgroundColor = UIColor.redColor()
//        }
        
        // 解决循环引用的方式1
//        weak var weakSelf = self
//        
//       tools.loadData { (jsonData) -> (Void) in
//            print("在VC中拿到数据:\(jsonData)")
//            weakSelf?.view.backgroundColor = UIColor.redColor()
//        
//        }
        
        // 方式二：
        /* 解决循环引用的方式2 最推荐的方式
         tools.loadData {[weak self] (jsonData) -> (Void) in
         print("在VC中拿到数据:\(jsonData)")
         self?.view.backgroundColor = UIColor.redColor()
         
      
        */
      
        
        // 不推荐，不安全
//        tools.loadData {[unowned self] (jsonData) -> (Void) in
//            self.view.backgroundColor = UIColor.redColor()
//        }
        
        // 尾随闭包：如果闭包作为方法的最后一个参数，那么闭包可以将（）去掉
    // 1.最原始写法
//        tools.loadData ({ (jsonData) -> (Void) in
//                        print("在VC中拿到数据:\(jsonData)")
//                        self.view.backgroundColor = UIColor.redColor()
//                    
//        })
        
    // 2.尾随闭包写法一：
//        tools.loadData() { (jsonData) -> (Void) in
//                        print("在VC中拿到数据:\(jsonData)")
//                        self.view.backgroundColor = UIColor.redColor()
//                    
//        }
        
    // 3.尾随闭包写法二：
        tools.loadData { (jsonData) -> (Void) in
            print("在VC中拿到数据:\(jsonData)")
            self.view.backgroundColor = UIColor.redColor()
        }
        
        
        
    }


}

