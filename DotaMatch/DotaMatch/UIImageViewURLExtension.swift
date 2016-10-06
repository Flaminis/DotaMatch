//
//  UIImageViewURLExtension.swift
//  BurnBet
//
//  Created by Philip DesJean on 9/29/16.
//  Copyright © 2016 Philip DesJean. All rights reserved.
//

import UIKit
import ObjectiveC

// Declare a global var to produce a unique address as the assoc object handle
var AssociatedObjectHandle: UInt8 = 0

extension UIImageView {
    var url:String {
        get {
            return objc_getAssociatedObject(self, &AssociatedObjectHandle) as! String
        }
        set {
            objc_setAssociatedObject(self, &AssociatedObjectHandle, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}
