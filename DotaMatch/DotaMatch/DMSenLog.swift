//
//  DMSenLog.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMSenLog: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMSenLogEntityleftKey: String = "entityleft"
	internal let kDMSenLogPlayerSlotKey: String = "player_slot"
	internal let kDMSenLogEhandleKey: String = "ehandle"
	internal let kDMSenLogTimeKey: String = "time"
	internal let kDMSenLogKeyKey: String = "key"
	internal let kDMSenLogSlotKey: String = "slot"
	internal let kDMSenLogXKey: String = "x"
	internal let kDMSenLogYKey: String = "y"
	internal let kDMSenLogZKey: String = "z"
	internal let kDMSenLogTypeKey: String = "type"


    // MARK: Properties
	open var entityleft: Bool = false
	open var playerSlot: Int?
	open var ehandle: Int?
	open var time: Int?
	open var key: String?
	open var slot: Int?
	open var x: Int?
	open var y: Int?
	open var z: Int?
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
		entityleft = json[kDMSenLogEntityleftKey].boolValue
		playerSlot = json[kDMSenLogPlayerSlotKey].int
		ehandle = json[kDMSenLogEhandleKey].int
		time = json[kDMSenLogTimeKey].int
		key = json[kDMSenLogKeyKey].string
		slot = json[kDMSenLogSlotKey].int
		x = json[kDMSenLogXKey].int
		y = json[kDMSenLogYKey].int
		z = json[kDMSenLogZKey].int
		type = json[kDMSenLogTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		dictionary.updateValue(entityleft as AnyObject, forKey: kDMSenLogEntityleftKey)
		if playerSlot != nil {
			dictionary.updateValue(playerSlot! as AnyObject, forKey: kDMSenLogPlayerSlotKey)
		}
		if ehandle != nil {
			dictionary.updateValue(ehandle! as AnyObject, forKey: kDMSenLogEhandleKey)
		}
		if time != nil {
			dictionary.updateValue(time! as AnyObject, forKey: kDMSenLogTimeKey)
		}
		if key != nil {
			dictionary.updateValue(key! as AnyObject, forKey: kDMSenLogKeyKey)
		}
		if slot != nil {
			dictionary.updateValue(slot! as AnyObject, forKey: kDMSenLogSlotKey)
		}
		if x != nil {
			dictionary.updateValue(x! as AnyObject, forKey: kDMSenLogXKey)
		}
		if y != nil {
			dictionary.updateValue(y! as AnyObject, forKey: kDMSenLogYKey)
		}
		if z != nil {
			dictionary.updateValue(z! as AnyObject, forKey: kDMSenLogZKey)
		}
		if type != nil {
			dictionary.updateValue(type! as AnyObject, forKey: kDMSenLogTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.entityleft = aDecoder.decodeBool(forKey: kDMSenLogEntityleftKey)
		self.playerSlot = aDecoder.decodeObject(forKey: kDMSenLogPlayerSlotKey) as? Int
		self.ehandle = aDecoder.decodeObject(forKey: kDMSenLogEhandleKey) as? Int
		self.time = aDecoder.decodeObject(forKey: kDMSenLogTimeKey) as? Int
		self.key = aDecoder.decodeObject(forKey: kDMSenLogKeyKey) as? String
		self.slot = aDecoder.decodeObject(forKey: kDMSenLogSlotKey) as? Int
		self.x = aDecoder.decodeObject(forKey: kDMSenLogXKey) as? Int
		self.y = aDecoder.decodeObject(forKey: kDMSenLogYKey) as? Int
		self.z = aDecoder.decodeObject(forKey: kDMSenLogZKey) as? Int
		self.type = aDecoder.decodeObject(forKey: kDMSenLogTypeKey) as? String

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(entityleft, forKey: kDMSenLogEntityleftKey)
		aCoder.encode(playerSlot, forKey: kDMSenLogPlayerSlotKey)
		aCoder.encode(ehandle, forKey: kDMSenLogEhandleKey)
		aCoder.encode(time, forKey: kDMSenLogTimeKey)
		aCoder.encode(key, forKey: kDMSenLogKeyKey)
		aCoder.encode(slot, forKey: kDMSenLogSlotKey)
		aCoder.encode(x, forKey: kDMSenLogXKey)
		aCoder.encode(y, forKey: kDMSenLogYKey)
		aCoder.encode(z, forKey: kDMSenLogZKey)
		aCoder.encode(type, forKey: kDMSenLogTypeKey)

    }

}
