//
//  UIInt64+32Extensions.swift
//  DotaMatch
//
//  Created by Philip DesJean on 10/5/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

extension Int {
    func steam32to64() -> Int {
        return self + 76561197960265728
    }
    
    func steam64to32() -> Int {
        return self - 76561197960265728
    }
    
    func steam32to64String() -> String {
        return "\(self + 76561197960265728)"
    }
    
    func steam64to32String() -> String {
        return "\(self - 76561197960265728)"
    }
    
    func toString() -> String {
        return "\(self)"
    }
    
}

extension String {
    func steam32to64() -> String {
        
        if let selfAsInt = Int(self) {
            return "\(selfAsInt + 76561197960265728)"
        }
        return ""
    }
    
    func steam64to32() -> String {
        
        if let selfAsInt = Int(self) {
            return "\(selfAsInt - 76561197960265728)"
        }
        return ""
    }
    
    func steam32to64Int() -> Int {
        
        if let selfAsInt = Int(self) {
            return selfAsInt + 76561197960265728
        }
        
        return 0
    }
    
    func steam64to32Int() -> Int {
        
        if let selfAsInt = Int(self) {
            return selfAsInt - 76561197960265728
        }
        
        return 0
    }
    
    func toInt() -> Int {
        if let selfAsInt = Int(self) {
            return selfAsInt
        }
        
        return 0
    }
    
}
