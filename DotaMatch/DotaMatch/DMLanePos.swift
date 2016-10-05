//
//  DMLanePos.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMLanePos: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMLanePosYKey: String = "y"
	internal let kDMLanePosXKey: String = "x"
	internal let kDMLanePosValueKey: String = "value"


    // MARK: Properties
	open var y: Int?
	open var x: Int?
	open var value: Int?


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
		y = json[kDMLanePosYKey].int
		x = json[kDMLanePosXKey].int
		value = json[kDMLanePosValueKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if y != nil {
			dictionary.updateValue(y! as AnyObject, forKey: kDMLanePosYKey)
		}
		if x != nil {
			dictionary.updateValue(x! as AnyObject, forKey: kDMLanePosXKey)
		}
		if value != nil {
			dictionary.updateValue(value! as AnyObject, forKey: kDMLanePosValueKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.y = aDecoder.decodeObject(forKey: kDMLanePosYKey) as? Int
		self.x = aDecoder.decodeObject(forKey: kDMLanePosXKey) as? Int
		self.value = aDecoder.decodeObject(forKey: kDMLanePosValueKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(y, forKey: kDMLanePosYKey)
		aCoder.encode(x, forKey: kDMLanePosXKey)
		aCoder.encode(value, forKey: kDMLanePosValueKey)

    }

}
