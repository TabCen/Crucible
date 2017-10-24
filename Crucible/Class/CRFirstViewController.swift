//
//  CRFirstViewController.swift
//  Crucible
//
//  Created by  chenfei on 2017/10/23.
//  Copyright © 2017年  chenfei. All rights reserved.
//

import UIKit

let CRFirstViewControllerCell = "CRFirstViewController_cell"


class CRFirstViewController: CRBaseViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kScreenWidth = UIScreen.main.bounds.width
        let kScreenHeight = UIScreen.main.bounds.height
        
        self.tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight))
        self.tableView.backgroundColor = UIColor.red
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: CRFirstViewControllerCell)
        self.tableView.tableFooterView = UIView.init(frame: CGRect.init())
        
        self.view.addSubview(self.tableView)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CRFirstViewControllerCell)
        cell?.backgroundColor = UIColor.blue
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
