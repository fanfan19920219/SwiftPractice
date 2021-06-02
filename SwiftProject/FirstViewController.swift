//
//  FirstViewController.swift
//  SwiftProject
//
//  Created by yu.qin on 2021/6/2.
//

import Foundation
import UIKit
class FirstViewController : UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemIndigo
        
        self.navigationController?.navigationBar.topItem?.title = "机会"
        self.navigationController?.navigationBar.topItem?.titleView?.backgroundColor = UIColor.yellow
        self.navigationController?.navigationBar.backgroundColor = UIColor.yellow
        
        
        self.navigationController?.navigationBar.isHidden = true
        
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
}
