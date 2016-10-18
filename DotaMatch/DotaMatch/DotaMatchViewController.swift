//
//  DotaMatchViewController.swift
//  DotaMatch
//
//  Created by Philip DesJean on 10/7/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class DotaMatchViewController: UITabBarController {
    
    public var guestId : Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if AppService.shared.currentAccount == nil {
            if let id = guestId {
                AppService.shared.setAccountFor(steamId: id)
            }
        }
        
        // Do any additional setup after loading the view.
    }

}
