//
//  DMHeroHealingPerMin.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMHeroHealingPerMin: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMHeroHealingPerMinPctKey: String = "pct"
	internal let kDMHeroHealingPerMinRawKey: String = "raw"


    // MARK: Properties
	open var pct: Float?
	open var raw: Int?


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
		pct = json[kDMHeroHealingPerMinPctKey].float
		raw = json[kDMHeroHealingPerMinRawKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if pct != nil {
			dictionary.updateValue(pct! as AnyObject, forKey: kDMHeroHealingPerMinPctKey)
		}
		if raw != nil {
			dictionary.updateValue(raw! as AnyObject, forKey: kDMHeroHealingPerMinRawKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.pct = aDecoder.decodeObject(forKey: kDMHeroHealingPerMinPctKey) as? Float
		self.raw = aDecoder.decodeObject(forKey: kDMHeroHealingPerMinRawKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(pct, forKey: kDMHeroHealingPerMinPctKey)
		aCoder.encode(raw, forKey: kDMHeroHealingPerMinRawKey)

    }

}
