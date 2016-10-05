//
//  DMRecentMatch.swift
//
//  Created by Philip DesJean on 10/2/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMRecentMatch: NSObject {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    internal let kDMRecentMatchDeathsKey: String = "deaths"
    internal let kDMRecentMatchMatchIdKey: String = "match_id"
    internal let kDMRecentMatchVersionKey: String = "version"
    internal let kDMRecentMatchGameModeKey: String = "game_mode"
    internal let kDMRecentMatchStartTimeKey: String = "start_time"
    internal let kDMRecentMatchKillsKey: String = "kills"
    internal let kDMRecentMatchPlayerSlotKey: String = "player_slot"
    internal let kDMRecentMatchHeroIdKey: String = "hero_id"
    internal let kDMRecentMatchRadiantWinKey: String = "radiant_win"
    internal let kDMRecentMatchDurationKey: String = "duration"
    internal let kDMRecentMatchAssistsKey: String = "assists"
    
    
    // MARK: Properties
    open var deaths: Int?
    open var matchId: Int?
    open var version: Int?
    open var gameMode: Int?
    open var startTime: Int?
    open var kills: Int?
    open var playerSlot: Int?
    open var heroId: Int?
    open var radiantWin: Bool = false
    open var duration: Int?
    open var assists: Int?
    
    
    // MARK: SwiftyJSON Initalizers
    /**
     Initates the class based on the object
     - parameter object: The object of either Dictionary or Array kind that was passed.
     - returns: An initalized instance of the class.
     */
    convenience public init(object: AnyObject) {
        self.init(json: JSON(object))
    }
    
    /**
     Initates the class based on the JSON that was passed.
     - parameter json: JSON object from SwiftyJSON.
     - returns: An initalized instance of the class.
     */
    public init(json: JSON) {
        deaths = json[kDMRecentMatchDeathsKey].int
        matchId = json[kDMRecentMatchMatchIdKey].int
        version = json[kDMRecentMatchVersionKey].int
        gameMode = json[kDMRecentMatchGameModeKey].int
        startTime = json[kDMRecentMatchStartTimeKey].int
        kills = json[kDMRecentMatchKillsKey].int
        playerSlot = json[kDMRecentMatchPlayerSlotKey].int
        heroId = json[kDMRecentMatchHeroIdKey].int
        radiantWin = json[kDMRecentMatchRadiantWinKey].boolValue
        duration = json[kDMRecentMatchDurationKey].int
        assists = json[kDMRecentMatchAssistsKey].int
        
    }
    
    
    /**
     Generates description of the object in the form of a NSDictionary.
     - returns: A Key value pair containing all valid values in the object.
     */
    open func dictionaryRepresentation() -> [String : AnyObject ] {
        
        var dictionary: [String : AnyObject ] = [ : ]
        if deaths != nil {
            dictionary.updateValue(deaths! as AnyObject, forKey: kDMRecentMatchDeathsKey)
        }
        if matchId != nil {
            dictionary.updateValue(matchId! as AnyObject, forKey: kDMRecentMatchMatchIdKey)
        }
        if version != nil {
            dictionary.updateValue(version! as AnyObject, forKey: kDMRecentMatchVersionKey)
        }
        if gameMode != nil {
            dictionary.updateValue(gameMode! as AnyObject, forKey: kDMRecentMatchGameModeKey)
        }
        if startTime != nil {
            dictionary.updateValue(startTime! as AnyObject, forKey: kDMRecentMatchStartTimeKey)
        }
        if kills != nil {
            dictionary.updateValue(kills! as AnyObject, forKey: kDMRecentMatchKillsKey)
        }
        if playerSlot != nil {
            dictionary.updateValue(playerSlot! as AnyObject, forKey: kDMRecentMatchPlayerSlotKey)
        }
        if heroId != nil {
            dictionary.updateValue(heroId! as AnyObject, forKey: kDMRecentMatchHeroIdKey)
        }
        dictionary.updateValue(radiantWin as AnyObject, forKey: kDMRecentMatchRadiantWinKey)
        if duration != nil {
            dictionary.updateValue(duration! as AnyObject, forKey: kDMRecentMatchDurationKey)
        }
        if assists != nil {
            dictionary.updateValue(assists! as AnyObject, forKey: kDMRecentMatchAssistsKey)
        }
        
        return dictionary
    }
    
}
