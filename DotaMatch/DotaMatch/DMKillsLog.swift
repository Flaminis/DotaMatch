//
//  DMKillsLog.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMKillsLog: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMKillsLogKeyKey: String = "key"
	internal let kDMKillsLogTimeKey: String = "time"


    // MARK: Properties
	open var key: String?
	open var time: Int?


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
		key = json[kDMKillsLogKeyKey].string
		time = json[kDMKillsLogTimeKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if key != nil {
			dictionary.updateValue(key! as AnyObject, forKey: kDMKillsLogKeyKey)
		}
		if time != nil {
			dictionary.updateValue(time! as AnyObject, forKey: kDMKillsLogTimeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.key = aDecoder.decodeObject(forKey: kDMKillsLogKeyKey) as? String
		self.time = aDecoder.decodeObject(forKey: kDMKillsLogTimeKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(key, forKey: kDMKillsLogKeyKey)
		aCoder.encode(time, forKey: kDMKillsLogTimeKey)

    }

}
