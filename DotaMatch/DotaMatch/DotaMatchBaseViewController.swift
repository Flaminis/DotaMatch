//
//  DotaMatchBaseViewController.swift
//  DotaMatch
//
//  Created by Philip DesJean on 10/7/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class DotaMatchBaseViewController: UIViewController {

    var dotaMatchTabBar : DotaMatchViewController? {
        get {return self.tabBarController as? DotaMatchViewController}
    }
    
    var currentAccount : Profile?
    
    override func viewDidLoad() {
        currentAccount = AppService.shared.currentAccount
    }
    
}
