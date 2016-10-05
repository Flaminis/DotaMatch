//
//  DMKillStreaks.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMKillStreaks: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMKillStreaks8Key: String = "8"
	internal let kDMKillStreaks6Key: String = "6"
	internal let kDMKillStreaks4Key: String = "4"
	internal let kDMKillStreaks3Key: String = "3"
	internal let kDMKillStreaks7Key: String = "7"
	internal let kDMKillStreaks9Key: String = "9"
	internal let kDMKillStreaks5Key: String = "5"


    // MARK: Properties
	public var 8: Int?
	public var 6: Int?
	public var 4: Int?
	public var 3: Int?
	public var 7: Int?
	public var 9: Int?
	public var 5: Int?


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
		8 = json[kDMKillStreaks8Key].int
		6 = json[kDMKillStreaks6Key].int
		4 = json[kDMKillStreaks4Key].int
		3 = json[kDMKillStreaks3Key].int
		7 = json[kDMKillStreaks7Key].int
		9 = json[kDMKillStreaks9Key].int
		5 = json[kDMKillStreaks5Key].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if 8 != nil {
			dictionary.updateValue(8 as AnyObject, forKey: kDMKillStreaks8Key)
		}
		if 6 != nil {
			dictionary.updateValue(6 as AnyObject, forKey: kDMKillStreaks6Key)
		}
		if 4 != nil {
			dictionary.updateValue(4 as AnyObject, forKey: kDMKillStreaks4Key)
		}
		if 3 != nil {
			dictionary.updateValue(3 as AnyObject, forKey: kDMKillStreaks3Key)
		}
		if 7 != nil {
			dictionary.updateValue(7 as AnyObject, forKey: kDMKillStreaks7Key)
		}
		if 9 != nil {
			dictionary.updateValue(9 as AnyObject, forKey: kDMKillStreaks9Key)
		}
		if 5 != nil {
			dictionary.updateValue(5 as AnyObject, forKey: kDMKillStreaks5Key)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.8 = aDecoder.decodeObjectForKey(kDMKillStreaks8Key) as? Int
		self.6 = aDecoder.decodeObjectForKey(kDMKillStreaks6Key) as? Int
		self.4 = aDecoder.decodeObjectForKey(kDMKillStreaks4Key) as? Int
		self.3 = aDecoder.decodeObjectForKey(kDMKillStreaks3Key) as? Int
		self.7 = aDecoder.decodeObjectForKey(kDMKillStreaks7Key) as? Int
		self.9 = aDecoder.decodeObjectForKey(kDMKillStreaks9Key) as? Int
		self.5 = aDecoder.decodeObjectForKey(kDMKillStreaks5Key) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encode(8, forKey: kDMKillStreaks8Key)
		aCoder.encode(6, forKey: kDMKillStreaks6Key)
		aCoder.encode(4, forKey: kDMKillStreaks4Key)
		aCoder.encode(3, forKey: kDMKillStreaks3Key)
		aCoder.encode(7, forKey: kDMKillStreaks7Key)
		aCoder.encode(9, forKey: kDMKillStreaks9Key)
		aCoder.encode(5, forKey: kDMKillStreaks5Key)

    }

}
