//
//  FeedViewController.swift
//  DotaMatch
//
//  Created by Philip DesJean on 10/7/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class FeedViewController: DotaMatchBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(self.dotaMatchTabBar!.guestId?.toString())

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
