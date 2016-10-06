//
//  User.swift
//  DotaMate
//
//  Created by Yerbol Kopzhassar on 22/07/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import Parse

class User: PFUser {

    @NSManaged var avatar: PFFile
    @NSManaged var SteamID: String
    @NSManaged var mmr: String
    @NSManaged var upvotes: Int
    
}
