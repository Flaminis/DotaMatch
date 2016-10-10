//
//  DMActions.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMActions: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMActions17Key: String = "17"
	internal let kDMActions12Key: String = "12"
	internal let kDMActions20Key: String = "20"
	internal let kDMActions23Key: String = "23"
	internal let kDMActions19Key: String = "19"
	internal let kDMActions9Key: String = "9"
	internal let kDMActions13Key: String = "13"
	internal let kDMActions8Key: String = "8"
	internal let kDMActions6Key: String = "6"
	internal let kDMActions27Key: String = "27"
	internal let kDMActions7Key: String = "7"
	internal let kDMActions25Key: String = "25"
	internal let kDMActions24Key: String = "24"
	internal let kDMActions14Key: String = "14"
	internal let kDMActions16Key: String = "16"
	internal let kDMActions18Key: String = "18"
	internal let kDMActions15Key: String = "15"
	internal let kDMActions33Key: String = "33"
	internal let kDMActions2Key: String = "2"
	internal let kDMActions11Key: String = "11"
	internal let kDMActions1Key: String = "1"
	internal let kDMActions3Key: String = "3"
	internal let kDMActions4Key: String = "4"
	internal let kDMActions21Key: String = "21"
	internal let kDMActions10Key: String = "10"
	internal let kDMActions5Key: String = "5"


    // MARK: Properties
	public var 17: Int?
	public var 12: Int?
	public var 20: Int?
	public var 23: Int?
	public var 19: Int?
	public var 9: Int?
	public var 13: Int?
	public var 8: Int?
	public var 6: Int?
	public var 27: Int?
	public var 7: Int?
	public var 25: Int?
	public var 24: Int?
	public var 14: Int?
	public var 16: Int?
	public var 18: Int?
	public var 15: Int?
	public var 33: Int?
	public var 2: Int?
	public var 11: Int?
	public var 1: Int?
	public var 3: Int?
	public var 4: Int?
	public var 21: Int?
	public var 10: Int?
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
		17 = json[kDMActions17Key].int
		12 = json[kDMActions12Key].int
		20 = json[kDMActions20Key].int
		23 = json[kDMActions23Key].int
		19 = json[kDMActions19Key].int
		9 = json[kDMActions9Key].int
		13 = json[kDMActions13Key].int
		8 = json[kDMActions8Key].int
		6 = json[kDMActions6Key].int
		27 = json[kDMActions27Key].int
		7 = json[kDMActions7Key].int
		25 = json[kDMActions25Key].int
		24 = json[kDMActions24Key].int
		14 = json[kDMActions14Key].int
		16 = json[kDMActions16Key].int
		18 = json[kDMActions18Key].int
		15 = json[kDMActions15Key].int
		33 = json[kDMActions33Key].int
		2 = json[kDMActions2Key].int
		11 = json[kDMActions11Key].int
		1 = json[kDMActions1Key].int
		3 = json[kDMActions3Key].int
		4 = json[kDMActions4Key].int
		21 = json[kDMActions21Key].int
		10 = json[kDMActions10Key].int
		5 = json[kDMActions5Key].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if 17 != nil {
			dictionary.updateValue(17 as AnyObject, forKey: kDMActions17Key)
		}
		if 12 != nil {
			dictionary.updateValue(12 as AnyObject, forKey: kDMActions12Key)
		}
		if 20 != nil {
			dictionary.updateValue(20 as AnyObject, forKey: kDMActions20Key)
		}
		if 23 != nil {
			dictionary.updateValue(23 as AnyObject, forKey: kDMActions23Key)
		}
		if 19 != nil {
			dictionary.updateValue(19 as AnyObject, forKey: kDMActions19Key)
		}
		if 9 != nil {
			dictionary.updateValue(9 as AnyObject, forKey: kDMActions9Key)
		}
		if 13 != nil {
			dictionary.updateValue(13 as AnyObject, forKey: kDMActions13Key)
		}
		if 8 != nil {
			dictionary.updateValue(8 as AnyObject, forKey: kDMActions8Key)
		}
		if 6 != nil {
			dictionary.updateValue(6 as AnyObject, forKey: kDMActions6Key)
		}
		if 27 != nil {
			dictionary.updateValue(27 as AnyObject, forKey: kDMActions27Key)
		}
		if 7 != nil {
			dictionary.updateValue(7 as AnyObject, forKey: kDMActions7Key)
		}
		if 25 != nil {
			dictionary.updateValue(25 as AnyObject, forKey: kDMActions25Key)
		}
		if 24 != nil {
			dictionary.updateValue(24 as AnyObject, forKey: kDMActions24Key)
		}
		if 14 != nil {
			dictionary.updateValue(14 as AnyObject, forKey: kDMActions14Key)
		}
		if 16 != nil {
			dictionary.updateValue(16 as AnyObject, forKey: kDMActions16Key)
		}
		if 18 != nil {
			dictionary.updateValue(18 as AnyObject, forKey: kDMActions18Key)
		}
		if 15 != nil {
			dictionary.updateValue(15 as AnyObject, forKey: kDMActions15Key)
		}
		if 33 != nil {
			dictionary.updateValue(33 as AnyObject, forKey: kDMActions33Key)
		}
		if 2 != nil {
			dictionary.updateValue(2 as AnyObject, forKey: kDMActions2Key)
		}
		if 11 != nil {
			dictionary.updateValue(11 as AnyObject, forKey: kDMActions11Key)
		}
		if 1 != nil {
			dictionary.updateValue(1 as AnyObject, forKey: kDMActions1Key)
		}
		if 3 != nil {
			dictionary.updateValue(3 as AnyObject, forKey: kDMActions3Key)
		}
		if 4 != nil {
			dictionary.updateValue(4 as AnyObject, forKey: kDMActions4Key)
		}
		if 21 != nil {
			dictionary.updateValue(21 as AnyObject, forKey: kDMActions21Key)
		}
		if 10 != nil {
			dictionary.updateValue(10 as AnyObject, forKey: kDMActions10Key)
		}
		if 5 != nil {
			dictionary.updateValue(5 as AnyObject, forKey: kDMActions5Key)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.17 = aDecoder.decodeObjectForKey(kDMActions17Key) as? Int
		self.12 = aDecoder.decodeObjectForKey(kDMActions12Key) as? Int
		self.20 = aDecoder.decodeObjectForKey(kDMActions20Key) as? Int
		self.23 = aDecoder.decodeObjectForKey(kDMActions23Key) as? Int
		self.19 = aDecoder.decodeObjectForKey(kDMActions19Key) as? Int
		self.9 = aDecoder.decodeObjectForKey(kDMActions9Key) as? Int
		self.13 = aDecoder.decodeObjectForKey(kDMActions13Key) as? Int
		self.8 = aDecoder.decodeObjectForKey(kDMActions8Key) as? Int
		self.6 = aDecoder.decodeObjectForKey(kDMActions6Key) as? Int
		self.27 = aDecoder.decodeObjectForKey(kDMActions27Key) as? Int
		self.7 = aDecoder.decodeObjectForKey(kDMActions7Key) as? Int
		self.25 = aDecoder.decodeObjectForKey(kDMActions25Key) as? Int
		self.24 = aDecoder.decodeObjectForKey(kDMActions24Key) as? Int
		self.14 = aDecoder.decodeObjectForKey(kDMActions14Key) as? Int
		self.16 = aDecoder.decodeObjectForKey(kDMActions16Key) as? Int
		self.18 = aDecoder.decodeObjectForKey(kDMActions18Key) as? Int
		self.15 = aDecoder.decodeObjectForKey(kDMActions15Key) as? Int
		self.33 = aDecoder.decodeObjectForKey(kDMActions33Key) as? Int
		self.2 = aDecoder.decodeObjectForKey(kDMActions2Key) as? Int
		self.11 = aDecoder.decodeObjectForKey(kDMActions11Key) as? Int
		self.1 = aDecoder.decodeObjectForKey(kDMActions1Key) as? Int
		self.3 = aDecoder.decodeObjectForKey(kDMActions3Key) as? Int
		self.4 = aDecoder.decodeObjectForKey(kDMActions4Key) as? Int
		self.21 = aDecoder.decodeObjectForKey(kDMActions21Key) as? Int
		self.10 = aDecoder.decodeObjectForKey(kDMActions10Key) as? Int
		self.5 = aDecoder.decodeObjectForKey(kDMActions5Key) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encode(17, forKey: kDMActions17Key)
		aCoder.encode(12, forKey: kDMActions12Key)
		aCoder.encode(20, forKey: kDMActions20Key)
		aCoder.encode(23, forKey: kDMActions23Key)
		aCoder.encode(19, forKey: kDMActions19Key)
		aCoder.encode(9, forKey: kDMActions9Key)
		aCoder.encode(13, forKey: kDMActions13Key)
		aCoder.encode(8, forKey: kDMActions8Key)
		aCoder.encode(6, forKey: kDMActions6Key)
		aCoder.encode(27, forKey: kDMActions27Key)
		aCoder.encode(7, forKey: kDMActions7Key)
		aCoder.encode(25, forKey: kDMActions25Key)
		aCoder.encode(24, forKey: kDMActions24Key)
		aCoder.encode(14, forKey: kDMActions14Key)
		aCoder.encode(16, forKey: kDMActions16Key)
		aCoder.encode(18, forKey: kDMActions18Key)
		aCoder.encode(15, forKey: kDMActions15Key)
		aCoder.encode(33, forKey: kDMActions33Key)
		aCoder.encode(2, forKey: kDMActions2Key)
		aCoder.encode(11, forKey: kDMActions11Key)
		aCoder.encode(1, forKey: kDMActions1Key)
		aCoder.encode(3, forKey: kDMActions3Key)
		aCoder.encode(4, forKey: kDMActions4Key)
		aCoder.encode(21, forKey: kDMActions21Key)
		aCoder.encode(10, forKey: kDMActions10Key)
		aCoder.encode(5, forKey: kDMActions5Key)

    }

}
