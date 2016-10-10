//
//  DMXpReasons.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMXpReasons: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMXpReasons2Key: String = "2"
	internal let kDMXpReasons1Key: String = "1"
	internal let kDMXpReasons0Key: String = "0"
	internal let kDMXpReasons3Key: String = "3"


    // MARK: Properties
	public var 2: Int?
	public var 1: Int?
	public var 0: Int?
	public var 3: Int?


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
		2 = json[kDMXpReasons2Key].int
		1 = json[kDMXpReasons1Key].int
		0 = json[kDMXpReasons0Key].int
		3 = json[kDMXpReasons3Key].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if 2 != nil {
			dictionary.updateValue(2 as AnyObject, forKey: kDMXpReasons2Key)
		}
		if 1 != nil {
			dictionary.updateValue(1 as AnyObject, forKey: kDMXpReasons1Key)
		}
		if 0 != nil {
			dictionary.updateValue(0 as AnyObject, forKey: kDMXpReasons0Key)
		}
		if 3 != nil {
			dictionary.updateValue(3 as AnyObject, forKey: kDMXpReasons3Key)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.2 = aDecoder.decodeObjectForKey(kDMXpReasons2Key) as? Int
		self.1 = aDecoder.decodeObjectForKey(kDMXpReasons1Key) as? Int
		self.0 = aDecoder.decodeObjectForKey(kDMXpReasons0Key) as? Int
		self.3 = aDecoder.decodeObjectForKey(kDMXpReasons3Key) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encode(2, forKey: kDMXpReasons2Key)
		aCoder.encode(1, forKey: kDMXpReasons1Key)
		aCoder.encode(0, forKey: kDMXpReasons0Key)
		aCoder.encode(3, forKey: kDMXpReasons3Key)

    }

}
