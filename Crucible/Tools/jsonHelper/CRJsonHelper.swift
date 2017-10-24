//
//  CRJsonHelper.swift
//  Crucible
//
//  Created by David on 2017/10/24.
//  Copyright © 2017年  chenfei. All rights reserved.
//

import UIKit

class CRJsonHelper: NSObject {

    open func readDataFromJsonFile(_ fileName:NSString) -> NSObject? {
        
        let path = Bundle.main.path(forResource:"jsonTest", ofType: "json")
        
        let url = URL(fileURLWithPath: path!)
        
        do{
            let data = try Data(contentsOf: url)
            let jsonObj:NSObject = try JSONSerialization.jsonObject(with: data, options:JSONSerialization.ReadingOptions.allowFragments) as! NSObject
            
            return jsonObj
        }catch let error as Error!{
            print("读取本地数据出现错误！",error)
        }
        return nil
    }
}
