//
//  DMObsLeftLog.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMObsLeftLog: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMObsLeftLogEntityleftKey: String = "entityleft"
	internal let kDMObsLeftLogPlayerSlotKey: String = "player_slot"
	internal let kDMObsLeftLogEhandleKey: String = "ehandle"
	internal let kDMObsLeftLogTimeKey: String = "time"
	internal let kDMObsLeftLogKeyKey: String = "key"
	internal let kDMObsLeftLogSlotKey: String = "slot"
	internal let kDMObsLeftLogXKey: String = "x"
	internal let kDMObsLeftLogYKey: String = "y"
	internal let kDMObsLeftLogZKey: String = "z"
	internal let kDMObsLeftLogTypeKey: String = "type"


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
		entityleft = json[kDMObsLeftLogEntityleftKey].boolValue
		playerSlot = json[kDMObsLeftLogPlayerSlotKey].int
		ehandle = json[kDMObsLeftLogEhandleKey].int
		time = json[kDMObsLeftLogTimeKey].int
		key = json[kDMObsLeftLogKeyKey].string
		slot = json[kDMObsLeftLogSlotKey].int
		x = json[kDMObsLeftLogXKey].int
		y = json[kDMObsLeftLogYKey].int
		z = json[kDMObsLeftLogZKey].int
		type = json[kDMObsLeftLogTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		dictionary.updateValue(entityleft as AnyObject, forKey: kDMObsLeftLogEntityleftKey)
		if playerSlot != nil {
			dictionary.updateValue(playerSlot! as AnyObject, forKey: kDMObsLeftLogPlayerSlotKey)
		}
		if ehandle != nil {
			dictionary.updateValue(ehandle! as AnyObject, forKey: kDMObsLeftLogEhandleKey)
		}
		if time != nil {
			dictionary.updateValue(time! as AnyObject, forKey: kDMObsLeftLogTimeKey)
		}
		if key != nil {
			dictionary.updateValue(key! as AnyObject, forKey: kDMObsLeftLogKeyKey)
		}
		if slot != nil {
			dictionary.updateValue(slot! as AnyObject, forKey: kDMObsLeftLogSlotKey)
		}
		if x != nil {
			dictionary.updateValue(x! as AnyObject, forKey: kDMObsLeftLogXKey)
		}
		if y != nil {
			dictionary.updateValue(y! as AnyObject, forKey: kDMObsLeftLogYKey)
		}
		if z != nil {
			dictionary.updateValue(z! as AnyObject, forKey: kDMObsLeftLogZKey)
		}
		if type != nil {
			dictionary.updateValue(type! as AnyObject, forKey: kDMObsLeftLogTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.entityleft = aDecoder.decodeBool(forKey: kDMObsLeftLogEntityleftKey)
		self.playerSlot = aDecoder.decodeObject(forKey: kDMObsLeftLogPlayerSlotKey) as? Int
		self.ehandle = aDecoder.decodeObject(forKey: kDMObsLeftLogEhandleKey) as? Int
		self.time = aDecoder.decodeObject(forKey: kDMObsLeftLogTimeKey) as? Int
		self.key = aDecoder.decodeObject(forKey: kDMObsLeftLogKeyKey) as? String
		self.slot = aDecoder.decodeObject(forKey: kDMObsLeftLogSlotKey) as? Int
		self.x = aDecoder.decodeObject(forKey: kDMObsLeftLogXKey) as? Int
		self.y = aDecoder.decodeObject(forKey: kDMObsLeftLogYKey) as? Int
		self.z = aDecoder.decodeObject(forKey: kDMObsLeftLogZKey) as? Int
		self.type = aDecoder.decodeObject(forKey: kDMObsLeftLogTypeKey) as? String

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(entityleft, forKey: kDMObsLeftLogEntityleftKey)
		aCoder.encode(playerSlot, forKey: kDMObsLeftLogPlayerSlotKey)
		aCoder.encode(ehandle, forKey: kDMObsLeftLogEhandleKey)
		aCoder.encode(time, forKey: kDMObsLeftLogTimeKey)
		aCoder.encode(key, forKey: kDMObsLeftLogKeyKey)
		aCoder.encode(slot, forKey: kDMObsLeftLogSlotKey)
		aCoder.encode(x, forKey: kDMObsLeftLogXKey)
		aCoder.encode(y, forKey: kDMObsLeftLogYKey)
		aCoder.encode(z, forKey: kDMObsLeftLogZKey)
		aCoder.encode(type, forKey: kDMObsLeftLogTypeKey)

    }

}
