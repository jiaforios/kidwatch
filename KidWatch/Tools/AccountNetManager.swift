//
//  AccountNetManager.swift
//  KidWatch
//
//  Created by admin on 2017/7/10.
//  Copyright © 2017年 com. All rights reserved.
// 业务模块 -- 账户相关网络请求

import UIKit

class AccountNetManager:BaseActionManager{

    
    //登录
    
    class func login(judge:Bool,type:ConnectType,acount:String?,password:String?,resultBlock:@escaping(AnyObject)->()) ->(){
        
        if judge {
            if !self.judeNull(content: acount){
              // 验证不通过
                return
            }
            if !self.judeNull(content: password){
                // 验证不通过
                return
            }
            
        }

        let params = ["mobile":acount,"password":password]
        NetManager.shareManager.request(Type: type, url: kAcountLogin, parames: params as [String:AnyObject], succeed: { (suc, response) in
            resultBlock(response)
            
        }) { (fail) in
            
            
        }
    }
    
    
    // 注册
    
    
    // 忘记密码
    
    // 重置密码
    
    // 验证手机号是否注册
    
    // 发送验证码
    class func request(Type:ConnectType,url:String?,parames:[String:AnyObject],success:@escaping(String?,AnyObject)->(), failure:@escaping(String?)->()){
    
        NetManager.shareManager.request(Type: Type, url: url!, parames: parames, succeed: success, failure: failure)
    }
    
    
}
