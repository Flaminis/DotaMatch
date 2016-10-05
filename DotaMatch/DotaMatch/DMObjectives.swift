//
//  DMObjectives.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMObjectives: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMObjectivesPlayer2Key: String = "player2"
	internal let kDMObjectivesPlayerSlotKey: String = "player_slot"
	internal let kDMObjectivesValueKey: String = "value"
	internal let kDMObjectivesPlayer1Key: String = "player1"
	internal let kDMObjectivesTimeKey: String = "time"
	internal let kDMObjectivesKeyKey: String = "key"
	internal let kDMObjectivesSlotKey: String = "slot"
	internal let kDMObjectivesTeamKey: String = "team"
	internal let kDMObjectivesTypeKey: String = "type"


    // MARK: Properties
	open var player2: Int?
	open var playerSlot: Int?
	open var value: Int?
	open var player1: Int?
	open var time: Int?
	open var key: String?
	open var slot: Int?
	open var team: Int?
	open var type: String?


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
		player2 = json[kDMObjectivesPlayer2Key].int
		playerSlot = json[kDMObjectivesPlayerSlotKey].int
		value = json[kDMObjectivesValueKey].int
		player1 = json[kDMObjectivesPlayer1Key].int
		time = json[kDMObjectivesTimeKey].int
		key = json[kDMObjectivesKeyKey].string
		slot = json[kDMObjectivesSlotKey].int
		team = json[kDMObjectivesTeamKey].int
		type = json[kDMObjectivesTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if player2 != nil {
			dictionary.updateValue(player2! as AnyObject, forKey: kDMObjectivesPlayer2Key)
		}
		if playerSlot != nil {
			dictionary.updateValue(playerSlot! as AnyObject, forKey: kDMObjectivesPlayerSlotKey)
		}
		if value != nil {
			dictionary.updateValue(value! as AnyObject, forKey: kDMObjectivesValueKey)
		}
		if player1 != nil {
			dictionary.updateValue(player1! as AnyObject, forKey: kDMObjectivesPlayer1Key)
		}
		if time != nil {
			dictionary.updateValue(time! as AnyObject, forKey: kDMObjectivesTimeKey)
		}
		if key != nil {
			dictionary.updateValue(key! as AnyObject, forKey: kDMObjectivesKeyKey)
		}
		if slot != nil {
			dictionary.updateValue(slot! as AnyObject, forKey: kDMObjectivesSlotKey)
		}
		if team != nil {
			dictionary.updateValue(team! as AnyObject, forKey: kDMObjectivesTeamKey)
		}
		if type != nil {
			dictionary.updateValue(type! as AnyObject, forKey: kDMObjectivesTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.player2 = aDecoder.decodeObject(forKey: kDMObjectivesPlayer2Key) as? Int
		self.playerSlot = aDecoder.decodeObject(forKey: kDMObjectivesPlayerSlotKey) as? Int
		self.value = aDecoder.decodeObject(forKey: kDMObjectivesValueKey) as? Int
		self.player1 = aDecoder.decodeObject(forKey: kDMObjectivesPlayer1Key) as? Int
		self.time = aDecoder.decodeObject(forKey: kDMObjectivesTimeKey) as? Int
		self.key = aDecoder.decodeObject(forKey: kDMObjectivesKeyKey) as? String
		self.slot = aDecoder.decodeObject(forKey: kDMObjectivesSlotKey) as? Int
		self.team = aDecoder.decodeObject(forKey: kDMObjectivesTeamKey) as? Int
		self.type = aDecoder.decodeObject(forKey: kDMObjectivesTypeKey) as? String

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(player2, forKey: kDMObjectivesPlayer2Key)
		aCoder.encode(playerSlot, forKey: kDMObjectivesPlayerSlotKey)
		aCoder.encode(value, forKey: kDMObjectivesValueKey)
		aCoder.encode(player1, forKey: kDMObjectivesPlayer1Key)
		aCoder.encode(time, forKey: kDMObjectivesTimeKey)
		aCoder.encode(key, forKey: kDMObjectivesKeyKey)
		aCoder.encode(slot, forKey: kDMObjectivesSlotKey)
		aCoder.encode(team, forKey: kDMObjectivesTeamKey)
		aCoder.encode(type, forKey: kDMObjectivesTypeKey)

    }

}
