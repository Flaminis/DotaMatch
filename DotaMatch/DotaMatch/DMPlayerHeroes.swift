//
//  DMPlayerHeroes.swift
//
//  Created by Philip DesJean on 10/18/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMPlayerHeroes: NSObject {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMPlayerHeroesHeroIdKey: String = "hero_id"
	internal let kDMPlayerHeroesWithWinKey: String = "with_win"
	internal let kDMPlayerHeroesGamesKey: String = "games"
	internal let kDMPlayerHeroesAgainstGamesKey: String = "against_games"
	internal let kDMPlayerHeroesAgainstWinKey: String = "against_win"
	internal let kDMPlayerHeroesWinKey: String = "win"
	internal let kDMPlayerHeroesLastPlayedKey: String = "last_played"
	internal let kDMPlayerHeroesWithGamesKey: String = "with_games"


    // MARK: Properties
	public var heroId: String?
	public var withWin: Int?
	public var games: Int?
	public var againstGames: Int?
	public var againstWin: Int?
	public var win: Int?
	public var lastPlayed: Int?
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
		heroId = json[kDMPlayerHeroesHeroIdKey].string
		withWin = json[kDMPlayerHeroesWithWinKey].int
		games = json[kDMPlayerHeroesGamesKey].int
		againstGames = json[kDMPlayerHeroesAgainstGamesKey].int
		againstWin = json[kDMPlayerHeroesAgainstWinKey].int
		win = json[kDMPlayerHeroesWinKey].int
		lastPlayed = json[kDMPlayerHeroesLastPlayedKey].int
		withGames = json[kDMPlayerHeroesWithGamesKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if heroId != nil {
			dictionary.updateValue(heroId! as AnyObject, forKey: kDMPlayerHeroesHeroIdKey)
		}
		if withWin != nil {
			dictionary.updateValue(withWin! as AnyObject, forKey: kDMPlayerHeroesWithWinKey)
		}
		if games != nil {
			dictionary.updateValue(games! as AnyObject, forKey: kDMPlayerHeroesGamesKey)
		}
		if againstGames != nil {
			dictionary.updateValue(againstGames! as AnyObject, forKey: kDMPlayerHeroesAgainstGamesKey)
		}
		if againstWin != nil {
			dictionary.updateValue(againstWin! as AnyObject, forKey: kDMPlayerHeroesAgainstWinKey)
		}
		if win != nil {
			dictionary.updateValue(win! as AnyObject, forKey: kDMPlayerHeroesWinKey)
		}
		if lastPlayed != nil {
			dictionary.updateValue(lastPlayed! as AnyObject, forKey: kDMPlayerHeroesLastPlayedKey)
		}
		if withGames != nil {
			dictionary.updateValue(withGames! as AnyObject, forKey: kDMPlayerHeroesWithGamesKey)
		}

        return dictionary
    }

}
