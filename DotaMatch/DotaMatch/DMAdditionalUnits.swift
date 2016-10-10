//
//  DMAdditionalUnits.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMAdditionalUnits: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMAdditionalUnitsItem3Key: String = "item_3"
	internal let kDMAdditionalUnitsItem2Key: String = "item_2"
	internal let kDMAdditionalUnitsItem4Key: String = "item_4"
	internal let kDMAdditionalUnitsItem5Key: String = "item_5"
	internal let kDMAdditionalUnitsItem1Key: String = "item_1"
	internal let kDMAdditionalUnitsUnitnameKey: String = "unitname"
	internal let kDMAdditionalUnitsItem0Key: String = "item_0"


    // MARK: Properties
	open var item3: Int?
	open var item2: Int?
	open var item4: Int?
	open var item5: Int?
	open var item1: Int?
	open var unitname: String?
	open var item0: Int?


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
		item3 = json[kDMAdditionalUnitsItem3Key].int
		item2 = json[kDMAdditionalUnitsItem2Key].int
		item4 = json[kDMAdditionalUnitsItem4Key].int
		item5 = json[kDMAdditionalUnitsItem5Key].int
		item1 = json[kDMAdditionalUnitsItem1Key].int
		unitname = json[kDMAdditionalUnitsUnitnameKey].string
		item0 = json[kDMAdditionalUnitsItem0Key].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if item3 != nil {
			dictionary.updateValue(item3! as AnyObject, forKey: kDMAdditionalUnitsItem3Key)
		}
		if item2 != nil {
			dictionary.updateValue(item2! as AnyObject, forKey: kDMAdditionalUnitsItem2Key)
		}
		if item4 != nil {
			dictionary.updateValue(item4! as AnyObject, forKey: kDMAdditionalUnitsItem4Key)
		}
		if item5 != nil {
			dictionary.updateValue(item5! as AnyObject, forKey: kDMAdditionalUnitsItem5Key)
		}
		if item1 != nil {
			dictionary.updateValue(item1! as AnyObject, forKey: kDMAdditionalUnitsItem1Key)
		}
		if unitname != nil {
			dictionary.updateValue(unitname! as AnyObject, forKey: kDMAdditionalUnitsUnitnameKey)
		}
		if item0 != nil {
			dictionary.updateValue(item0! as AnyObject, forKey: kDMAdditionalUnitsItem0Key)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.item3 = aDecoder.decodeObject(forKey: kDMAdditionalUnitsItem3Key) as? Int
		self.item2 = aDecoder.decodeObject(forKey: kDMAdditionalUnitsItem2Key) as? Int
		self.item4 = aDecoder.decodeObject(forKey: kDMAdditionalUnitsItem4Key) as? Int
		self.item5 = aDecoder.decodeObject(forKey: kDMAdditionalUnitsItem5Key) as? Int
		self.item1 = aDecoder.decodeObject(forKey: kDMAdditionalUnitsItem1Key) as? Int
		self.unitname = aDecoder.decodeObject(forKey: kDMAdditionalUnitsUnitnameKey) as? String
		self.item0 = aDecoder.decodeObject(forKey: kDMAdditionalUnitsItem0Key) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(item3, forKey: kDMAdditionalUnitsItem3Key)
		aCoder.encode(item2, forKey: kDMAdditionalUnitsItem2Key)
		aCoder.encode(item4, forKey: kDMAdditionalUnitsItem4Key)
		aCoder.encode(item5, forKey: kDMAdditionalUnitsItem5Key)
		aCoder.encode(item1, forKey: kDMAdditionalUnitsItem1Key)
		aCoder.encode(unitname, forKey: kDMAdditionalUnitsUnitnameKey)
		aCoder.encode(item0, forKey: kDMAdditionalUnitsItem0Key)

    }

}
