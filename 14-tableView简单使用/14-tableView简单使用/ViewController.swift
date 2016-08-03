//
//  ViewController.swift
//  14-tableView简单使用
//
//  Created by 熊欣 on 16/8/2.
//  Copyright © 2016年 熊欣. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     // MARK:- 懒加载的属性
    lazy var tableView = UITableView()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setupUI()
        
    }
    
    

}


// MARK:- 设置UI
extension ViewController {
    
    /// 设置UI界面
    func setupUI() {
        
        // 0.添加tableView
        view .addSubview(tableView)
        
        // 1.设置frame
        tableView.frame      = view.bounds
        
        // 3.设置数据源
        tableView.dataSource = self
        
        // 4.设置代理
        tableView.delegate   = self
        
        tableView.contentInset = UIEdgeInsets.init(top: 20, left: 0, bottom: 0, right: 0)
    }
}




// MARK:- 数据源代理方法
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellID = "cell"
        
        var cell = tableView.dequeueReusableCellWithIdentifier(cellID)
        
        if nil == cell {
            // 在swift中使用枚举： 1> 枚举类型.具体类型 2> .具体的类型
            cell = UITableViewCell(style: .Value1, reuseIdentifier: cellID)
        }
        
        cell?.textLabel?.text = "测试数据\(indexPath.row)行"
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("点击了\(indexPath.row)")
    }
}

