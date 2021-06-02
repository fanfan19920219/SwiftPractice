//
//  SecondViewController.swift
//  SwiftProject
//
//  Created by yu.qin on 2021/6/2.
//

import Foundation
import UIKit
class SecondViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var dataArray = NSMutableArray()
    let favoriteEmoji = ["飞机大战", "", ""]
    let newFavoriteEmoji = ["", "", "", "🤗🤗🤗🤗🤗", "", "" ]
    
    struct cellIDStruct{
        static var cellID : NSString = "cellID"
    }
    
    private lazy var refreshControl:UIRefreshControl = {
        
        let refreshControl = UIRefreshControl()
        let shadow = NSShadow.init()
        shadow.shadowColor = UIColor.black
        shadow.shadowOffset = CGSize(width: view.frame.size.width, height: 2)
        shadow.shadowBlurRadius = 0.5
        let myAttribute = [
//            NSAttributedString.Key.backgroundColor: UIColor.red,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14),
            NSAttributedString.Key.shadow: shadow,
            NSAttributedString.Key.foregroundColor : UIColor.systemGray
            ]
        
        let myAttrString = NSAttributedString(string: "正在刷新", attributes: myAttribute)
        refreshControl.attributedTitle = myAttrString
        refreshControl.addTarget(self, action: #selector(reloadRefresh), for: .valueChanged)
        return refreshControl
    }()
    
    private lazy var tableView:UITableView = {
        
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), style: .plain)
        tableView.backgroundColor = UIColor.white
        tableView.delegate = self
        tableView.dataSource = self
        tableView.refreshControl = self.refreshControl
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none;
        tableView.separatorColor = UIColor.clear;
        tableView.rowHeight = 60
        
        return tableView
    }()
    
    //刷新数据
    @objc func reloadRefresh() -> () {
        
//        self.dataArray.add(self.newFavoriteEmoji)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            self.refreshControl.endRefreshing()
            self.tableView.reloadData()
        }
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(PlaneViewController(), animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIDStruct.cellID as String)
        
        if cell == nil{
            cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellIDStruct.cellID as String)
        }
        
        var str = String()
        (self.dataArray[indexPath.row] as! NSArray).enumerateObjects { (obj, idx, stop) in
            str.append(obj as! String)
        }
        cell?.textLabel?.text = str
//        cell?.backgroundColor = UIColor.black
        return cell!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.title = ""
        self.navigationItem.hidesBackButton = true
        
        self.dataArray.add(self.favoriteEmoji)
        view.addSubview(self.tableView)
        printtt()
    }
    
    func printtt (){
        print("111")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

