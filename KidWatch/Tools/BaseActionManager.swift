//
//  BaseActionManager.swift
//  KidWatch
//
//  Created by admin on 2017/7/10.
//  Copyright © 2017年 com. All rights reserved.
//

import UIKit

class BaseActionManager: NSObject {
    
// 空判断
   class func judeNull(content:String?) -> Bool{
        if content == nil || content?.characters.count == 0 {
            print("空参数")
            return false
        }else{
            return true
        }
    }
    
// 合法性判断

}
