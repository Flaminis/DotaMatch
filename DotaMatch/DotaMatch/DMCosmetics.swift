//
//  DMCosmetics.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMCosmetics: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMCosmetics5217Key: String = "5217"
	internal let kDMCosmetics6111Key: String = "6111"
	internal let kDMCosmetics5694Key: String = "5694"
	internal let kDMCosmetics6109Key: String = "6109"
	internal let kDMCosmetics4160Key: String = "4160"
	internal let kDMCosmetics10195Key: String = "10195"
	internal let kDMCosmetics5409Key: String = "5409"
	internal let kDMCosmetics5765Key: String = "5765"
	internal let kDMCosmetics6108Key: String = "6108"
	internal let kDMCosmetics5804Key: String = "5804"
	internal let kDMCosmetics7279Key: String = "7279"
	internal let kDMCosmetics6110Key: String = "6110"
	internal let kDMCosmetics6107Key: String = "6107"
	internal let kDMCosmetics7188Key: String = "7188"
	internal let kDMCosmetics8259Key: String = "8259"
	internal let kDMCosmetics11384Key: String = "11384"
	internal let kDMCosmetics7564Key: String = "7564"
	internal let kDMCosmetics8072Key: String = "8072"
	internal let kDMCosmetics6409Key: String = "6409"


    // MARK: Properties
	public var 5217: Int?
	public var 6111: Int?
	public var 5694: Int?
	public var 6109: Int?
	public var 4160: Int?
	public var 10195: Int?
	public var 5409: Int?
	public var 5765: Int?
	public var 6108: Int?
	public var 5804: Int?
	public var 7279: Int?
	public var 6110: Int?
	public var 6107: Int?
	public var 7188: Int?
	public var 8259: Int?
	public var 11384: Int?
	public var 7564: Int?
	public var 8072: Int?
	public var 6409: Int?


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
		5217 = json[kDMCosmetics5217Key].int
		6111 = json[kDMCosmetics6111Key].int
		5694 = json[kDMCosmetics5694Key].int
		6109 = json[kDMCosmetics6109Key].int
		4160 = json[kDMCosmetics4160Key].int
		10195 = json[kDMCosmetics10195Key].int
		5409 = json[kDMCosmetics5409Key].int
		5765 = json[kDMCosmetics5765Key].int
		6108 = json[kDMCosmetics6108Key].int
		5804 = json[kDMCosmetics5804Key].int
		7279 = json[kDMCosmetics7279Key].int
		6110 = json[kDMCosmetics6110Key].int
		6107 = json[kDMCosmetics6107Key].int
		7188 = json[kDMCosmetics7188Key].int
		8259 = json[kDMCosmetics8259Key].int
		11384 = json[kDMCosmetics11384Key].int
		7564 = json[kDMCosmetics7564Key].int
		8072 = json[kDMCosmetics8072Key].int
		6409 = json[kDMCosmetics6409Key].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if 5217 != nil {
			dictionary.updateValue(5217 as AnyObject, forKey: kDMCosmetics5217Key)
		}
		if 6111 != nil {
			dictionary.updateValue(6111 as AnyObject, forKey: kDMCosmetics6111Key)
		}
		if 5694 != nil {
			dictionary.updateValue(5694 as AnyObject, forKey: kDMCosmetics5694Key)
		}
		if 6109 != nil {
			dictionary.updateValue(6109 as AnyObject, forKey: kDMCosmetics6109Key)
		}
		if 4160 != nil {
			dictionary.updateValue(4160 as AnyObject, forKey: kDMCosmetics4160Key)
		}
		if 10195 != nil {
			dictionary.updateValue(10195 as AnyObject, forKey: kDMCosmetics10195Key)
		}
		if 5409 != nil {
			dictionary.updateValue(5409 as AnyObject, forKey: kDMCosmetics5409Key)
		}
		if 5765 != nil {
			dictionary.updateValue(5765 as AnyObject, forKey: kDMCosmetics5765Key)
		}
		if 6108 != nil {
			dictionary.updateValue(6108 as AnyObject, forKey: kDMCosmetics6108Key)
		}
		if 5804 != nil {
			dictionary.updateValue(5804 as AnyObject, forKey: kDMCosmetics5804Key)
		}
		if 7279 != nil {
			dictionary.updateValue(7279 as AnyObject, forKey: kDMCosmetics7279Key)
		}
		if 6110 != nil {
			dictionary.updateValue(6110 as AnyObject, forKey: kDMCosmetics6110Key)
		}
		if 6107 != nil {
			dictionary.updateValue(6107 as AnyObject, forKey: kDMCosmetics6107Key)
		}
		if 7188 != nil {
			dictionary.updateValue(7188 as AnyObject, forKey: kDMCosmetics7188Key)
		}
		if 8259 != nil {
			dictionary.updateValue(8259 as AnyObject, forKey: kDMCosmetics8259Key)
		}
		if 11384 != nil {
			dictionary.updateValue(11384 as AnyObject, forKey: kDMCosmetics11384Key)
		}
		if 7564 != nil {
			dictionary.updateValue(7564 as AnyObject, forKey: kDMCosmetics7564Key)
		}
		if 8072 != nil {
			dictionary.updateValue(8072 as AnyObject, forKey: kDMCosmetics8072Key)
		}
		if 6409 != nil {
			dictionary.updateValue(6409 as AnyObject, forKey: kDMCosmetics6409Key)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.5217 = aDecoder.decodeObjectForKey(kDMCosmetics5217Key) as? Int
		self.6111 = aDecoder.decodeObjectForKey(kDMCosmetics6111Key) as? Int
		self.5694 = aDecoder.decodeObjectForKey(kDMCosmetics5694Key) as? Int
		self.6109 = aDecoder.decodeObjectForKey(kDMCosmetics6109Key) as? Int
		self.4160 = aDecoder.decodeObjectForKey(kDMCosmetics4160Key) as? Int
		self.10195 = aDecoder.decodeObjectForKey(kDMCosmetics10195Key) as? Int
		self.5409 = aDecoder.decodeObjectForKey(kDMCosmetics5409Key) as? Int
		self.5765 = aDecoder.decodeObjectForKey(kDMCosmetics5765Key) as? Int
		self.6108 = aDecoder.decodeObjectForKey(kDMCosmetics6108Key) as? Int
		self.5804 = aDecoder.decodeObjectForKey(kDMCosmetics5804Key) as? Int
		self.7279 = aDecoder.decodeObjectForKey(kDMCosmetics7279Key) as? Int
		self.6110 = aDecoder.decodeObjectForKey(kDMCosmetics6110Key) as? Int
		self.6107 = aDecoder.decodeObjectForKey(kDMCosmetics6107Key) as? Int
		self.7188 = aDecoder.decodeObjectForKey(kDMCosmetics7188Key) as? Int
		self.8259 = aDecoder.decodeObjectForKey(kDMCosmetics8259Key) as? Int
		self.11384 = aDecoder.decodeObjectForKey(kDMCosmetics11384Key) as? Int
		self.7564 = aDecoder.decodeObjectForKey(kDMCosmetics7564Key) as? Int
		self.8072 = aDecoder.decodeObjectForKey(kDMCosmetics8072Key) as? Int
		self.6409 = aDecoder.decodeObjectForKey(kDMCosmetics6409Key) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encode(5217, forKey: kDMCosmetics5217Key)
		aCoder.encode(6111, forKey: kDMCosmetics6111Key)
		aCoder.encode(5694, forKey: kDMCosmetics5694Key)
		aCoder.encode(6109, forKey: kDMCosmetics6109Key)
		aCoder.encode(4160, forKey: kDMCosmetics4160Key)
		aCoder.encode(10195, forKey: kDMCosmetics10195Key)
		aCoder.encode(5409, forKey: kDMCosmetics5409Key)
		aCoder.encode(5765, forKey: kDMCosmetics5765Key)
		aCoder.encode(6108, forKey: kDMCosmetics6108Key)
		aCoder.encode(5804, forKey: kDMCosmetics5804Key)
		aCoder.encode(7279, forKey: kDMCosmetics7279Key)
		aCoder.encode(6110, forKey: kDMCosmetics6110Key)
		aCoder.encode(6107, forKey: kDMCosmetics6107Key)
		aCoder.encode(7188, forKey: kDMCosmetics7188Key)
		aCoder.encode(8259, forKey: kDMCosmetics8259Key)
		aCoder.encode(11384, forKey: kDMCosmetics11384Key)
		aCoder.encode(7564, forKey: kDMCosmetics7564Key)
		aCoder.encode(8072, forKey: kDMCosmetics8072Key)
		aCoder.encode(6409, forKey: kDMCosmetics6409Key)

    }

}
