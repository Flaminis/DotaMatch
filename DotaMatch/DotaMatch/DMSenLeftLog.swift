//
//  DMSenLeftLog.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMSenLeftLog: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMSenLeftLogEntityleftKey: String = "entityleft"
	internal let kDMSenLeftLogPlayerSlotKey: String = "player_slot"
	internal let kDMSenLeftLogEhandleKey: String = "ehandle"
	internal let kDMSenLeftLogTimeKey: String = "time"
	internal let kDMSenLeftLogKeyKey: String = "key"
	internal let kDMSenLeftLogSlotKey: String = "slot"
	internal let kDMSenLeftLogXKey: String = "x"
	internal let kDMSenLeftLogYKey: String = "y"
	internal let kDMSenLeftLogZKey: String = "z"
	internal let kDMSenLeftLogTypeKey: String = "type"


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
		entityleft = json[kDMSenLeftLogEntityleftKey].boolValue
		playerSlot = json[kDMSenLeftLogPlayerSlotKey].int
		ehandle = json[kDMSenLeftLogEhandleKey].int
		time = json[kDMSenLeftLogTimeKey].int
		key = json[kDMSenLeftLogKeyKey].string
		slot = json[kDMSenLeftLogSlotKey].int
		x = json[kDMSenLeftLogXKey].int
		y = json[kDMSenLeftLogYKey].int
		z = json[kDMSenLeftLogZKey].int
		type = json[kDMSenLeftLogTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		dictionary.updateValue(entityleft as AnyObject, forKey: kDMSenLeftLogEntityleftKey)
		if playerSlot != nil {
			dictionary.updateValue(playerSlot! as AnyObject, forKey: kDMSenLeftLogPlayerSlotKey)
		}
		if ehandle != nil {
			dictionary.updateValue(ehandle! as AnyObject, forKey: kDMSenLeftLogEhandleKey)
		}
		if time != nil {
			dictionary.updateValue(time! as AnyObject, forKey: kDMSenLeftLogTimeKey)
		}
		if key != nil {
			dictionary.updateValue(key! as AnyObject, forKey: kDMSenLeftLogKeyKey)
		}
		if slot != nil {
			dictionary.updateValue(slot! as AnyObject, forKey: kDMSenLeftLogSlotKey)
		}
		if x != nil {
			dictionary.updateValue(x! as AnyObject, forKey: kDMSenLeftLogXKey)
		}
		if y != nil {
			dictionary.updateValue(y! as AnyObject, forKey: kDMSenLeftLogYKey)
		}
		if z != nil {
			dictionary.updateValue(z! as AnyObject, forKey: kDMSenLeftLogZKey)
		}
		if type != nil {
			dictionary.updateValue(type! as AnyObject, forKey: kDMSenLeftLogTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.entityleft = aDecoder.decodeBool(forKey: kDMSenLeftLogEntityleftKey)
		self.playerSlot = aDecoder.decodeObject(forKey: kDMSenLeftLogPlayerSlotKey) as? Int
		self.ehandle = aDecoder.decodeObject(forKey: kDMSenLeftLogEhandleKey) as? Int
		self.time = aDecoder.decodeObject(forKey: kDMSenLeftLogTimeKey) as? Int
		self.key = aDecoder.decodeObject(forKey: kDMSenLeftLogKeyKey) as? String
		self.slot = aDecoder.decodeObject(forKey: kDMSenLeftLogSlotKey) as? Int
		self.x = aDecoder.decodeObject(forKey: kDMSenLeftLogXKey) as? Int
		self.y = aDecoder.decodeObject(forKey: kDMSenLeftLogYKey) as? Int
		self.z = aDecoder.decodeObject(forKey: kDMSenLeftLogZKey) as? Int
		self.type = aDecoder.decodeObject(forKey: kDMSenLeftLogTypeKey) as? String

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(entityleft, forKey: kDMSenLeftLogEntityleftKey)
		aCoder.encode(playerSlot, forKey: kDMSenLeftLogPlayerSlotKey)
		aCoder.encode(ehandle, forKey: kDMSenLeftLogEhandleKey)
		aCoder.encode(time, forKey: kDMSenLeftLogTimeKey)
		aCoder.encode(key, forKey: kDMSenLeftLogKeyKey)
		aCoder.encode(slot, forKey: kDMSenLeftLogSlotKey)
		aCoder.encode(x, forKey: kDMSenLeftLogXKey)
		aCoder.encode(y, forKey: kDMSenLeftLogYKey)
		aCoder.encode(z, forKey: kDMSenLeftLogZKey)
		aCoder.encode(type, forKey: kDMSenLeftLogTypeKey)

    }

}
