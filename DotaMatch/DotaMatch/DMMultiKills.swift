//
//  DMMultiKills.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMMultiKills: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMMultiKills4Key: String = "4"
	internal let kDMMultiKills2Key: String = "2"
	internal let kDMMultiKills3Key: String = "3"


    // MARK: Properties
	public var 4: Int?
	public var 2: Int?
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
		4 = json[kDMMultiKills4Key].int
		2 = json[kDMMultiKills2Key].int
		3 = json[kDMMultiKills3Key].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if 4 != nil {
			dictionary.updateValue(4 as AnyObject, forKey: kDMMultiKills4Key)
		}
		if 2 != nil {
			dictionary.updateValue(2 as AnyObject, forKey: kDMMultiKills2Key)
		}
		if 3 != nil {
			dictionary.updateValue(3 as AnyObject, forKey: kDMMultiKills3Key)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.4 = aDecoder.decodeObjectForKey(kDMMultiKills4Key) as? Int
		self.2 = aDecoder.decodeObjectForKey(kDMMultiKills2Key) as? Int
		self.3 = aDecoder.decodeObjectForKey(kDMMultiKills3Key) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encode(4, forKey: kDMMultiKills4Key)
		aCoder.encode(2, forKey: kDMMultiKills2Key)
		aCoder.encode(3, forKey: kDMMultiKills3Key)

    }

}
