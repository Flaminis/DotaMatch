//
//  DMObsLog.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMObsLog: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMObsLogEntityleftKey: String = "entityleft"
	internal let kDMObsLogPlayerSlotKey: String = "player_slot"
	internal let kDMObsLogEhandleKey: String = "ehandle"
	internal let kDMObsLogTimeKey: String = "time"
	internal let kDMObsLogKeyKey: String = "key"
	internal let kDMObsLogSlotKey: String = "slot"
	internal let kDMObsLogXKey: String = "x"
	internal let kDMObsLogYKey: String = "y"
	internal let kDMObsLogZKey: String = "z"
	internal let kDMObsLogTypeKey: String = "type"


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
		entityleft = json[kDMObsLogEntityleftKey].boolValue
		playerSlot = json[kDMObsLogPlayerSlotKey].int
		ehandle = json[kDMObsLogEhandleKey].int
		time = json[kDMObsLogTimeKey].int
		key = json[kDMObsLogKeyKey].string
		slot = json[kDMObsLogSlotKey].int
		x = json[kDMObsLogXKey].int
		y = json[kDMObsLogYKey].int
		z = json[kDMObsLogZKey].int
		type = json[kDMObsLogTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		dictionary.updateValue(entityleft as AnyObject, forKey: kDMObsLogEntityleftKey)
		if playerSlot != nil {
			dictionary.updateValue(playerSlot! as AnyObject, forKey: kDMObsLogPlayerSlotKey)
		}
		if ehandle != nil {
			dictionary.updateValue(ehandle! as AnyObject, forKey: kDMObsLogEhandleKey)
		}
		if time != nil {
			dictionary.updateValue(time! as AnyObject, forKey: kDMObsLogTimeKey)
		}
		if key != nil {
			dictionary.updateValue(key! as AnyObject, forKey: kDMObsLogKeyKey)
		}
		if slot != nil {
			dictionary.updateValue(slot! as AnyObject, forKey: kDMObsLogSlotKey)
		}
		if x != nil {
			dictionary.updateValue(x! as AnyObject, forKey: kDMObsLogXKey)
		}
		if y != nil {
			dictionary.updateValue(y! as AnyObject, forKey: kDMObsLogYKey)
		}
		if z != nil {
			dictionary.updateValue(z! as AnyObject, forKey: kDMObsLogZKey)
		}
		if type != nil {
			dictionary.updateValue(type! as AnyObject, forKey: kDMObsLogTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.entityleft = aDecoder.decodeBool(forKey: kDMObsLogEntityleftKey)
		self.playerSlot = aDecoder.decodeObject(forKey: kDMObsLogPlayerSlotKey) as? Int
		self.ehandle = aDecoder.decodeObject(forKey: kDMObsLogEhandleKey) as? Int
		self.time = aDecoder.decodeObject(forKey: kDMObsLogTimeKey) as? Int
		self.key = aDecoder.decodeObject(forKey: kDMObsLogKeyKey) as? String
		self.slot = aDecoder.decodeObject(forKey: kDMObsLogSlotKey) as? Int
		self.x = aDecoder.decodeObject(forKey: kDMObsLogXKey) as? Int
		self.y = aDecoder.decodeObject(forKey: kDMObsLogYKey) as? Int
		self.z = aDecoder.decodeObject(forKey: kDMObsLogZKey) as? Int
		self.type = aDecoder.decodeObject(forKey: kDMObsLogTypeKey) as? String

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(entityleft, forKey: kDMObsLogEntityleftKey)
		aCoder.encode(playerSlot, forKey: kDMObsLogPlayerSlotKey)
		aCoder.encode(ehandle, forKey: kDMObsLogEhandleKey)
		aCoder.encode(time, forKey: kDMObsLogTimeKey)
		aCoder.encode(key, forKey: kDMObsLogKeyKey)
		aCoder.encode(slot, forKey: kDMObsLogSlotKey)
		aCoder.encode(x, forKey: kDMObsLogXKey)
		aCoder.encode(y, forKey: kDMObsLogYKey)
		aCoder.encode(z, forKey: kDMObsLogZKey)
		aCoder.encode(type, forKey: kDMObsLogTypeKey)

    }

}
