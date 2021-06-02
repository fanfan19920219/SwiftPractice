//
//  MainViewController.swift
//  SwiftProject
//
//  Created by yu.qin on 2021/6/2.
//

import Foundation
import UIKit
class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        self.view.backgroundColor = UIColor.yellow;
        
        
        tabBar.tintColor = UIColor.red
//        tabBar.barTintColor = UIColor.white
        
        
        let first = FirstViewController()
        first.tabBarItem.title = "首页"
        first.tabBarItem.image = UIImage.init(named: "首页")?.withRenderingMode(.alwaysOriginal)
        
        
        let second = SecondViewController()
        second.tabBarItem.title = "机会"
        second.tabBarItem.image = UIImage(named: "机会")?.withRenderingMode(.alwaysOriginal)
        
        let third = ThirdViewController()
        third.tabBarItem.title = "行情"
        third.tabBarItem.image = UIImage.init(named: "行情")?.withRenderingMode(.alwaysOriginal)
        third.tabBarItem.selectedImage = UIImage.init(named: "机会")?.withRenderingMode(.alwaysOriginal)
        
        
        self.addChild(first)
        self.addChild(second)
        self.addChild(third)
        
        
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    
    lazy var _names: NSArray = {
        let names = NSArray()
        print("只在首次访问输出")
        return names
    }()
    
    


}

