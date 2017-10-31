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
    
    lazy var buttonStart:UIButton? = {
        let btnLeft :UIButton? = UIButton(frame: CGRect(x: 0, y: kScreenHeight/2.0, width: kScreenWidth/2.0, height: kScreenHeight/2.0))
        btnLeft?.setImage(#imageLiteral(resourceName: "day01_play"), for: UIControlState.normal)
        btnLeft?.backgroundColor = UIColor.red

//        btnLeft?.addTarget(self, action: #selector(startBtnClick), for: .touchUpInside)
        
        return btnLeft!
    }()
    
    var buttonStop:UIButton? = {
        let btnRight :UIButton? = UIButton(frame: CGRect(x: kScreenWidth/2.0, y: kScreenHeight/2.0, width: kScreenWidth/2.0, height: kScreenHeight/2.0))
        btnRight?.setImage(#imageLiteral(resourceName: "day01_pause"), for: UIControlState.normal)
        
        btnRight?.backgroundColor = UIColor.blue
        return btnRight!
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        print(UIFont.familyNames)
        //添加试图
        self.setUpSubView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //MARK: - 私有方法
    
    func setUpSubView() {
        self.view.addSubview(self.labelTime!)
        self.view.addSubview(self.buttonStart!)
        self.view.addSubview(self.buttonStop!)
    }
    
    func startBtnClick(_ sender : AnyObject?) {
        print("aaaa")
    }

}
