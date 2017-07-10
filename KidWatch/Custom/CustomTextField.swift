//
//  CustomTextField.swift
//  KidWatch
//
//  Created by admin on 2017/6/24.
//  Copyright © 2017年 com. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    func customStyle() {
        
        self.placeholder = "请输入您的手机号"
    }

    func secure() {
        self.isSecureTextEntry = true
        self.placeholder = "请输入您的密码"
    }


}


