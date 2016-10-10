//
//  DMBuybackLog.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMBuybackLog: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMBuybackLogPlayerSlotKey: String = "player_slot"
	internal let kDMBuybackLogValueKey: String = "value"
	internal let kDMBuybackLogTargetsourcenameKey: String = "targetsourcename"
	internal let kDMBuybackLogTimeKey: String = "time"
	internal let kDMBuybackLogTargetheroKey: String = "targethero"
	internal let kDMBuybackLogAttackerheroKey: String = "attackerhero"
	internal let kDMBuybackLogSlotKey: String = "slot"
	internal let kDMBuybackLogInflictorKey: String = "inflictor"
	internal let kDMBuybackLogTypeKey: String = "type"
	internal let kDMBuybackLogAttackernameKey: String = "attackername"
	internal let kDMBuybackLogTargetnameKey: String = "targetname"
	internal let kDMBuybackLogSourcenameKey: String = "sourcename"
	internal let kDMBuybackLogGoldReasonKey: String = "gold_reason"
	internal let kDMBuybackLogAttackerillusionKey: String = "attackerillusion"
	internal let kDMBuybackLogTargetillusionKey: String = "targetillusion"
	internal let kDMBuybackLogXpReasonKey: String = "xp_reason"


    // MARK: Properties
	open var playerSlot: Int?
	open var value: Int?
	open var targetsourcename: String?
	open var time: Int?
	open var targethero: Bool = false
	open var attackerhero: Bool = false
	open var slot: Int?
	open var inflictor: String?
	open var type: String?
	open var attackername: String?
	open var targetname: String?
	open var sourcename: String?
	open var goldReason: Int?
	open var attackerillusion: Bool = false
	open var targetillusion: Bool = false
	open var xpReason: Int?


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
		playerSlot = json[kDMBuybackLogPlayerSlotKey].int
		value = json[kDMBuybackLogValueKey].int
		targetsourcename = json[kDMBuybackLogTargetsourcenameKey].string
		time = json[kDMBuybackLogTimeKey].int
		targethero = json[kDMBuybackLogTargetheroKey].boolValue
		attackerhero = json[kDMBuybackLogAttackerheroKey].boolValue
		slot = json[kDMBuybackLogSlotKey].int
		inflictor = json[kDMBuybackLogInflictorKey].string
		type = json[kDMBuybackLogTypeKey].string
		attackername = json[kDMBuybackLogAttackernameKey].string
		targetname = json[kDMBuybackLogTargetnameKey].string
		sourcename = json[kDMBuybackLogSourcenameKey].string
		goldReason = json[kDMBuybackLogGoldReasonKey].int
		attackerillusion = json[kDMBuybackLogAttackerillusionKey].boolValue
		targetillusion = json[kDMBuybackLogTargetillusionKey].boolValue
		xpReason = json[kDMBuybackLogXpReasonKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if playerSlot != nil {
			dictionary.updateValue(playerSlot! as AnyObject, forKey: kDMBuybackLogPlayerSlotKey)
		}
		if value != nil {
			dictionary.updateValue(value! as AnyObject, forKey: kDMBuybackLogValueKey)
		}
		if targetsourcename != nil {
			dictionary.updateValue(targetsourcename! as AnyObject, forKey: kDMBuybackLogTargetsourcenameKey)
		}
		if time != nil {
			dictionary.updateValue(time! as AnyObject, forKey: kDMBuybackLogTimeKey)
		}
		dictionary.updateValue(targethero as AnyObject, forKey: kDMBuybackLogTargetheroKey)
		dictionary.updateValue(attackerhero as AnyObject, forKey: kDMBuybackLogAttackerheroKey)
		if slot != nil {
			dictionary.updateValue(slot! as AnyObject, forKey: kDMBuybackLogSlotKey)
		}
		if inflictor != nil {
			dictionary.updateValue(inflictor! as AnyObject, forKey: kDMBuybackLogInflictorKey)
		}
		if type != nil {
			dictionary.updateValue(type! as AnyObject, forKey: kDMBuybackLogTypeKey)
		}
		if attackername != nil {
			dictionary.updateValue(attackername! as AnyObject, forKey: kDMBuybackLogAttackernameKey)
		}
		if targetname != nil {
			dictionary.updateValue(targetname! as AnyObject, forKey: kDMBuybackLogTargetnameKey)
		}
		if sourcename != nil {
			dictionary.updateValue(sourcename! as AnyObject, forKey: kDMBuybackLogSourcenameKey)
		}
		if goldReason != nil {
			dictionary.updateValue(goldReason! as AnyObject, forKey: kDMBuybackLogGoldReasonKey)
		}
		dictionary.updateValue(attackerillusion as AnyObject, forKey: kDMBuybackLogAttackerillusionKey)
		dictionary.updateValue(targetillusion as AnyObject, forKey: kDMBuybackLogTargetillusionKey)
		if xpReason != nil {
			dictionary.updateValue(xpReason! as AnyObject, forKey: kDMBuybackLogXpReasonKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.playerSlot = aDecoder.decodeObject(forKey: kDMBuybackLogPlayerSlotKey) as? Int
		self.value = aDecoder.decodeObject(forKey: kDMBuybackLogValueKey) as? Int
		self.targetsourcename = aDecoder.decodeObject(forKey: kDMBuybackLogTargetsourcenameKey) as? String
		self.time = aDecoder.decodeObject(forKey: kDMBuybackLogTimeKey) as? Int
		self.targethero = aDecoder.decodeBool(forKey: kDMBuybackLogTargetheroKey)
		self.attackerhero = aDecoder.decodeBool(forKey: kDMBuybackLogAttackerheroKey)
		self.slot = aDecoder.decodeObject(forKey: kDMBuybackLogSlotKey) as? Int
		self.inflictor = aDecoder.decodeObject(forKey: kDMBuybackLogInflictorKey) as? String
		self.type = aDecoder.decodeObject(forKey: kDMBuybackLogTypeKey) as? String
		self.attackername = aDecoder.decodeObject(forKey: kDMBuybackLogAttackernameKey) as? String
		self.targetname = aDecoder.decodeObject(forKey: kDMBuybackLogTargetnameKey) as? String
		self.sourcename = aDecoder.decodeObject(forKey: kDMBuybackLogSourcenameKey) as? String
		self.goldReason = aDecoder.decodeObject(forKey: kDMBuybackLogGoldReasonKey) as? Int
		self.attackerillusion = aDecoder.decodeBool(forKey: kDMBuybackLogAttackerillusionKey)
		self.targetillusion = aDecoder.decodeBool(forKey: kDMBuybackLogTargetillusionKey)
		self.xpReason = aDecoder.decodeObject(forKey: kDMBuybackLogXpReasonKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(playerSlot, forKey: kDMBuybackLogPlayerSlotKey)
		aCoder.encode(value, forKey: kDMBuybackLogValueKey)
		aCoder.encode(targetsourcename, forKey: kDMBuybackLogTargetsourcenameKey)
		aCoder.encode(time, forKey: kDMBuybackLogTimeKey)
		aCoder.encode(targethero, forKey: kDMBuybackLogTargetheroKey)
		aCoder.encode(attackerhero, forKey: kDMBuybackLogAttackerheroKey)
		aCoder.encode(slot, forKey: kDMBuybackLogSlotKey)
		aCoder.encode(inflictor, forKey: kDMBuybackLogInflictorKey)
		aCoder.encode(type, forKey: kDMBuybackLogTypeKey)
		aCoder.encode(attackername, forKey: kDMBuybackLogAttackernameKey)
		aCoder.encode(targetname, forKey: kDMBuybackLogTargetnameKey)
		aCoder.encode(sourcename, forKey: kDMBuybackLogSourcenameKey)
		aCoder.encode(goldReason, forKey: kDMBuybackLogGoldReasonKey)
		aCoder.encode(attackerillusion, forKey: kDMBuybackLogAttackerillusionKey)
		aCoder.encode(targetillusion, forKey: kDMBuybackLogTargetillusionKey)
		aCoder.encode(xpReason, forKey: kDMBuybackLogXpReasonKey)

    }

}
