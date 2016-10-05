//
//  DMItems.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMItems: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMItemsNameKey: String = "name"
	internal let kDMItemsCostKey: String = "cost"
	internal let kDMItemsInternalIdentifierKey: String = "id"
	internal let kDMItemsSecretShopKey: String = "secret_shop"
	internal let kDMItemsRecipeKey: String = "recipe"
	internal let kDMItemsSideShopKey: String = "side_shop"


    // MARK: Properties
	open var name: String?
	open var cost: Int?
	open var internalIdentifier: Int?
	open var secretShop: Int?
	open var recipe: Int?
	open var sideShop: Int?
    open var imageUrl: String?


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
		name = json[kDMItemsNameKey].string
		cost = json[kDMItemsCostKey].int
		internalIdentifier = json[kDMItemsInternalIdentifierKey].int
		secretShop = json[kDMItemsSecretShopKey].int
		recipe = json[kDMItemsRecipeKey].int
		sideShop = json[kDMItemsSideShopKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if name != nil {
			dictionary.updateValue(name! as AnyObject, forKey: kDMItemsNameKey)
		}
		if cost != nil {
			dictionary.updateValue(cost! as AnyObject, forKey: kDMItemsCostKey)
		}
		if internalIdentifier != nil {
			dictionary.updateValue(internalIdentifier! as AnyObject, forKey: kDMItemsInternalIdentifierKey)
		}
		if secretShop != nil {
			dictionary.updateValue(secretShop! as AnyObject, forKey: kDMItemsSecretShopKey)
		}
		if recipe != nil {
			dictionary.updateValue(recipe! as AnyObject, forKey: kDMItemsRecipeKey)
		}
		if sideShop != nil {
			dictionary.updateValue(sideShop! as AnyObject, forKey: kDMItemsSideShopKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.name = aDecoder.decodeObject(forKey: kDMItemsNameKey) as? String
		self.cost = aDecoder.decodeObject(forKey: kDMItemsCostKey) as? Int
		self.internalIdentifier = aDecoder.decodeObject(forKey: kDMItemsInternalIdentifierKey) as? Int
		self.secretShop = aDecoder.decodeObject(forKey: kDMItemsSecretShopKey) as? Int
		self.recipe = aDecoder.decodeObject(forKey: kDMItemsRecipeKey) as? Int
		self.sideShop = aDecoder.decodeObject(forKey: kDMItemsSideShopKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(name, forKey: kDMItemsNameKey)
		aCoder.encode(cost, forKey: kDMItemsCostKey)
		aCoder.encode(internalIdentifier, forKey: kDMItemsInternalIdentifierKey)
		aCoder.encode(secretShop, forKey: kDMItemsSecretShopKey)
		aCoder.encode(recipe, forKey: kDMItemsRecipeKey)
		aCoder.encode(sideShop, forKey: kDMItemsSideShopKey)

    }

}
