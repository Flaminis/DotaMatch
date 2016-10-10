//
//  AlertHelper.swift
//  DotaMatch
//
//  Created by Philip DesJean on 10/7/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import SCLAlertView

class AlertHelper: NSObject {
    
    class func loginSearchAppearance() -> SCLAlertView.SCLAppearance {
        
        return SCLAlertView.SCLAppearance(
            kTitleFont: UIFont(name: "AvenirNext-Regular", size: 20)!,
            kTextFont: UIFont(name: "AvenirNext-Regular", size: 14)!,
            kButtonFont: UIFont(name: "AvenirNext-Bold", size: 14)!,
            showCloseButton: true)
        
    }

}
