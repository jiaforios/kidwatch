//
//  GaoMapViewController.swift
//  KidWatch
//
//  Created by zengjia on 2017/7/17.
//  Copyright © 2017年 com. All rights reserved.
//

import UIKit

class GaoMapViewController: UIViewController,MAMapViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        AMapServices.shared().enableHTTPS = true
        let mapView = MAMapView(frame:self.view.bounds)
        mapView.delegate  = self
        self.view.addSubview(mapView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
