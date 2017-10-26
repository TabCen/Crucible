//
//  UFO.swift
//  Crucible
//
//  Created by David on 2017/10/26.
//  Copyright © 2017年  chenfei. All rights reserved.
//

import UIKit

class UFO: NSObject {
    
    public class func classFromString(_ clsName:String) -> AnyClass? {
        //1、swift中，根据字符串创建类，必须加上命名空间，类型是可选类型，所以要解包
        let nameSpace = Bundle.main.infoDictionary!["CFBundleExecutable"]
        guard let ns = nameSpace as? String else{
            return nil
        }
        //2、动态获取的命名空间是不包含‘.’的，所以要手动拼接，类型是可选的
        let myClass: AnyClass? = NSClassFromString(ns + "." + clsName)
        
        return myClass!
    }
}
