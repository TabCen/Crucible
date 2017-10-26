//
//  CRThirtyDaysModel.swift
//  Crucible
//
//  Created by  chenfei on 2017/10/24.
//  Copyright © 2017年  chenfei. All rights reserved.
//

import UIKit

class CRThirtyDaysModel: NSObject {
    
    var tittle:String?
    var subTittle:String?
    
    func returnThirtyDays() -> NSArray {
        let arr:NSArray = [["tittle":"Day01","subTittle":"第一天","class":"CRTestViewController"],
                           ["tittle":"Day02","subTittle":"第二天","class":"CRFundationController"]]
        return arr
    }
    

}
