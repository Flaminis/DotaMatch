//
//  DMAccount.swift
//  DotaMatch
//
//  Created by Philip DesJean on 10/7/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class DMAccount: NSObject {
    
    var steamProfile : DMProfile?
    var profile : DMPlayerProfile?
    var recentGames : [DMRecentMatch]?
    
    override required init() {
        super.init()
    }
    
}
