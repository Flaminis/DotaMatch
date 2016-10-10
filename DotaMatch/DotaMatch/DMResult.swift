//
//  DMResult.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}


open class DMResult: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMResultStatusKey: String = "status"
	internal let kDMResultItemsKey: String = "items"


    // MARK: Properties
	open var status: Int?
	open var items: [DMItems]?


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
		status = json[kDMResultStatusKey].int
		items = []
		if let itemss = json[kDMResultItemsKey].array {
			for item in itemss {
				items?.append(DMItems(json: item))
			}
		} else {
			items = nil
		}

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if status != nil {
			dictionary.updateValue(status! as AnyObject, forKey: kDMResultStatusKey)
		}
		if items?.count > 0 {
			var temp: [AnyObject] = []
			for item in items! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMResultItemsKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.status = aDecoder.decodeObject(forKey: kDMResultStatusKey) as? Int
		self.items = aDecoder.decodeObject(forKey: kDMResultItemsKey) as? [DMItems]

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(status, forKey: kDMResultStatusKey)
		aCoder.encode(items, forKey: kDMResultItemsKey)

    }

}
