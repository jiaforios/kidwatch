//
//  LoginVC.swift
//  KidWatch
//
//  Created by zengjia on 2017/9/3.
//  Copyright © 2017年 com. All rights reserved.
//

import UIKit

class LoginVC: HyBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: -登录
    @IBAction func LoinAction(_ sender: Any) {
        
        print("登录")
    }
    
    //MARK:-忘记密码
    @IBAction func MissPwdAction(_ sender: Any) {
        print("忘记密码")

        
    }
    //MARK:-注册账户
    @IBAction func RegisterAction(_ sender: Any) {
        
        print("注册账户")

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
