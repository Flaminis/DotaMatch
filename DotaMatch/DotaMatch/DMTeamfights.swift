//
//  DMTeamfights.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}


open class DMTeamfights: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMTeamfightsDeathsKey: String = "deaths"
	internal let kDMTeamfightsEndKey: String = "end"
	internal let kDMTeamfightsPlayersKey: String = "players"
	internal let kDMTeamfightsLastDeathKey: String = "last_death"
	internal let kDMTeamfightsStartKey: String = "start"


    // MARK: Properties
	open var deaths: Int?
	open var end: Int?
	open var players: [DMPlayers]?
	open var lastDeath: Int?
	open var start: Int?


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
		deaths = json[kDMTeamfightsDeathsKey].int
		end = json[kDMTeamfightsEndKey].int
		players = []
		if let items = json[kDMTeamfightsPlayersKey].array {
			for item in items {
				players?.append(DMPlayers(json: item))
			}
		} else {
			players = nil
		}
		lastDeath = json[kDMTeamfightsLastDeathKey].int
		start = json[kDMTeamfightsStartKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if deaths != nil {
			dictionary.updateValue(deaths! as AnyObject, forKey: kDMTeamfightsDeathsKey)
		}
		if end != nil {
			dictionary.updateValue(end! as AnyObject, forKey: kDMTeamfightsEndKey)
		}
		if players?.count > 0 {
			var temp: [AnyObject] = []
			for item in players! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMTeamfightsPlayersKey)
		}
		if lastDeath != nil {
			dictionary.updateValue(lastDeath! as AnyObject, forKey: kDMTeamfightsLastDeathKey)
		}
		if start != nil {
			dictionary.updateValue(start! as AnyObject, forKey: kDMTeamfightsStartKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.deaths = aDecoder.decodeObject(forKey: kDMTeamfightsDeathsKey) as? Int
		self.end = aDecoder.decodeObject(forKey: kDMTeamfightsEndKey) as? Int
		self.players = aDecoder.decodeObject(forKey: kDMTeamfightsPlayersKey) as? [DMPlayers]
		self.lastDeath = aDecoder.decodeObject(forKey: kDMTeamfightsLastDeathKey) as? Int
		self.start = aDecoder.decodeObject(forKey: kDMTeamfightsStartKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(deaths, forKey: kDMTeamfightsDeathsKey)
		aCoder.encode(end, forKey: kDMTeamfightsEndKey)
		aCoder.encode(players, forKey: kDMTeamfightsPlayersKey)
		aCoder.encode(lastDeath, forKey: kDMTeamfightsLastDeathKey)
		aCoder.encode(start, forKey: kDMTeamfightsStartKey)

    }

}
