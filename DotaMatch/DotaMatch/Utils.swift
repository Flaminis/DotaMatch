//
//  Utilities.swift
//  DotaMatch
//
//  Created by Philip DesJean on 10/24/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class Utils: NSObject {
    
    class func secondsToHoursMinutesSeconds(seconds : Int) -> String {
        var textToReturn = ""
        let hours = seconds/3600
        let minutes = (seconds % 3600) / 60
        let seconds = (seconds % 3600) % 60
        
        if hours > 0{
            textToReturn = "\(hours):"
        }
        
        if minutes <= 9 {
            textToReturn = textToReturn+"0\(minutes):"
        } else {
            textToReturn = textToReturn+"\(minutes):"
        }
        
        if seconds <= 9 {
            textToReturn = textToReturn+"0\(seconds)"
        } else {
            textToReturn = textToReturn+"\(seconds)"
        }
        
        return textToReturn
    }
    
    class func relativePastFor(_ date : Date) -> String {
        
        let units = Set<Calendar.Component>([.year, .month, .day, .hour, .minute, .second, .weekOfYear])
        let components = Calendar.current.dateComponents(units, from: date, to: Date())
        
        if components.year! > 0 {
            return "\(components.year!) " + (components.year! > 1 ? "years ago" : "year ago")
            
        } else if components.month! > 0 {
            return "\(components.month!) " + (components.month! > 1 ? "months ago" : "month ago")
            
        } else if components.weekOfYear! > 0 {
            return "\(components.weekOfYear!) " + (components.weekOfYear! > 1 ? "weeks ago" : "week ago")
            
        } else if (components.day! > 0) {
            return (components.day! > 1 ? "\(components.day!) days ago" : "Yesterday")
            
        } else if components.hour! > 0 {
            return "\(components.hour!) " + (components.hour! > 1 ? "hours ago" : "hour ago")
            
        } else if components.minute! > 0 {
            return "\(components.minute!) " + (components.minute! > 1 ? "minutes ago" : "minute ago")
            
        } else {
            return "\(components.second!) " + (components.second! > 1 ? "seconds ago" : "second ago")
        }
    }
}
