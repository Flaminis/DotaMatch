//
//  DMBenchmarks.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMBenchmarks: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMBenchmarksHeroDamagePerMinKey: String = "hero_damage_per_min"
	internal let kDMBenchmarksTowerDamageKey: String = "tower_damage"
	internal let kDMBenchmarksHeroHealingPerMinKey: String = "hero_healing_per_min"
	internal let kDMBenchmarksXpPerMinKey: String = "xp_per_min"
	internal let kDMBenchmarksKillsPerMinKey: String = "kills_per_min"
	internal let kDMBenchmarksGoldPerMinKey: String = "gold_per_min"
	internal let kDMBenchmarksLastHitsPerMinKey: String = "last_hits_per_min"


    // MARK: Properties
	open var heroDamagePerMin: DMHeroDamagePerMin?
	open var towerDamage: DMTowerDamage?
	open var heroHealingPerMin: DMHeroHealingPerMin?
	open var xpPerMin: DMXpPerMin?
	open var killsPerMin: DMKillsPerMin?
	open var goldPerMin: DMGoldPerMin?
	open var lastHitsPerMin: DMLastHitsPerMin?


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
		heroDamagePerMin = DMHeroDamagePerMin(json: json[kDMBenchmarksHeroDamagePerMinKey])
		towerDamage = DMTowerDamage(json: json[kDMBenchmarksTowerDamageKey])
		heroHealingPerMin = DMHeroHealingPerMin(json: json[kDMBenchmarksHeroHealingPerMinKey])
		xpPerMin = DMXpPerMin(json: json[kDMBenchmarksXpPerMinKey])
		killsPerMin = DMKillsPerMin(json: json[kDMBenchmarksKillsPerMinKey])
		goldPerMin = DMGoldPerMin(json: json[kDMBenchmarksGoldPerMinKey])
		lastHitsPerMin = DMLastHitsPerMin(json: json[kDMBenchmarksLastHitsPerMinKey])

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if heroDamagePerMin != nil {
			dictionary.updateValue(heroDamagePerMin!.dictionaryRepresentation() as AnyObject, forKey: kDMBenchmarksHeroDamagePerMinKey)
		}
		if towerDamage != nil {
			dictionary.updateValue(towerDamage!.dictionaryRepresentation() as AnyObject, forKey: kDMBenchmarksTowerDamageKey)
		}
		if heroHealingPerMin != nil {
			dictionary.updateValue(heroHealingPerMin!.dictionaryRepresentation() as AnyObject, forKey: kDMBenchmarksHeroHealingPerMinKey)
		}
		if xpPerMin != nil {
			dictionary.updateValue(xpPerMin!.dictionaryRepresentation() as AnyObject, forKey: kDMBenchmarksXpPerMinKey)
		}
		if killsPerMin != nil {
			dictionary.updateValue(killsPerMin!.dictionaryRepresentation() as AnyObject, forKey: kDMBenchmarksKillsPerMinKey)
		}
		if goldPerMin != nil {
			dictionary.updateValue(goldPerMin!.dictionaryRepresentation() as AnyObject, forKey: kDMBenchmarksGoldPerMinKey)
		}
		if lastHitsPerMin != nil {
			dictionary.updateValue(lastHitsPerMin!.dictionaryRepresentation() as AnyObject, forKey: kDMBenchmarksLastHitsPerMinKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.heroDamagePerMin = aDecoder.decodeObject(forKey: kDMBenchmarksHeroDamagePerMinKey) as? DMHeroDamagePerMin
		self.towerDamage = aDecoder.decodeObject(forKey: kDMBenchmarksTowerDamageKey) as? DMTowerDamage
		self.heroHealingPerMin = aDecoder.decodeObject(forKey: kDMBenchmarksHeroHealingPerMinKey) as? DMHeroHealingPerMin
		self.xpPerMin = aDecoder.decodeObject(forKey: kDMBenchmarksXpPerMinKey) as? DMXpPerMin
		self.killsPerMin = aDecoder.decodeObject(forKey: kDMBenchmarksKillsPerMinKey) as? DMKillsPerMin
		self.goldPerMin = aDecoder.decodeObject(forKey: kDMBenchmarksGoldPerMinKey) as? DMGoldPerMin
		self.lastHitsPerMin = aDecoder.decodeObject(forKey: kDMBenchmarksLastHitsPerMinKey) as? DMLastHitsPerMin

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(heroDamagePerMin, forKey: kDMBenchmarksHeroDamagePerMinKey)
		aCoder.encode(towerDamage, forKey: kDMBenchmarksTowerDamageKey)
		aCoder.encode(heroHealingPerMin, forKey: kDMBenchmarksHeroHealingPerMinKey)
		aCoder.encode(xpPerMin, forKey: kDMBenchmarksXpPerMinKey)
		aCoder.encode(killsPerMin, forKey: kDMBenchmarksKillsPerMinKey)
		aCoder.encode(goldPerMin, forKey: kDMBenchmarksGoldPerMinKey)
		aCoder.encode(lastHitsPerMin, forKey: kDMBenchmarksLastHitsPerMinKey)

    }

}
