//
//  DMLifeState.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMLifeState: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMLifeState0Key: String = "0"
	internal let kDMLifeState1Key: String = "1"
	internal let kDMLifeState2Key: String = "2"


    // MARK: Properties
	public var 0: Int?
	public var 1: Int?
	public var 2: Int?


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
		0 = json[kDMLifeState0Key].int
		1 = json[kDMLifeState1Key].int
		2 = json[kDMLifeState2Key].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if 0 != nil {
			dictionary.updateValue(0 as AnyObject, forKey: kDMLifeState0Key)
		}
		if 1 != nil {
			dictionary.updateValue(1 as AnyObject, forKey: kDMLifeState1Key)
		}
		if 2 != nil {
			dictionary.updateValue(2 as AnyObject, forKey: kDMLifeState2Key)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.0 = aDecoder.decodeObjectForKey(kDMLifeState0Key) as? Int
		self.1 = aDecoder.decodeObjectForKey(kDMLifeState1Key) as? Int
		self.2 = aDecoder.decodeObjectForKey(kDMLifeState2Key) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encode(0, forKey: kDMLifeState0Key)
		aCoder.encode(1, forKey: kDMLifeState1Key)
		aCoder.encode(2, forKey: kDMLifeState2Key)

    }

}
