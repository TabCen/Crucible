//
//  CRCRCountDownController.swift
//  Crucible
//
//  Created by  chenfei on 2017/10/30.
//  Copyright © 2017年  chenfei. All rights reserved.
//

import UIKit

class CRCountDownController: CRBaseViewController {
    
    lazy var labelTime:UILabel? =  {
        let temLabel:UILabel? = UILabel(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight/2.0))
        temLabel?.text = "0.0"
        temLabel?.textAlignment = NSTextAlignment.center
        temLabel?.textColor = UIColor.white
        temLabel?.font = UIFont.systemFont(ofSize: 100)
        temLabel?.font = UIFont.init(name: "Avenir Next", size: 100)
        temLabel?.backgroundColor = UIColor.black
        return temLabel!
    }()
    
    var buttonStart:UIButton?
    var buttonStop:UIButton?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(UIFont.familyNames)
        //添加试图
        self.setUpSubView()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setUpSubView() {
        self.view.addSubview(self.labelTime!)
    }
    
    

}
