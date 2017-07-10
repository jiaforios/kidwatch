//
//  loginVC+extend.swift
//  KidWatch
//
//  Created by zengjia on 2017/7/10.
//  Copyright © 2017年 com. All rights reserved.
//

import Foundation
import UIKit

extension LoginViewController:UITableViewDelegate,UITableViewDataSource{
    
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
}
