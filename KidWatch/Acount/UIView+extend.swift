//
//  UIView+extend.swift
//  KidWatch
//
//  Created by zengjia on 2017/7/10.
//  Copyright © 2017年 com. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    public var x: CGFloat {
    
        get{
            return self.frame.origin.x
        }
        set{
        
            var r = self.frame
            r.origin.x = newValue
            self.frame = r
            print(self.frame)
            
            
        }
    }
    
    public var rightW:CGFloat{
    
        get{
        
            return self.frame.width
        }
        set{
        
            var r = self.frame
            r.origin.x = newValue - self.frame.size.width
            self.frame = r
            
        }
    }
    
}
