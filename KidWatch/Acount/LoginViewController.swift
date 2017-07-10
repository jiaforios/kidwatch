//
//  LoginViewController.swift
//  KidWatch
//
//  Created by admin on 2017/6/24.
//  Copyright © 2017年 com. All rights reserved.
//

import UIKit
import SnapKit

class LoginViewController: HyBaseViewController,UITableViewDelegate,UITableViewDataSource {
    var tabView :UITableView?
    var datasource = [String]()
    var placehoderArr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = NSLocalizedString("login_title", comment: "登录")
        self.automaticallyAdjustsScrollViewInsets = false
        self.configerValue()
        self.toMakeTabview()
        self.toMakeBtns()
    }
    
    func configerValue() {
        datasource.append("@2x_80")
        datasource.append("@2x_82")
        placehoderArr.append(NSLocalizedString("login_userPlaceholder", comment: "手机号输入提示"))
        placehoderArr.append(NSLocalizedString("login_pwdPlaceholder", comment: "密码输入提示"))

    }
    
    //设置tabview
    func toMakeTabview() {
        tabView = UITableView.init(frame: CGRect.zero, style: .plain)
        
        tabView?.tableFooterView = UIView()
        tabView?.delegate = self
        tabView?.dataSource = self
        tabView?.register(TextInputCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tabView!)
        
        tabView?.snp.makeConstraints({ (make) in
            make.width.equalTo(kScreenW)
            make.height.equalTo(88)
            make.top.equalTo(33+kBarNav)
            make.left.equalTo(0)
        })
        
    }
    
    // 设置登录，注册，忘记密码按钮
    func toMakeBtns() {
        
        let loginBtn = UIButton()
        self.view.addSubview(loginBtn)
        loginBtn.snp.makeConstraints { (make) in
            make.height.equalTo(44)
            make.left.equalTo(12)
            make.right.equalTo(-12)
            make.top.equalTo(tabView!.snp.bottomMargin).offset(33)
        }
        
        loginBtn.setTitle(NSLocalizedString("login_login", comment: "登录"), for: UIControlState.normal)
        loginBtn.setBackgroundImage(UIImage.init(named: "@2x_126"), for: UIControlState.normal)
        loginBtn.layer.cornerRadius = 22
        loginBtn.clipsToBounds = true
        loginBtn.addTarget(self, action: #selector(loginAction), for: UIControlEvents.touchUpInside)
        
       let register = UIButton()
        self.view.addSubview(register)
        register.snp.makeConstraints { (make) in
            make.height.equalTo(44)
            make.left.equalTo(12)
            make.right.equalTo(-12)
            make.top.equalTo(loginBtn.snp.bottom).offset(20)
        }
        register.setTitle(NSLocalizedString("login_registerAccount", comment: "注册账号"), for: UIControlState.normal)
        register.setBackgroundImage(UIImage.init(named: "@2x_120"), for: UIControlState.normal)
        register.layer.cornerRadius = 22
        register.clipsToBounds = true
        register.setTitleColor(kAppColor, for: UIControlState.normal)
        register.addTarget(self, action: #selector(registerAction), for: UIControlEvents.touchUpInside)
        
    }
    
    //MARK:登录事件,然登录界面出栈
    func loginAction() {
        
        AccountNetManager.login(type: .Post, acount: "18682047063", password: "52d4a83215565368f94d3e340e7125e7") { (res) in
            
            print(res)
        }
        
//        let location = LocationViewController()
//        self.navigationController?.setViewControllers([], animated: true)
//        self.present(location, animated: true, completion: nil)
    
    }
    
    // 跳转到注册界面 并传值
    func registerAction() {
        let register = RegisterViewController()
        let acountCell = self.tabView?.cellForRow(at: IndexPath.init(row: 0, section: 0)) as! TextInputCell
        register.acountName = acountCell.textField?.text
        self.navigationController?.pushViewController(register, animated: true)
    }
    
    //MARK:tabview 的代理方法
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TextInputCell
        cell.configerData(datasource[indexPath.row], placehoderArr[indexPath.row])
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! TextInputCell
        cell.textField?.becomeFirstResponder()
    }
    
    // TODO:今天写到这，明天继续

    deinit{
        
        Logger("销毁")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
