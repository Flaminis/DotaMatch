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


open class DMResultHero: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMResultHeroesKey: String = "heroes"
	internal let kDMResultStatusKey: String = "status"
	internal let kDMResultCountKey: String = "count"


    // MARK: Properties
	open var heroes: [DMHeroes]?
	open var status: Int?
	open var count: Int?


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
		heroes = []
		if let items = json[kDMResultHeroesKey].array {
			for item in items {
				heroes?.append(DMHeroes(json: item))
			}
		} else {
			heroes = nil
		}
		status = json[kDMResultStatusKey].int
		count = json[kDMResultCountKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if heroes?.count > 0 {
			var temp: [AnyObject] = []
			for item in heroes! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMResultHeroesKey)
		}
		if status != nil {
			dictionary.updateValue(status! as AnyObject, forKey: kDMResultStatusKey)
		}
		if count != nil {
			dictionary.updateValue(count! as AnyObject, forKey: kDMResultCountKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.heroes = aDecoder.decodeObject(forKey: kDMResultHeroesKey) as? [DMHeroes]
		self.status = aDecoder.decodeObject(forKey: kDMResultStatusKey) as? Int
		self.count = aDecoder.decodeObject(forKey: kDMResultCountKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(heroes, forKey: kDMResultHeroesKey)
		aCoder.encode(status, forKey: kDMResultStatusKey)
		aCoder.encode(count, forKey: kDMResultCountKey)

    }

}
