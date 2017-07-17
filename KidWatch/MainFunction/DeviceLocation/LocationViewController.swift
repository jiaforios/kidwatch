//
//  LocationViewController.swift
//  KidWatch
//
//  Created by admin on 2017/6/24.
//  Copyright © 2017年 com. All rights reserved.
//

import UIKit

class LocationViewController: HyBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "主页"
        self.view.backgroundColor = UIColor.red
        let mapVC = GaoMapViewController()
        
        self.view .addSubview(mapVC.view)
        
        self.addChildViewController(mapVC)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     deinit{
        Logger("销毁")
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
