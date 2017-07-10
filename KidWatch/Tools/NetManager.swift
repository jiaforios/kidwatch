//
//  NetManager.swift
//  KidWatch
//
//  Created by admin on 2017/7/10.
//  Copyright © 2017年 com. All rights reserved.
//
// 通用层网络请求

import UIKit
import Alamofire

enum ConnectType{

    case Get
    case Post
}

class NetManager: NSObject {

    // 网络单例创建
    static let shareManager:NetManager = {
    
        let manager = NetManager()
        
        return manager
    }()
    
    //    https://kidwatch01.hojy.com/api/acountLogin?mobile=18682047063&password=52d4a83215565368f94d3e340e7125e7
    
    // 发送网络请求
    func request(Type:ConnectType,url:String,parames:[String:AnyObject],succeed:@escaping(String?,AnyObject) ->(),failure:@escaping(String?)->()) ->() {
        
        switch Type {
        case .Get:
            Alamofire.request(url,method:.get,parameters:parames).responseJSON { (dataResponse) in
                
                switch dataResponse.result{
                case .success:
                    if let value = dataResponse.result.value{
                        // 成功闭包
                        succeed("succeed", value as AnyObject)
                    }
                case .failure:
                    failure("failure")
                }
            }
        case .Post:
            Alamofire.request(url,method:.post,parameters:parames).responseJSON { (dataResponse) in
                
                switch dataResponse.result{
                case .success:
                    if let value = dataResponse.result.value{
                        // 成功闭包
                        succeed("succeed", value as AnyObject)
                    }
                case .failure:
                    failure("failure")
                }
            }
            
        }
       
    }
    
    
}
