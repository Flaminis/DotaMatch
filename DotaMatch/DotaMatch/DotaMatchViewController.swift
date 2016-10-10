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
        
        if let id = guestId {
            AppService.sharedInstance.setAccountFor(steamId: id)
        }
        
        // Do any additional setup after loading the view.
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
