//
//  DMPeers.swift
//
//  Created by Philip DesJean on 10/18/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMPeers: NSObject {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMPeersLastPlayedKey: String = "last_played"
	internal let kDMPeersWinKey: String = "win"
	internal let kDMPeersWithWinKey: String = "with_win"
	internal let kDMPeersAccountIdKey: String = "account_id"
	internal let kDMPeersGamesKey: String = "games"
	internal let kDMPeersPersonanameKey: String = "personaname"
	internal let kDMPeersAgainstGamesKey: String = "against_games"
	internal let kDMPeersAgainstWinKey: String = "against_win"
	internal let kDMPeersAvatarKey: String = "avatar"
	internal let kDMPeersLastLoginKey: String = "last_login"
	internal let kDMPeersWithGamesKey: String = "with_games"


    // MARK: Properties
	public var lastPlayed: Int?
	public var win: Int?
	public var withWin: Int?
	public var accountId: Int?
	public var games: Int?
	public var personaname: String?
	public var againstGames: Int?
	public var againstWin: Int?
	public var avatar: String?
	public var lastLogin: String?
	public var withGames: Int?


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
		lastPlayed = json[kDMPeersLastPlayedKey].int
		win = json[kDMPeersWinKey].int
		withWin = json[kDMPeersWithWinKey].int
		accountId = json[kDMPeersAccountIdKey].int
		games = json[kDMPeersGamesKey].int
		personaname = json[kDMPeersPersonanameKey].string
		againstGames = json[kDMPeersAgainstGamesKey].int
		againstWin = json[kDMPeersAgainstWinKey].int
		avatar = json[kDMPeersAvatarKey].string
		lastLogin = json[kDMPeersLastLoginKey].string
		withGames = json[kDMPeersWithGamesKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if lastPlayed != nil {
			dictionary.updateValue(lastPlayed! as AnyObject, forKey: kDMPeersLastPlayedKey)
		}
		if win != nil {
			dictionary.updateValue(win! as AnyObject, forKey: kDMPeersWinKey)
		}
		if withWin != nil {
			dictionary.updateValue(withWin! as AnyObject, forKey: kDMPeersWithWinKey)
		}
		if accountId != nil {
			dictionary.updateValue(accountId! as AnyObject, forKey: kDMPeersAccountIdKey)
		}
		if games != nil {
			dictionary.updateValue(games! as AnyObject, forKey: kDMPeersGamesKey)
		}
		if personaname != nil {
			dictionary.updateValue(personaname! as AnyObject, forKey: kDMPeersPersonanameKey)
		}
		if againstGames != nil {
			dictionary.updateValue(againstGames! as AnyObject, forKey: kDMPeersAgainstGamesKey)
		}
		if againstWin != nil {
			dictionary.updateValue(againstWin! as AnyObject, forKey: kDMPeersAgainstWinKey)
		}
		if avatar != nil {
			dictionary.updateValue(avatar! as AnyObject, forKey: kDMPeersAvatarKey)
		}
		if lastLogin != nil {
			dictionary.updateValue(lastLogin! as AnyObject, forKey: kDMPeersLastLoginKey)
		}
		if withGames != nil {
			dictionary.updateValue(withGames! as AnyObject, forKey: kDMPeersWithGamesKey)
		}

        return dictionary
    }

}
