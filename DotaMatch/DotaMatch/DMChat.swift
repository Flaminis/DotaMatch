//
//  DMChat.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMChat: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMChatSlotKey: String = "slot"
	internal let kDMChatPlayerSlotKey: String = "player_slot"
	internal let kDMChatUnitKey: String = "unit"
	internal let kDMChatKeyKey: String = "key"
	internal let kDMChatTimeKey: String = "time"
	internal let kDMChatTypeKey: String = "type"


    // MARK: Properties
	open var slot: Int?
	open var playerSlot: Int?
	open var unit: String?
	open var key: String?
	open var time: Int?
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
		slot = json[kDMChatSlotKey].int
		playerSlot = json[kDMChatPlayerSlotKey].int
		unit = json[kDMChatUnitKey].string
		key = json[kDMChatKeyKey].string
		time = json[kDMChatTimeKey].int
		type = json[kDMChatTypeKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if slot != nil {
			dictionary.updateValue(slot! as AnyObject, forKey: kDMChatSlotKey)
		}
		if playerSlot != nil {
			dictionary.updateValue(playerSlot! as AnyObject, forKey: kDMChatPlayerSlotKey)
		}
		if unit != nil {
			dictionary.updateValue(unit! as AnyObject, forKey: kDMChatUnitKey)
		}
		if key != nil {
			dictionary.updateValue(key! as AnyObject, forKey: kDMChatKeyKey)
		}
		if time != nil {
			dictionary.updateValue(time! as AnyObject, forKey: kDMChatTimeKey)
		}
		if type != nil {
			dictionary.updateValue(type! as AnyObject, forKey: kDMChatTypeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.slot = aDecoder.decodeObject(forKey: kDMChatSlotKey) as? Int
		self.playerSlot = aDecoder.decodeObject(forKey: kDMChatPlayerSlotKey) as? Int
		self.unit = aDecoder.decodeObject(forKey: kDMChatUnitKey) as? String
		self.key = aDecoder.decodeObject(forKey: kDMChatKeyKey) as? String
		self.time = aDecoder.decodeObject(forKey: kDMChatTimeKey) as? Int
		self.type = aDecoder.decodeObject(forKey: kDMChatTypeKey) as? String

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(slot, forKey: kDMChatSlotKey)
		aCoder.encode(playerSlot, forKey: kDMChatPlayerSlotKey)
		aCoder.encode(unit, forKey: kDMChatUnitKey)
		aCoder.encode(key, forKey: kDMChatKeyKey)
		aCoder.encode(time, forKey: kDMChatTimeKey)
		aCoder.encode(type, forKey: kDMChatTypeKey)

    }

}
