//
//  DMKilledBy.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMKilledBy: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMKilledByNpcDotaHeroVengefulspiritKey: String = "npc_dota_hero_vengefulspirit"
	internal let kDMKilledByNpcDotaHeroAbaddonKey: String = "npc_dota_hero_abaddon"
	internal let kDMKilledByNpcDotaHeroArcWardenKey: String = "npc_dota_hero_arc_warden"
	internal let kDMKilledByNpcDotaHeroCrystalMaidenKey: String = "npc_dota_hero_crystal_maiden"
	internal let kDMKilledByNpcDotaHeroEmberSpiritKey: String = "npc_dota_hero_ember_spirit"
	internal let kDMKilledByNpcDotaHeroNevermoreKey: String = "npc_dota_hero_nevermore"
	internal let kDMKilledByNpcDotaHeroViperKey: String = "npc_dota_hero_viper"
	internal let kDMKilledByNpcDotaHeroBristlebackKey: String = "npc_dota_hero_bristleback"
	internal let kDMKilledByNpcDotaHeroKunkkaKey: String = "npc_dota_hero_kunkka"
	internal let kDMKilledByNpcDotaHeroJuggernautKey: String = "npc_dota_hero_juggernaut"


    // MARK: Properties
	open var npcDotaHeroVengefulspirit: Int?
	open var npcDotaHeroAbaddon: Int?
	open var npcDotaHeroArcWarden: Int?
	open var npcDotaHeroCrystalMaiden: Int?
	open var npcDotaHeroEmberSpirit: Int?
	open var npcDotaHeroNevermore: Int?
	open var npcDotaHeroViper: Int?
	open var npcDotaHeroBristleback: Int?
	open var npcDotaHeroKunkka: Int?
	open var npcDotaHeroJuggernaut: Int?


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
		npcDotaHeroVengefulspirit = json[kDMKilledByNpcDotaHeroVengefulspiritKey].int
		npcDotaHeroAbaddon = json[kDMKilledByNpcDotaHeroAbaddonKey].int
		npcDotaHeroArcWarden = json[kDMKilledByNpcDotaHeroArcWardenKey].int
		npcDotaHeroCrystalMaiden = json[kDMKilledByNpcDotaHeroCrystalMaidenKey].int
		npcDotaHeroEmberSpirit = json[kDMKilledByNpcDotaHeroEmberSpiritKey].int
		npcDotaHeroNevermore = json[kDMKilledByNpcDotaHeroNevermoreKey].int
		npcDotaHeroViper = json[kDMKilledByNpcDotaHeroViperKey].int
		npcDotaHeroBristleback = json[kDMKilledByNpcDotaHeroBristlebackKey].int
		npcDotaHeroKunkka = json[kDMKilledByNpcDotaHeroKunkkaKey].int
		npcDotaHeroJuggernaut = json[kDMKilledByNpcDotaHeroJuggernautKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if npcDotaHeroVengefulspirit != nil {
			dictionary.updateValue(npcDotaHeroVengefulspirit! as AnyObject, forKey: kDMKilledByNpcDotaHeroVengefulspiritKey)
		}
		if npcDotaHeroAbaddon != nil {
			dictionary.updateValue(npcDotaHeroAbaddon! as AnyObject, forKey: kDMKilledByNpcDotaHeroAbaddonKey)
		}
		if npcDotaHeroArcWarden != nil {
			dictionary.updateValue(npcDotaHeroArcWarden! as AnyObject, forKey: kDMKilledByNpcDotaHeroArcWardenKey)
		}
		if npcDotaHeroCrystalMaiden != nil {
			dictionary.updateValue(npcDotaHeroCrystalMaiden! as AnyObject, forKey: kDMKilledByNpcDotaHeroCrystalMaidenKey)
		}
		if npcDotaHeroEmberSpirit != nil {
			dictionary.updateValue(npcDotaHeroEmberSpirit! as AnyObject, forKey: kDMKilledByNpcDotaHeroEmberSpiritKey)
		}
		if npcDotaHeroNevermore != nil {
			dictionary.updateValue(npcDotaHeroNevermore! as AnyObject, forKey: kDMKilledByNpcDotaHeroNevermoreKey)
		}
		if npcDotaHeroViper != nil {
			dictionary.updateValue(npcDotaHeroViper! as AnyObject, forKey: kDMKilledByNpcDotaHeroViperKey)
		}
		if npcDotaHeroBristleback != nil {
			dictionary.updateValue(npcDotaHeroBristleback! as AnyObject, forKey: kDMKilledByNpcDotaHeroBristlebackKey)
		}
		if npcDotaHeroKunkka != nil {
			dictionary.updateValue(npcDotaHeroKunkka! as AnyObject, forKey: kDMKilledByNpcDotaHeroKunkkaKey)
		}
		if npcDotaHeroJuggernaut != nil {
			dictionary.updateValue(npcDotaHeroJuggernaut! as AnyObject, forKey: kDMKilledByNpcDotaHeroJuggernautKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.npcDotaHeroVengefulspirit = aDecoder.decodeObject(forKey: kDMKilledByNpcDotaHeroVengefulspiritKey) as? Int
		self.npcDotaHeroAbaddon = aDecoder.decodeObject(forKey: kDMKilledByNpcDotaHeroAbaddonKey) as? Int
		self.npcDotaHeroArcWarden = aDecoder.decodeObject(forKey: kDMKilledByNpcDotaHeroArcWardenKey) as? Int
		self.npcDotaHeroCrystalMaiden = aDecoder.decodeObject(forKey: kDMKilledByNpcDotaHeroCrystalMaidenKey) as? Int
		self.npcDotaHeroEmberSpirit = aDecoder.decodeObject(forKey: kDMKilledByNpcDotaHeroEmberSpiritKey) as? Int
		self.npcDotaHeroNevermore = aDecoder.decodeObject(forKey: kDMKilledByNpcDotaHeroNevermoreKey) as? Int
		self.npcDotaHeroViper = aDecoder.decodeObject(forKey: kDMKilledByNpcDotaHeroViperKey) as? Int
		self.npcDotaHeroBristleback = aDecoder.decodeObject(forKey: kDMKilledByNpcDotaHeroBristlebackKey) as? Int
		self.npcDotaHeroKunkka = aDecoder.decodeObject(forKey: kDMKilledByNpcDotaHeroKunkkaKey) as? Int
		self.npcDotaHeroJuggernaut = aDecoder.decodeObject(forKey: kDMKilledByNpcDotaHeroJuggernautKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(npcDotaHeroVengefulspirit, forKey: kDMKilledByNpcDotaHeroVengefulspiritKey)
		aCoder.encode(npcDotaHeroAbaddon, forKey: kDMKilledByNpcDotaHeroAbaddonKey)
		aCoder.encode(npcDotaHeroArcWarden, forKey: kDMKilledByNpcDotaHeroArcWardenKey)
		aCoder.encode(npcDotaHeroCrystalMaiden, forKey: kDMKilledByNpcDotaHeroCrystalMaidenKey)
		aCoder.encode(npcDotaHeroEmberSpirit, forKey: kDMKilledByNpcDotaHeroEmberSpiritKey)
		aCoder.encode(npcDotaHeroNevermore, forKey: kDMKilledByNpcDotaHeroNevermoreKey)
		aCoder.encode(npcDotaHeroViper, forKey: kDMKilledByNpcDotaHeroViperKey)
		aCoder.encode(npcDotaHeroBristleback, forKey: kDMKilledByNpcDotaHeroBristlebackKey)
		aCoder.encode(npcDotaHeroKunkka, forKey: kDMKilledByNpcDotaHeroKunkkaKey)
		aCoder.encode(npcDotaHeroJuggernaut, forKey: kDMKilledByNpcDotaHeroJuggernautKey)

    }

}
