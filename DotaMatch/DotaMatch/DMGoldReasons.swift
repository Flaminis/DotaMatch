//
//  DMGoldReasons.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMGoldReasons: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMGoldReasons2Key: String = "2"
	internal let kDMGoldReasons1Key: String = "1"
	internal let kDMGoldReasons12Key: String = "12"
	internal let kDMGoldReasons11Key: String = "11"
	internal let kDMGoldReasons6Key: String = "6"
	internal let kDMGoldReasons14Key: String = "14"
	internal let kDMGoldReasons13Key: String = "13"
	internal let kDMGoldReasons0Key: String = "0"
	internal let kDMGoldReasons15Key: String = "15"


    // MARK: Properties
	public var 2: Int?
	public var 1: Int?
	public var 12: Int?
	public var 11: Int?
	public var 6: Int?
	public var 14: Int?
	public var 13: Int?
	public var 0: Int?
	public var 15: Int?


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
		2 = json[kDMGoldReasons2Key].int
		1 = json[kDMGoldReasons1Key].int
		12 = json[kDMGoldReasons12Key].int
		11 = json[kDMGoldReasons11Key].int
		6 = json[kDMGoldReasons6Key].int
		14 = json[kDMGoldReasons14Key].int
		13 = json[kDMGoldReasons13Key].int
		0 = json[kDMGoldReasons0Key].int
		15 = json[kDMGoldReasons15Key].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if 2 != nil {
			dictionary.updateValue(2 as AnyObject, forKey: kDMGoldReasons2Key)
		}
		if 1 != nil {
			dictionary.updateValue(1 as AnyObject, forKey: kDMGoldReasons1Key)
		}
		if 12 != nil {
			dictionary.updateValue(12 as AnyObject, forKey: kDMGoldReasons12Key)
		}
		if 11 != nil {
			dictionary.updateValue(11 as AnyObject, forKey: kDMGoldReasons11Key)
		}
		if 6 != nil {
			dictionary.updateValue(6 as AnyObject, forKey: kDMGoldReasons6Key)
		}
		if 14 != nil {
			dictionary.updateValue(14 as AnyObject, forKey: kDMGoldReasons14Key)
		}
		if 13 != nil {
			dictionary.updateValue(13 as AnyObject, forKey: kDMGoldReasons13Key)
		}
		if 0 != nil {
			dictionary.updateValue(0 as AnyObject, forKey: kDMGoldReasons0Key)
		}
		if 15 != nil {
			dictionary.updateValue(15 as AnyObject, forKey: kDMGoldReasons15Key)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.2 = aDecoder.decodeObjectForKey(kDMGoldReasons2Key) as? Int
		self.1 = aDecoder.decodeObjectForKey(kDMGoldReasons1Key) as? Int
		self.12 = aDecoder.decodeObjectForKey(kDMGoldReasons12Key) as? Int
		self.11 = aDecoder.decodeObjectForKey(kDMGoldReasons11Key) as? Int
		self.6 = aDecoder.decodeObjectForKey(kDMGoldReasons6Key) as? Int
		self.14 = aDecoder.decodeObjectForKey(kDMGoldReasons14Key) as? Int
		self.13 = aDecoder.decodeObjectForKey(kDMGoldReasons13Key) as? Int
		self.0 = aDecoder.decodeObjectForKey(kDMGoldReasons0Key) as? Int
		self.15 = aDecoder.decodeObjectForKey(kDMGoldReasons15Key) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encode(2, forKey: kDMGoldReasons2Key)
		aCoder.encode(1, forKey: kDMGoldReasons1Key)
		aCoder.encode(12, forKey: kDMGoldReasons12Key)
		aCoder.encode(11, forKey: kDMGoldReasons11Key)
		aCoder.encode(6, forKey: kDMGoldReasons6Key)
		aCoder.encode(14, forKey: kDMGoldReasons14Key)
		aCoder.encode(13, forKey: kDMGoldReasons13Key)
		aCoder.encode(0, forKey: kDMGoldReasons0Key)
		aCoder.encode(15, forKey: kDMGoldReasons15Key)

    }

}
