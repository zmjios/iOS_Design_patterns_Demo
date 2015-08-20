//
//  ViewController.swift
//  iOS_Design_patterns_Demo
//
//  Created by 曾明剑 on 15/8/19.
//  Copyright © 2015年 zmj. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tableView:UITableView!
    var dataSource:Array<CellItem> = []
    var nameList = ["工厂方法","单例","构建者","适配器"]
    var viewControlles = ["FactoryViewController","SingletonViewController","BuilderViewController","AdapterViewController"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationItem.title = "常用设计模式举例"
        
        for var index = 0; index < nameList.count; ++index{
            
            let item = CellItem()
            item.text = nameList[index]
            item.itemId = index
            item.viewController = viewControlles[index]
            
            self.dataSource.append(item)
        }
        
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier:"cellId")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cellId")!
        
        let item:CellItem = self.dataSource[indexPath.row]
        
        cell.textLabel!.text = item.text
        
        return cell
        
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        
        let item:CellItem = self.dataSource[indexPath.row]
        
        if (item.viewController != nil){
            if let vcclass = NSObject.SwiftClassFromString(item.viewController!) as? BaseViewController.Type{
                
                let vc:BaseViewController = vcclass.init()
                vc.naviTitle = item.text
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }


}

