//
//  ThirdViewController.swift
//  SwiftProject
//
//  Created by yu.qin on 2021/6/2.
//

import Foundation
import UIKit
class ThirdViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.systemPink
        
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
}
