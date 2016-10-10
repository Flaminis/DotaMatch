//
//  DMMaxHeroHit.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMMaxHeroHit: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMMaxHeroHitPlayerSlotKey: String = "player_slot"
	internal let kDMMaxHeroHitValueKey: String = "value"
	internal let kDMMaxHeroHitKeyKey: String = "key"
	internal let kDMMaxHeroHitTimeKey: String = "time"
	internal let kDMMaxHeroHitMaxKey: String = "max"
	internal let kDMMaxHeroHitInflictorKey: String = "inflictor"
	internal let kDMMaxHeroHitSlotKey: String = "slot"
	internal let kDMMaxHeroHitUnitKey: String = "unit"
	internal let kDMMaxHeroHitTypeKey: String = "type"


    // MARK: Properties
	open var playerSlot: Int?
	open var value: Int?
	open var key: String?
	open var time: Int?
	open var max: Bool = false
	open var inflictor: String?
	open var slot: Int?
	open var unit: String?
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
		playerSlot = json[kDMMaxHeroHitPlayerSlotKey].int
		value = json[kDMMaxHeroHitValueKey].int
		key = json[kDMMaxHeroHitKeyKey].string
		time = json[kDMMaxHeroHitTimeKey].int
		max = json[kDMMaxHeroHitMaxKey].boolValue
		inflictor = json[kDMMaxHeroHitInflictorKey].string
		slot = json[kDMMaxHeroHitSlotKey].int
		unit = json[kDMMaxHeroHitUnitKey].string
		type = json[kDMMaxHeroHitTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if playerSlot != nil {
			dictionary.updateValue(playerSlot! as AnyObject, forKey: kDMMaxHeroHitPlayerSlotKey)
		}
		if value != nil {
			dictionary.updateValue(value! as AnyObject, forKey: kDMMaxHeroHitValueKey)
		}
		if key != nil {
			dictionary.updateValue(key! as AnyObject, forKey: kDMMaxHeroHitKeyKey)
		}
		if time != nil {
			dictionary.updateValue(time! as AnyObject, forKey: kDMMaxHeroHitTimeKey)
		}
		dictionary.updateValue(max as AnyObject, forKey: kDMMaxHeroHitMaxKey)
		if inflictor != nil {
			dictionary.updateValue(inflictor! as AnyObject, forKey: kDMMaxHeroHitInflictorKey)
		}
		if slot != nil {
			dictionary.updateValue(slot! as AnyObject, forKey: kDMMaxHeroHitSlotKey)
		}
		if unit != nil {
			dictionary.updateValue(unit! as AnyObject, forKey: kDMMaxHeroHitUnitKey)
		}
		if type != nil {
			dictionary.updateValue(type! as AnyObject, forKey: kDMMaxHeroHitTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.playerSlot = aDecoder.decodeObject(forKey: kDMMaxHeroHitPlayerSlotKey) as? Int
		self.value = aDecoder.decodeObject(forKey: kDMMaxHeroHitValueKey) as? Int
		self.key = aDecoder.decodeObject(forKey: kDMMaxHeroHitKeyKey) as? String
		self.time = aDecoder.decodeObject(forKey: kDMMaxHeroHitTimeKey) as? Int
		self.max = aDecoder.decodeBool(forKey: kDMMaxHeroHitMaxKey)
		self.inflictor = aDecoder.decodeObject(forKey: kDMMaxHeroHitInflictorKey) as? String
		self.slot = aDecoder.decodeObject(forKey: kDMMaxHeroHitSlotKey) as? Int
		self.unit = aDecoder.decodeObject(forKey: kDMMaxHeroHitUnitKey) as? String
		self.type = aDecoder.decodeObject(forKey: kDMMaxHeroHitTypeKey) as? String

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(playerSlot, forKey: kDMMaxHeroHitPlayerSlotKey)
		aCoder.encode(value, forKey: kDMMaxHeroHitValueKey)
		aCoder.encode(key, forKey: kDMMaxHeroHitKeyKey)
		aCoder.encode(time, forKey: kDMMaxHeroHitTimeKey)
		aCoder.encode(max, forKey: kDMMaxHeroHitMaxKey)
		aCoder.encode(inflictor, forKey: kDMMaxHeroHitInflictorKey)
		aCoder.encode(slot, forKey: kDMMaxHeroHitSlotKey)
		aCoder.encode(unit, forKey: kDMMaxHeroHitUnitKey)
		aCoder.encode(type, forKey: kDMMaxHeroHitTypeKey)

    }

}
