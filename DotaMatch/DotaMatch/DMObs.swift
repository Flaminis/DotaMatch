//
//  DMObs.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMObs: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMObsYKey: String = "y"
	internal let kDMObsXKey: String = "x"
	internal let kDMObsValueKey: String = "value"


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
		y = json[kDMObsYKey].int
		x = json[kDMObsXKey].int
		value = json[kDMObsValueKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if y != nil {
			dictionary.updateValue(y! as AnyObject, forKey: kDMObsYKey)
		}
		if x != nil {
			dictionary.updateValue(x! as AnyObject, forKey: kDMObsXKey)
		}
		if value != nil {
			dictionary.updateValue(value! as AnyObject, forKey: kDMObsValueKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.y = aDecoder.decodeObject(forKey: kDMObsYKey) as? Int
		self.x = aDecoder.decodeObject(forKey: kDMObsXKey) as? Int
		self.value = aDecoder.decodeObject(forKey: kDMObsValueKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(y, forKey: kDMObsYKey)
		aCoder.encode(x, forKey: kDMObsXKey)
		aCoder.encode(value, forKey: kDMObsValueKey)

    }

}
