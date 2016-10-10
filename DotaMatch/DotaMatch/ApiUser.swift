//
//  ApiUser.swift
//  DotaMate
//
//  Created by Philip DesJean on 9/5/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import SwiftyJSON

class ApiUser: NSObject {
    
    var accountId : Int?
    var avatar : String?
    var displayName : String?
    
    init(json: JSON) {
        self.accountId = json["account_id"].int
        self.avatar = json["avatarfull"].string
        self.displayName = json["personaname"].string
    }
}
