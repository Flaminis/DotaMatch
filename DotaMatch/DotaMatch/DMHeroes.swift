//
//  DMHeroes.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMHeroes: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMHeroesInternalIdentifierKey: String = "id"
	internal let kDMHeroesLocalizedNameKey: String = "localized_name"
	internal let kDMHeroesNameKey: String = "name"


    // MARK: Properties
	open var internalIdentifier: Int?
	open var localizedName: String?
	open var name: String?
    open var smallUrl: String?
    open var largeUrl: String?
    open var portraitUrl: String?


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
		internalIdentifier = json[kDMHeroesInternalIdentifierKey].int
		localizedName = json[kDMHeroesLocalizedNameKey].string
		name = json[kDMHeroesNameKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if internalIdentifier != nil {
			dictionary.updateValue(internalIdentifier! as AnyObject, forKey: kDMHeroesInternalIdentifierKey)
		}
		if localizedName != nil {
			dictionary.updateValue(localizedName! as AnyObject, forKey: kDMHeroesLocalizedNameKey)
		}
		if name != nil {
			dictionary.updateValue(name! as AnyObject, forKey: kDMHeroesNameKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.internalIdentifier = aDecoder.decodeObject(forKey: kDMHeroesInternalIdentifierKey) as? Int
		self.localizedName = aDecoder.decodeObject(forKey: kDMHeroesLocalizedNameKey) as? String
		self.name = aDecoder.decodeObject(forKey: kDMHeroesNameKey) as? String

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(internalIdentifier, forKey: kDMHeroesInternalIdentifierKey)
		aCoder.encode(localizedName, forKey: kDMHeroesLocalizedNameKey)
		aCoder.encode(name, forKey: kDMHeroesNameKey)

    }

}
