//
//  DMProfile.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMProfile: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMProfileCheeseKey: String = "cheese"
	internal let kDMProfileAvatarmediumKey: String = "avatarmedium"
	internal let kDMProfileLoccountrycodeKey: String = "loccountrycode"
	internal let kDMProfileProfileurlKey: String = "profileurl"
	internal let kDMProfileSteamidKey: String = "steamid"
	internal let kDMProfilePersonanameKey: String = "personaname"
	internal let kDMProfileAccountIdKey: String = "account_id"
	internal let kDMProfileAvatarKey: String = "avatar"
	internal let kDMProfileLastLoginKey: String = "last_login"
	internal let kDMProfileAvatarfullKey: String = "avatarfull"
	internal let kDMProfileNameKey: String = "name"


    // MARK: Properties
	open var cheese: Int?
	open var avatarmedium: String?
	open var loccountrycode: String?
	open var profileurl: String?
	open var steamid: String?
	open var personaname: String?
	open var accountId: Int?
	open var avatar: String?
	open var lastLogin: String?
	open var avatarfull: String?
//	public var name: DMName?


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
		cheese = json[kDMProfileCheeseKey].int
		avatarmedium = json[kDMProfileAvatarmediumKey].string
		loccountrycode = json[kDMProfileLoccountrycodeKey].string
		profileurl = json[kDMProfileProfileurlKey].string
		steamid = json[kDMProfileSteamidKey].string
		personaname = json[kDMProfilePersonanameKey].string
		accountId = json[kDMProfileAccountIdKey].int
		avatar = json[kDMProfileAvatarKey].string
		lastLogin = json[kDMProfileLastLoginKey].string
		avatarfull = json[kDMProfileAvatarfullKey].string
//		name = DMName(json: json[kDMProfileNameKey])

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if cheese != nil {
			dictionary.updateValue(cheese! as AnyObject, forKey: kDMProfileCheeseKey)
		}
		if avatarmedium != nil {
			dictionary.updateValue(avatarmedium! as AnyObject, forKey: kDMProfileAvatarmediumKey)
		}
		if loccountrycode != nil {
			dictionary.updateValue(loccountrycode! as AnyObject, forKey: kDMProfileLoccountrycodeKey)
		}
		if profileurl != nil {
			dictionary.updateValue(profileurl! as AnyObject, forKey: kDMProfileProfileurlKey)
		}
		if steamid != nil {
			dictionary.updateValue(steamid! as AnyObject, forKey: kDMProfileSteamidKey)
		}
		if personaname != nil {
			dictionary.updateValue(personaname! as AnyObject, forKey: kDMProfilePersonanameKey)
		}
		if accountId != nil {
			dictionary.updateValue(accountId! as AnyObject, forKey: kDMProfileAccountIdKey)
		}
		if avatar != nil {
			dictionary.updateValue(avatar! as AnyObject, forKey: kDMProfileAvatarKey)
		}
		if lastLogin != nil {
			dictionary.updateValue(lastLogin! as AnyObject, forKey: kDMProfileLastLoginKey)
		}
		if avatarfull != nil {
			dictionary.updateValue(avatarfull! as AnyObject, forKey: kDMProfileAvatarfullKey)
		}
//		if name != nil {
//			dictionary.updateValue(name!.dictionaryRepresentation(), forKey: kDMProfileNameKey)
//		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.cheese = aDecoder.decodeObject(forKey: kDMProfileCheeseKey) as? Int
		self.avatarmedium = aDecoder.decodeObject(forKey: kDMProfileAvatarmediumKey) as? String
		self.loccountrycode = aDecoder.decodeObject(forKey: kDMProfileLoccountrycodeKey) as? String
		self.profileurl = aDecoder.decodeObject(forKey: kDMProfileProfileurlKey) as? String
		self.steamid = aDecoder.decodeObject(forKey: kDMProfileSteamidKey) as? String
		self.personaname = aDecoder.decodeObject(forKey: kDMProfilePersonanameKey) as? String
		self.accountId = aDecoder.decodeObject(forKey: kDMProfileAccountIdKey) as? Int
		self.avatar = aDecoder.decodeObject(forKey: kDMProfileAvatarKey) as? String
		self.lastLogin = aDecoder.decodeObject(forKey: kDMProfileLastLoginKey) as? String
		self.avatarfull = aDecoder.decodeObject(forKey: kDMProfileAvatarfullKey) as? String
//		self.name = aDecoder.decodeObjectForKey(kDMProfileNameKey) as? DMName

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(cheese, forKey: kDMProfileCheeseKey)
		aCoder.encode(avatarmedium, forKey: kDMProfileAvatarmediumKey)
		aCoder.encode(loccountrycode, forKey: kDMProfileLoccountrycodeKey)
		aCoder.encode(profileurl, forKey: kDMProfileProfileurlKey)
		aCoder.encode(steamid, forKey: kDMProfileSteamidKey)
		aCoder.encode(personaname, forKey: kDMProfilePersonanameKey)
		aCoder.encode(accountId, forKey: kDMProfileAccountIdKey)
		aCoder.encode(avatar, forKey: kDMProfileAvatarKey)
		aCoder.encode(lastLogin, forKey: kDMProfileLastLoginKey)
		aCoder.encode(avatarfull, forKey: kDMProfileAvatarfullKey)
//		aCoder.encodeObject(name, forKey: kDMProfileNameKey)

    }

}
