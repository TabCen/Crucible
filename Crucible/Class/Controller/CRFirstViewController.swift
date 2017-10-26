//
//  CRFirstViewController.swift
//  Crucible
//
//  Created by  chenfei on 2017/10/23.
//  Copyright © 2017年  chenfei. All rights reserved.
//

import UIKit

let kScreenWidth = UIScreen.main.bounds.width
let kScreenHeight = UIScreen.main.bounds.height

let CRFirstViewControllerCell = "CRFirstViewController_cell"

class CRFirstViewController: CRBaseViewController,UITableViewDelegate {
    
    let dataArr = CRThirtyDaysModel.init().returnThirtyDays()
    
    var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "30Days"
        
        self.tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight))
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView.init(frame: CGRect.init())
        self.tableView.register(UINib.init(nibName: "CRSingleTableViewCell", bundle: nil), forCellReuseIdentifier: CRFirstViewControllerCell)
        self.view.addSubview(self.tableView)
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let dict:[String:String] = dataArr[indexPath.row] as! [String : String]
        
        guard let myClassType = UFO.classFromString(dict["class"]!) as? UIViewController.Type else{
            return
        }
        let subVC = myClassType.init()
        self.navigationController?.pushViewController(subVC, animated: true)
    }
    
}

// MARK: - UITableViewDataSource

extension CRFirstViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell :CRSingleTableViewCell = tableView.dequeueReusableCell(withIdentifier: CRFirstViewControllerCell) as! CRSingleTableViewCell
        cell.backgroundColor = UIColor.white
        let dict:[String:String] = dataArr[indexPath.row] as! [String : String]
        
        cell.textLabel?.text = dict["tittle"]
        cell.detailTextLabel?.text = dict["subTittle"]
        return cell
    }
    
}
