//
//  DMPlayers.swift
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


open class DMPlayers: NSObject {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMPlayersItem2Key: String = "item_2"
	internal let kDMPlayersMultiKillsKey: String = "multi_kills"
	internal let kDMPlayersObsKey: String = "obs"
	internal let kDMPlayersAdditionalUnitsKey: String = "additional_units"
	internal let kDMPlayersIsRadiantKey: String = "isRadiant"
	internal let kDMPlayersCreepsStackedKey: String = "creeps_stacked"
	internal let kDMPlayersDnTKey: String = "dn_t"
	internal let kDMPlayersItem3Key: String = "item_3"
	internal let kDMPlayersHeroIdKey: String = "hero_id"
	internal let kDMPlayersKillStreaksKey: String = "kill_streaks"
	internal let kDMPlayersTotalXpKey: String = "total_xp"
	internal let kDMPlayersLaneRoleKey: String = "lane_role"
	internal let kDMPlayersItemWinKey: String = "item_win"
	internal let kDMPlayersObsLogKey: String = "obs_log"
	internal let kDMPlayersHeroHitsKey: String = "hero_hits"
	internal let kDMPlayersPersonanameKey: String = "personaname"
	internal let kDMPlayersGoldKey: String = "gold"
	internal let kDMPlayersAssistsKey: String = "assists"
	internal let kDMPlayersLifeStateDeadKey: String = "life_state_dead"
	internal let kDMPlayersAncientKillsKey: String = "ancient_kills"
	internal let kDMPlayersGoldReasonsKey: String = "gold_reasons"
	internal let kDMPlayersRunePickupsKey: String = "rune_pickups"
	internal let kDMPlayersKillsLogKey: String = "kills_log"
	internal let kDMPlayersGameModeKey: String = "game_mode"
	internal let kDMPlayersKdaKey: String = "kda"
	internal let kDMPlayersTowerKillsKey: String = "tower_kills"
	internal let kDMPlayersXpReasonsKey: String = "xp_reasons"
	internal let kDMPlayersBuybackLogKey: String = "buyback_log"
	internal let kDMPlayersSentryKillsKey: String = "sentry_kills"
	internal let kDMPlayersDamageTakenKey: String = "damage_taken"
	internal let kDMPlayersSentryUsesKey: String = "sentry_uses"
	internal let kDMPlayersKilledByKey: String = "killed_by"
	internal let kDMPlayersLeaverStatusKey: String = "leaver_status"
	internal let kDMPlayersLoseKey: String = "lose"
	internal let kDMPlayersDeathsKey: String = "deaths"
	internal let kDMPlayersMatchIdKey: String = "match_id"
	internal let kDMPlayersLaneKillsKey: String = "lane_kills"
	internal let kDMPlayersNecronomiconKillsKey: String = "necronomicon_kills"
	internal let kDMPlayersItem0Key: String = "item_0"
	internal let kDMPlayersPurchaseTimeKey: String = "purchase_time"
	internal let kDMPlayersSenLogKey: String = "sen_log"
	internal let kDMPlayersLaneEfficiencyKey: String = "lane_efficiency"
	internal let kDMPlayersSenLeftLogKey: String = "sen_left_log"
	internal let kDMPlayersSpecificKey: String = "specific"
	internal let kDMPlayersRadiantWinKey: String = "radiant_win"
	internal let kDMPlayersHeroKillsKey: String = "hero_kills"
	internal let kDMPlayersItem5Key: String = "item_5"
	internal let kDMPlayersDeniesKey: String = "denies"
	internal let kDMPlayersHeroHealingKey: String = "hero_healing"
	internal let kDMPlayersDurationKey: String = "duration"
	internal let kDMPlayersLaneEfficiencyPctKey: String = "lane_efficiency_pct"
	internal let kDMPlayersLanePosKey: String = "lane_pos"
	internal let kDMPlayersTowerDamageKey: String = "tower_damage"
	internal let kDMPlayersItemUsageKey: String = "item_usage"
	internal let kDMPlayersGoldTKey: String = "gold_t"
	internal let kDMPlayersItem1Key: String = "item_1"
	internal let kDMPlayersPurchaseGemKey: String = "purchase_gem"
	internal let kDMPlayersXpTKey: String = "xp_t"
	internal let kDMPlayersTotalGoldKey: String = "total_gold"
	internal let kDMPlayersObserverKillsKey: String = "observer_kills"
	internal let kDMPlayersRunesKey: String = "runes"
	internal let kDMPlayersActionsKey: String = "actions"
	internal let kDMPlayersLastLoginKey: String = "last_login"
	internal let kDMPlayersWinKey: String = "win"
	internal let kDMPlayersTimesKey: String = "times"
	internal let kDMPlayersNameKey: String = "name"
	internal let kDMPlayersAbilityUsesKey: String = "ability_uses"
	internal let kDMPlayersStunsKey: String = "stuns"
	internal let kDMPlayersPatchKey: String = "patch"
	internal let kDMPlayersLaneKey: String = "lane"
	internal let kDMPlayersPurchaseKey: String = "purchase"
	internal let kDMPlayersXpPerMinKey: String = "xp_per_min"
	internal let kDMPlayersPurchaseWardSentryKey: String = "purchase_ward_sentry"
	internal let kDMPlayersNeutralKillsKey: String = "neutral_kills"
	internal let kDMPlayersPurchaseTpscrollKey: String = "purchase_tpscroll"
	internal let kDMPlayersItemUsesKey: String = "item_uses"
	internal let kDMPlayersLevelKey: String = "level"
	internal let kDMPlayersStartTimeKey: String = "start_time"
	internal let kDMPlayersRoshanKillsKey: String = "roshan_kills"
	internal let kDMPlayersCampsStackedKey: String = "camps_stacked"
	internal let kDMPlayersPosDataKey: String = "posData"
	internal let kDMPlayersPurchaseLogKey: String = "purchase_log"
	internal let kDMPlayersFirstPurchaseTimeKey: String = "first_purchase_time"
	internal let kDMPlayersKilledKey: String = "killed"
	internal let kDMPlayersDamageKey: String = "damage"
	internal let kDMPlayersLhTKey: String = "lh_t"
	internal let kDMPlayersSoloCompetitiveRankKey: String = "solo_competitive_rank"
	internal let kDMPlayersCourierKillsKey: String = "courier_kills"
	internal let kDMPlayersDamageInflictorKey: String = "damage_inflictor"
	internal let kDMPlayersItem4Key: String = "item_4"
	internal let kDMPlayersBenchmarksKey: String = "benchmarks"
	internal let kDMPlayersHeroDamageKey: String = "hero_damage"
	internal let kDMPlayersPingsKey: String = "pings"
	internal let kDMPlayersKillsPerMinKey: String = "kills_per_min"
	internal let kDMPlayersDamageInflictorReceivedKey: String = "damage_inflictor_received"
	internal let kDMPlayersPurchaseWardObserverKey: String = "purchase_ward_observer"
	internal let kDMPlayersSenPlacedKey: String = "sen_placed"
	internal let kDMPlayersObserverUsesKey: String = "observer_uses"
	internal let kDMPlayersKillsKey: String = "kills"
	internal let kDMPlayersBuybackCountKey: String = "buyback_count"
	internal let kDMPlayersAccountIdKey: String = "account_id"
	internal let kDMPlayersClusterKey: String = "cluster"
	internal let kDMPlayersAbilityUpgradesArrKey: String = "ability_upgrades_arr"
	internal let kDMPlayersLastHitsKey: String = "last_hits"
	internal let kDMPlayersSenKey: String = "sen"
	internal let kDMPlayersActionsPerMinKey: String = "actions_per_min"
	internal let kDMPlayersPlayerSlotKey: String = "player_slot"
	internal let kDMPlayersAbandonsKey: String = "abandons"
	internal let kDMPlayersObsPlacedKey: String = "obs_placed"
	internal let kDMPlayersLifeStateKey: String = "life_state"
	internal let kDMPlayersMaxHeroHitKey: String = "max_hero_hit"
	internal let kDMPlayersLobbyTypeKey: String = "lobby_type"
	internal let kDMPlayersRegionKey: String = "region"
	internal let kDMPlayersGoldPerMinKey: String = "gold_per_min"
	internal let kDMPlayersGoldSpentKey: String = "gold_spent"
	internal let kDMPlayersObsLeftLogKey: String = "obs_left_log"


    // MARK: Properties
	open var item2: Int?
	open var obs: DMObs?
	open var additionalUnits: [DMAdditionalUnits]?
	open var isRadiant: Bool = false
	open var creepsStacked: Int?
	open var dnT: [DMDnT]?
	open var item3: Int?
	open var heroId: Int?
	open var totalXp: Int?
	open var laneRole: Int?
	open var itemWin: DMItemWin?
	open var obsLog: [DMObsLog]?
	open var heroHits: DMHeroHits?
	open var personaname: String?
	open var gold: Int?
	open var assists: Int?
	open var lifeStateDead: Int?
	open var ancientKills: Int?
	open var runePickups: Int?
	open var killsLog: [DMKillsLog]?
	open var gameMode: Int?
	open var kda: Int?
	open var towerKills: Int?
	open var buybackLog: [DMBuybackLog]?
	open var sentryKills: Int?
	open var damageTaken: DMDamageTaken?
	open var sentryUses: Int?
	open var killedBy: DMKilledBy?
	open var leaverStatus: Int?
	open var lose: Int?
	open var deaths: Int?
	open var matchId: Int?
	open var laneKills: Int?
	open var necronomiconKills: Int?
	open var item0: Int?
	open var purchaseTime: DMPurchaseTime?
	open var senLog: [DMSenLog]?
	open var laneEfficiency: Float?
	open var senLeftLog: [DMSenLeftLog]?
	open var specific: DMSpecific?
	open var radiantWin: Bool = false
	open var heroKills: Int?
	open var item5: Int?
	open var denies: Int?
	open var heroHealing: Int?
	open var duration: Int?
	open var laneEfficiencyPct: Int?
	open var lanePos: DMLanePos?
	open var towerDamage: Int?
	open var itemUsage: DMItemUsage?
	open var goldT: [DMGoldT]?
	open var item1: Int?
	open var purchaseGem: Int?
	open var xpT: [DMXpT]?
	open var totalGold: Int?
	open var observerKills: Int?
	open var lastLogin: String?
	open var win: Int?
	open var times: [DMTimes]?
	open var abilityUses: DMAbilityUses?
	open var stuns: Float?
	open var patch: Int?
	open var lane: Int?
	open var purchase: DMPurchase?
	open var xpPerMin: Int?
	open var purchaseWardSentry: Int?
	open var neutralKills: Int?
	open var purchaseTpscroll: Int?
	open var itemUses: DMItemUses?
	open var level: Int?
	open var startTime: Int?
	open var roshanKills: Int?
	open var campsStacked: Int?
	open var posData: DMPosData?
	open var purchaseLog: [DMPurchaseLog]?
	open var firstPurchaseTime: DMFirstPurchaseTime?
	open var killed: DMKilled?
	open var damage: DMDamage?
	open var lhT: [DMLhT]?
	open var soloCompetitiveRank: String?
	open var courierKills: Int?
	open var damageInflictor: DMDamageInflictor?
	open var item4: Int?
	open var benchmarks: DMBenchmarks?
	open var heroDamage: Int?
	open var pings: Int?
	open var killsPerMin: Float?
	open var damageInflictorReceived: DMDamageInflictorReceived?
	open var purchaseWardObserver: Int?
	open var senPlaced: Int?
	open var observerUses: Int?
	open var kills: Int?
	open var buybackCount: Int?
	open var accountId: Int?
	open var cluster: Int?
	open var abilityUpgradesArr: [DMAbilityUpgradesArr]?
	open var lastHits: Int?
	open var actionsPerMin: Int?
	open var playerSlot: Int?
	open var abandons: Int?
	open var obsPlaced: Int?
	open var maxHeroHit: DMMaxHeroHit?
	open var lobbyType: Int?
	open var region: Int?
	open var goldPerMin: Int?
	open var goldSpent: Int?
	open var obsLeftLog: [DMObsLeftLog]?


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
		item2 = json[kDMPlayersItem2Key].int
		obs = DMObs(json: json[kDMPlayersObsKey])
		additionalUnits = []
		if let items = json[kDMPlayersAdditionalUnitsKey].array {
			for item in items {
				additionalUnits?.append(DMAdditionalUnits(json: item))
			}
		} else {
			additionalUnits = nil
		}
		isRadiant = json[kDMPlayersIsRadiantKey].boolValue
		creepsStacked = json[kDMPlayersCreepsStackedKey].int
		dnT = []
		if let items = json[kDMPlayersDnTKey].array {
			for item in items {
				dnT?.append(DMDnT(json: item))
			}
		} else {
			dnT = nil
		}
		item3 = json[kDMPlayersItem3Key].int
		heroId = json[kDMPlayersHeroIdKey].int
		totalXp = json[kDMPlayersTotalXpKey].int
		laneRole = json[kDMPlayersLaneRoleKey].int
		itemWin = DMItemWin(json: json[kDMPlayersItemWinKey])
		obsLog = []
		if let items = json[kDMPlayersObsLogKey].array {
			for item in items {
				obsLog?.append(DMObsLog(json: item))
			}
		} else {
			obsLog = nil
		}
		heroHits = DMHeroHits(json: json[kDMPlayersHeroHitsKey])
		personaname = json[kDMPlayersPersonanameKey].string
		gold = json[kDMPlayersGoldKey].int
		assists = json[kDMPlayersAssistsKey].int
		lifeStateDead = json[kDMPlayersLifeStateDeadKey].int
		ancientKills = json[kDMPlayersAncientKillsKey].int
		runePickups = json[kDMPlayersRunePickupsKey].int
		killsLog = []
		if let items = json[kDMPlayersKillsLogKey].array {
			for item in items {
				killsLog?.append(DMKillsLog(json: item))
			}
		} else {
			killsLog = nil
		}
		gameMode = json[kDMPlayersGameModeKey].int
		kda = json[kDMPlayersKdaKey].int
		towerKills = json[kDMPlayersTowerKillsKey].int
		buybackLog = []
		if let items = json[kDMPlayersBuybackLogKey].array {
			for item in items {
				buybackLog?.append(DMBuybackLog(json: item))
			}
		} else {
			buybackLog = nil
		}
		sentryKills = json[kDMPlayersSentryKillsKey].int
		damageTaken = DMDamageTaken(json: json[kDMPlayersDamageTakenKey])
		sentryUses = json[kDMPlayersSentryUsesKey].int
		killedBy = DMKilledBy(json: json[kDMPlayersKilledByKey])
		leaverStatus = json[kDMPlayersLeaverStatusKey].int
		lose = json[kDMPlayersLoseKey].int
		deaths = json[kDMPlayersDeathsKey].int
		matchId = json[kDMPlayersMatchIdKey].int
		laneKills = json[kDMPlayersLaneKillsKey].int
		necronomiconKills = json[kDMPlayersNecronomiconKillsKey].int
		item0 = json[kDMPlayersItem0Key].int
		purchaseTime = DMPurchaseTime(json: json[kDMPlayersPurchaseTimeKey])
		senLog = []
		if let items = json[kDMPlayersSenLogKey].array {
			for item in items {
				senLog?.append(DMSenLog(json: item))
			}
		} else {
			senLog = nil
		}
		laneEfficiency = json[kDMPlayersLaneEfficiencyKey].float
		senLeftLog = []
		if let items = json[kDMPlayersSenLeftLogKey].array {
			for item in items {
				senLeftLog?.append(DMSenLeftLog(json: item))
			}
		} else {
			senLeftLog = nil
		}
		specific = DMSpecific(json: json[kDMPlayersSpecificKey])
		radiantWin = json[kDMPlayersRadiantWinKey].boolValue
		heroKills = json[kDMPlayersHeroKillsKey].int
		item5 = json[kDMPlayersItem5Key].int
		denies = json[kDMPlayersDeniesKey].int
		heroHealing = json[kDMPlayersHeroHealingKey].int
		duration = json[kDMPlayersDurationKey].int
		laneEfficiencyPct = json[kDMPlayersLaneEfficiencyPctKey].int
		lanePos = DMLanePos(json: json[kDMPlayersLanePosKey])
		towerDamage = json[kDMPlayersTowerDamageKey].int
		itemUsage = DMItemUsage(json: json[kDMPlayersItemUsageKey])
		goldT = []
		if let items = json[kDMPlayersGoldTKey].array {
			for item in items {
				goldT?.append(DMGoldT(json: item))
			}
		} else {
			goldT = nil
		}
		item1 = json[kDMPlayersItem1Key].int
		purchaseGem = json[kDMPlayersPurchaseGemKey].int
		xpT = []
		if let items = json[kDMPlayersXpTKey].array {
			for item in items {
				xpT?.append(DMXpT(json: item))
			}
		} else {
			xpT = nil
		}
		totalGold = json[kDMPlayersTotalGoldKey].int
		observerKills = json[kDMPlayersObserverKillsKey].int
		lastLogin = json[kDMPlayersLastLoginKey].string
		win = json[kDMPlayersWinKey].int
		times = []
		if let items = json[kDMPlayersTimesKey].array {
			for item in items {
				times?.append(DMTimes(json: item))
			}
		} else {
			times = nil
		}
		abilityUses = DMAbilityUses(json: json[kDMPlayersAbilityUsesKey])
		stuns = json[kDMPlayersStunsKey].float
		patch = json[kDMPlayersPatchKey].int
		lane = json[kDMPlayersLaneKey].int
		purchase = DMPurchase(json: json[kDMPlayersPurchaseKey])
		xpPerMin = json[kDMPlayersXpPerMinKey].int
		purchaseWardSentry = json[kDMPlayersPurchaseWardSentryKey].int
		neutralKills = json[kDMPlayersNeutralKillsKey].int
		purchaseTpscroll = json[kDMPlayersPurchaseTpscrollKey].int
		itemUses = DMItemUses(json: json[kDMPlayersItemUsesKey])
		level = json[kDMPlayersLevelKey].int
		startTime = json[kDMPlayersStartTimeKey].int
		roshanKills = json[kDMPlayersRoshanKillsKey].int
		campsStacked = json[kDMPlayersCampsStackedKey].int
		posData = DMPosData(json: json[kDMPlayersPosDataKey])
		purchaseLog = []
		if let items = json[kDMPlayersPurchaseLogKey].array {
			for item in items {
				purchaseLog?.append(DMPurchaseLog(json: item))
			}
		} else {
			purchaseLog = nil
		}
		firstPurchaseTime = DMFirstPurchaseTime(json: json[kDMPlayersFirstPurchaseTimeKey])
		killed = DMKilled(json: json[kDMPlayersKilledKey])
		damage = DMDamage(json: json[kDMPlayersDamageKey])
		lhT = []
		if let items = json[kDMPlayersLhTKey].array {
			for item in items {
				lhT?.append(DMLhT(json: item))
			}
		} else {
			lhT = nil
		}
		soloCompetitiveRank = json[kDMPlayersSoloCompetitiveRankKey].string
		courierKills = json[kDMPlayersCourierKillsKey].int
		damageInflictor = DMDamageInflictor(json: json[kDMPlayersDamageInflictorKey])
		item4 = json[kDMPlayersItem4Key].int
		benchmarks = DMBenchmarks(json: json[kDMPlayersBenchmarksKey])
		heroDamage = json[kDMPlayersHeroDamageKey].int
		pings = json[kDMPlayersPingsKey].int
		killsPerMin = json[kDMPlayersKillsPerMinKey].float
		damageInflictorReceived = DMDamageInflictorReceived(json: json[kDMPlayersDamageInflictorReceivedKey])
		purchaseWardObserver = json[kDMPlayersPurchaseWardObserverKey].int
		senPlaced = json[kDMPlayersSenPlacedKey].int
		observerUses = json[kDMPlayersObserverUsesKey].int
		kills = json[kDMPlayersKillsKey].int
		buybackCount = json[kDMPlayersBuybackCountKey].int
		accountId = json[kDMPlayersAccountIdKey].int
		cluster = json[kDMPlayersClusterKey].int
		abilityUpgradesArr = []
		if let items = json[kDMPlayersAbilityUpgradesArrKey].array {
			for item in items {
				abilityUpgradesArr?.append(DMAbilityUpgradesArr(json: item))
			}
		} else {
			abilityUpgradesArr = nil
		}
		lastHits = json[kDMPlayersLastHitsKey].int
		actionsPerMin = json[kDMPlayersActionsPerMinKey].int
		playerSlot = json[kDMPlayersPlayerSlotKey].int
		abandons = json[kDMPlayersAbandonsKey].int
		obsPlaced = json[kDMPlayersObsPlacedKey].int
		maxHeroHit = DMMaxHeroHit(json: json[kDMPlayersMaxHeroHitKey])
		lobbyType = json[kDMPlayersLobbyTypeKey].int
		region = json[kDMPlayersRegionKey].int
		goldPerMin = json[kDMPlayersGoldPerMinKey].int
		goldSpent = json[kDMPlayersGoldSpentKey].int
		obsLeftLog = []
		if let items = json[kDMPlayersObsLeftLogKey].array {
			for item in items {
				obsLeftLog?.append(DMObsLeftLog(json: item))
			}
		} else {
			obsLeftLog = nil
		}

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if item2 != nil {
			dictionary.updateValue(item2! as AnyObject, forKey: kDMPlayersItem2Key)
		}
		if obs != nil {
			dictionary.updateValue(obs!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersObsKey)
		}
		if additionalUnits?.count > 0 {
			var temp: [AnyObject] = []
			for item in additionalUnits! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersAdditionalUnitsKey)
		}
		dictionary.updateValue(isRadiant as AnyObject, forKey: kDMPlayersIsRadiantKey)
		if creepsStacked != nil {
			dictionary.updateValue(creepsStacked! as AnyObject, forKey: kDMPlayersCreepsStackedKey)
		}
		if dnT?.count > 0 {
			var temp: [AnyObject] = []
			for item in dnT! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersDnTKey)
		}
		if item3 != nil {
			dictionary.updateValue(item3! as AnyObject, forKey: kDMPlayersItem3Key)
		}
		if heroId != nil {
			dictionary.updateValue(heroId! as AnyObject, forKey: kDMPlayersHeroIdKey)
		}
		if totalXp != nil {
			dictionary.updateValue(totalXp! as AnyObject, forKey: kDMPlayersTotalXpKey)
		}
		if laneRole != nil {
			dictionary.updateValue(laneRole! as AnyObject, forKey: kDMPlayersLaneRoleKey)
		}
		if itemWin != nil {
			dictionary.updateValue(itemWin!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersItemWinKey)
		}
		if obsLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in obsLog! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersObsLogKey)
		}
		if heroHits != nil {
			dictionary.updateValue(heroHits!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersHeroHitsKey)
		}
		if personaname != nil {
			dictionary.updateValue(personaname! as AnyObject, forKey: kDMPlayersPersonanameKey)
		}
		if gold != nil {
			dictionary.updateValue(gold! as AnyObject, forKey: kDMPlayersGoldKey)
		}
		if assists != nil {
			dictionary.updateValue(assists! as AnyObject, forKey: kDMPlayersAssistsKey)
		}
		if lifeStateDead != nil {
			dictionary.updateValue(lifeStateDead! as AnyObject, forKey: kDMPlayersLifeStateDeadKey)
		}
		if ancientKills != nil {
			dictionary.updateValue(ancientKills! as AnyObject, forKey: kDMPlayersAncientKillsKey)
		}
		if runePickups != nil {
			dictionary.updateValue(runePickups! as AnyObject, forKey: kDMPlayersRunePickupsKey)
		}
		if killsLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in killsLog! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersKillsLogKey)
		}
		if gameMode != nil {
			dictionary.updateValue(gameMode! as AnyObject, forKey: kDMPlayersGameModeKey)
		}
		if kda != nil {
			dictionary.updateValue(kda! as AnyObject, forKey: kDMPlayersKdaKey)
		}
		if towerKills != nil {
			dictionary.updateValue(towerKills! as AnyObject, forKey: kDMPlayersTowerKillsKey)
        }
		if buybackLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in buybackLog! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersBuybackLogKey)
		}
		if sentryKills != nil {
			dictionary.updateValue(sentryKills! as AnyObject, forKey: kDMPlayersSentryKillsKey)
		}
		if damageTaken != nil {
			dictionary.updateValue(damageTaken!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersDamageTakenKey)
		}
		if sentryUses != nil {
			dictionary.updateValue(sentryUses! as AnyObject, forKey: kDMPlayersSentryUsesKey)
		}
		if killedBy != nil {
			dictionary.updateValue(killedBy!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersKilledByKey)
		}
		if leaverStatus != nil {
			dictionary.updateValue(leaverStatus! as AnyObject, forKey: kDMPlayersLeaverStatusKey)
		}
		if lose != nil {
			dictionary.updateValue(lose! as AnyObject, forKey: kDMPlayersLoseKey)
		}
		if deaths != nil {
			dictionary.updateValue(deaths! as AnyObject, forKey: kDMPlayersDeathsKey)
		}
		if matchId != nil {
			dictionary.updateValue(matchId! as AnyObject, forKey: kDMPlayersMatchIdKey)
		}
		if laneKills != nil {
			dictionary.updateValue(laneKills! as AnyObject, forKey: kDMPlayersLaneKillsKey)
		}
		if necronomiconKills != nil {
			dictionary.updateValue(necronomiconKills! as AnyObject, forKey: kDMPlayersNecronomiconKillsKey)
		}
		if item0 != nil {
			dictionary.updateValue(item0! as AnyObject, forKey: kDMPlayersItem0Key)
		}
		if purchaseTime != nil {
			dictionary.updateValue(purchaseTime!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersPurchaseTimeKey)
		}
		if senLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in senLog! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersSenLogKey)
		}
		if laneEfficiency != nil {
			dictionary.updateValue(laneEfficiency! as AnyObject, forKey: kDMPlayersLaneEfficiencyKey)
		}
		if senLeftLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in senLeftLog! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersSenLeftLogKey)
		}
		if specific != nil {
			dictionary.updateValue(specific!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersSpecificKey)
		}
		dictionary.updateValue(radiantWin as AnyObject, forKey: kDMPlayersRadiantWinKey)
		if heroKills != nil {
			dictionary.updateValue(heroKills! as AnyObject, forKey: kDMPlayersHeroKillsKey)
		}
		if item5 != nil {
			dictionary.updateValue(item5! as AnyObject, forKey: kDMPlayersItem5Key)
		}
		if denies != nil {
			dictionary.updateValue(denies! as AnyObject, forKey: kDMPlayersDeniesKey)
		}
		if heroHealing != nil {
			dictionary.updateValue(heroHealing! as AnyObject, forKey: kDMPlayersHeroHealingKey)
		}
		if duration != nil {
			dictionary.updateValue(duration! as AnyObject, forKey: kDMPlayersDurationKey)
		}
		if laneEfficiencyPct != nil {
			dictionary.updateValue(laneEfficiencyPct! as AnyObject, forKey: kDMPlayersLaneEfficiencyPctKey)
		}
		if lanePos != nil {
			dictionary.updateValue(lanePos!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersLanePosKey)
		}
		if towerDamage != nil {
			dictionary.updateValue(towerDamage! as AnyObject, forKey: kDMPlayersTowerDamageKey)
		}
		if itemUsage != nil {
			dictionary.updateValue(itemUsage!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersItemUsageKey)
		}
		if goldT?.count > 0 {
			var temp: [AnyObject] = []
			for item in goldT! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersGoldTKey)
		}
		if item1 != nil {
			dictionary.updateValue(item1! as AnyObject, forKey: kDMPlayersItem1Key)
		}
		if purchaseGem != nil {
			dictionary.updateValue(purchaseGem! as AnyObject, forKey: kDMPlayersPurchaseGemKey)
		}
		if xpT?.count > 0 {
			var temp: [AnyObject] = []
			for item in xpT! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersXpTKey)
		}
		if totalGold != nil {
			dictionary.updateValue(totalGold! as AnyObject, forKey: kDMPlayersTotalGoldKey)
		}
		if observerKills != nil {
			dictionary.updateValue(observerKills! as AnyObject, forKey: kDMPlayersObserverKillsKey)
		}
		if lastLogin != nil {
			dictionary.updateValue(lastLogin! as AnyObject, forKey: kDMPlayersLastLoginKey)
		}
		if win != nil {
			dictionary.updateValue(win! as AnyObject, forKey: kDMPlayersWinKey)
		}
		if times?.count > 0 {
			var temp: [AnyObject] = []
			for item in times! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersTimesKey)
		}
		if abilityUses != nil {
			dictionary.updateValue(abilityUses!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersAbilityUsesKey)
		}
		if stuns != nil {
			dictionary.updateValue(stuns! as AnyObject, forKey: kDMPlayersStunsKey)
		}
		if patch != nil {
			dictionary.updateValue(patch! as AnyObject, forKey: kDMPlayersPatchKey)
		}
		if lane != nil {
			dictionary.updateValue(lane! as AnyObject, forKey: kDMPlayersLaneKey)
		}
		if purchase != nil {
			dictionary.updateValue(purchase!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersPurchaseKey)
		}
		if xpPerMin != nil {
			dictionary.updateValue(xpPerMin! as AnyObject, forKey: kDMPlayersXpPerMinKey)
		}
		if purchaseWardSentry != nil {
			dictionary.updateValue(purchaseWardSentry! as AnyObject, forKey: kDMPlayersPurchaseWardSentryKey)
		}
		if neutralKills != nil {
			dictionary.updateValue(neutralKills! as AnyObject, forKey: kDMPlayersNeutralKillsKey)
		}
		if purchaseTpscroll != nil {
			dictionary.updateValue(purchaseTpscroll! as AnyObject, forKey: kDMPlayersPurchaseTpscrollKey)
		}
		if itemUses != nil {
			dictionary.updateValue(itemUses!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersItemUsesKey)
		}
		if level != nil {
			dictionary.updateValue(level! as AnyObject, forKey: kDMPlayersLevelKey)
		}
		if startTime != nil {
			dictionary.updateValue(startTime! as AnyObject, forKey: kDMPlayersStartTimeKey)
		}
		if roshanKills != nil {
			dictionary.updateValue(roshanKills! as AnyObject, forKey: kDMPlayersRoshanKillsKey)
		}
		if campsStacked != nil {
			dictionary.updateValue(campsStacked! as AnyObject, forKey: kDMPlayersCampsStackedKey)
		}
		if posData != nil {
			dictionary.updateValue(posData!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersPosDataKey)
		}
		if purchaseLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in purchaseLog! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersPurchaseLogKey)
		}
		if firstPurchaseTime != nil {
			dictionary.updateValue(firstPurchaseTime!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersFirstPurchaseTimeKey)
		}
		if killed != nil {
			dictionary.updateValue(killed!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersKilledKey)
		}
		if damage != nil {
			dictionary.updateValue(damage!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersDamageKey)
		}
		if lhT?.count > 0 {
			var temp: [AnyObject] = []
			for item in lhT! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersLhTKey)
		}
		if soloCompetitiveRank != nil {
			dictionary.updateValue(soloCompetitiveRank! as AnyObject, forKey: kDMPlayersSoloCompetitiveRankKey)
		}
		if courierKills != nil {
			dictionary.updateValue(courierKills! as AnyObject, forKey: kDMPlayersCourierKillsKey)
		}
		if damageInflictor != nil {
			dictionary.updateValue(damageInflictor!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersDamageInflictorKey)
		}
		if item4 != nil {
			dictionary.updateValue(item4! as AnyObject, forKey: kDMPlayersItem4Key)
		}
		if benchmarks != nil {
			dictionary.updateValue(benchmarks!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersBenchmarksKey)
		}
		if heroDamage != nil {
			dictionary.updateValue(heroDamage! as AnyObject, forKey: kDMPlayersHeroDamageKey)
		}
		if pings != nil {
			dictionary.updateValue(pings! as AnyObject, forKey: kDMPlayersPingsKey)
		}
		if killsPerMin != nil {
			dictionary.updateValue(killsPerMin! as AnyObject, forKey: kDMPlayersKillsPerMinKey)
		}
		if damageInflictorReceived != nil {
			dictionary.updateValue(damageInflictorReceived!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersDamageInflictorReceivedKey)
		}
		if purchaseWardObserver != nil {
			dictionary.updateValue(purchaseWardObserver! as AnyObject, forKey: kDMPlayersPurchaseWardObserverKey)
		}
		if senPlaced != nil {
			dictionary.updateValue(senPlaced! as AnyObject, forKey: kDMPlayersSenPlacedKey)
		}
		if observerUses != nil {
			dictionary.updateValue(observerUses! as AnyObject, forKey: kDMPlayersObserverUsesKey)
		}
		if kills != nil {
			dictionary.updateValue(kills! as AnyObject, forKey: kDMPlayersKillsKey)
		}
		if buybackCount != nil {
			dictionary.updateValue(buybackCount! as AnyObject, forKey: kDMPlayersBuybackCountKey)
		}
		if accountId != nil {
			dictionary.updateValue(accountId! as AnyObject, forKey: kDMPlayersAccountIdKey)
		}
		if cluster != nil {
			dictionary.updateValue(cluster! as AnyObject, forKey: kDMPlayersClusterKey)
		}
		if abilityUpgradesArr?.count > 0 {
			var temp: [AnyObject] = []
			for item in abilityUpgradesArr! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersAbilityUpgradesArrKey)
		}
		if lastHits != nil {
			dictionary.updateValue(lastHits! as AnyObject, forKey: kDMPlayersLastHitsKey)
		}
		if actionsPerMin != nil {
			dictionary.updateValue(actionsPerMin! as AnyObject, forKey: kDMPlayersActionsPerMinKey)
		}
		if playerSlot != nil {
			dictionary.updateValue(playerSlot! as AnyObject, forKey: kDMPlayersPlayerSlotKey)
		}
		if abandons != nil {
			dictionary.updateValue(abandons! as AnyObject, forKey: kDMPlayersAbandonsKey)
		}
		if obsPlaced != nil {
			dictionary.updateValue(obsPlaced! as AnyObject, forKey: kDMPlayersObsPlacedKey)
		}
		if maxHeroHit != nil {
			dictionary.updateValue(maxHeroHit!.dictionaryRepresentation() as AnyObject, forKey: kDMPlayersMaxHeroHitKey)
		}
		if lobbyType != nil {
			dictionary.updateValue(lobbyType! as AnyObject, forKey: kDMPlayersLobbyTypeKey)
		}
		if region != nil {
			dictionary.updateValue(region! as AnyObject, forKey: kDMPlayersRegionKey)
		}
		if goldPerMin != nil {
			dictionary.updateValue(goldPerMin! as AnyObject, forKey: kDMPlayersGoldPerMinKey)
		}
		if goldSpent != nil {
			dictionary.updateValue(goldSpent! as AnyObject, forKey: kDMPlayersGoldSpentKey)
		}
		if obsLeftLog?.count > 0 {
			var temp: [AnyObject] = []
			for item in obsLeftLog! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMPlayersObsLeftLogKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.item2 = aDecoder.decodeObject(forKey: kDMPlayersItem2Key) as? Int
		self.obs = aDecoder.decodeObject(forKey: kDMPlayersObsKey) as? DMObs
		self.additionalUnits = aDecoder.decodeObject(forKey: kDMPlayersAdditionalUnitsKey) as? [DMAdditionalUnits]
		self.isRadiant = aDecoder.decodeBool(forKey: kDMPlayersIsRadiantKey)
		self.creepsStacked = aDecoder.decodeObject(forKey: kDMPlayersCreepsStackedKey) as? Int
		self.dnT = aDecoder.decodeObject(forKey: kDMPlayersDnTKey) as? [DMDnT]
		self.item3 = aDecoder.decodeObject(forKey: kDMPlayersItem3Key) as? Int
		self.heroId = aDecoder.decodeObject(forKey: kDMPlayersHeroIdKey) as? Int
		self.totalXp = aDecoder.decodeObject(forKey: kDMPlayersTotalXpKey) as? Int
		self.laneRole = aDecoder.decodeObject(forKey: kDMPlayersLaneRoleKey) as? Int
		self.itemWin = aDecoder.decodeObject(forKey: kDMPlayersItemWinKey) as? DMItemWin
		self.obsLog = aDecoder.decodeObject(forKey: kDMPlayersObsLogKey) as? [DMObsLog]
		self.heroHits = aDecoder.decodeObject(forKey: kDMPlayersHeroHitsKey) as? DMHeroHits
		self.personaname = aDecoder.decodeObject(forKey: kDMPlayersPersonanameKey) as? String
		self.gold = aDecoder.decodeObject(forKey: kDMPlayersGoldKey) as? Int
		self.assists = aDecoder.decodeObject(forKey: kDMPlayersAssistsKey) as? Int
		self.lifeStateDead = aDecoder.decodeObject(forKey: kDMPlayersLifeStateDeadKey) as? Int
		self.ancientKills = aDecoder.decodeObject(forKey: kDMPlayersAncientKillsKey) as? Int
		self.runePickups = aDecoder.decodeObject(forKey: kDMPlayersRunePickupsKey) as? Int
		self.killsLog = aDecoder.decodeObject(forKey: kDMPlayersKillsLogKey) as? [DMKillsLog]
		self.gameMode = aDecoder.decodeObject(forKey: kDMPlayersGameModeKey) as? Int
		self.kda = aDecoder.decodeObject(forKey: kDMPlayersKdaKey) as? Int
		self.towerKills = aDecoder.decodeObject(forKey: kDMPlayersTowerKillsKey) as? Int
		self.buybackLog = aDecoder.decodeObject(forKey: kDMPlayersBuybackLogKey) as? [DMBuybackLog]
		self.sentryKills = aDecoder.decodeObject(forKey: kDMPlayersSentryKillsKey) as? Int
		self.damageTaken = aDecoder.decodeObject(forKey: kDMPlayersDamageTakenKey) as? DMDamageTaken
		self.sentryUses = aDecoder.decodeObject(forKey: kDMPlayersSentryUsesKey) as? Int
		self.killedBy = aDecoder.decodeObject(forKey: kDMPlayersKilledByKey) as? DMKilledBy
		self.leaverStatus = aDecoder.decodeObject(forKey: kDMPlayersLeaverStatusKey) as? Int
		self.lose = aDecoder.decodeObject(forKey: kDMPlayersLoseKey) as? Int
		self.deaths = aDecoder.decodeObject(forKey: kDMPlayersDeathsKey) as? Int
		self.matchId = aDecoder.decodeObject(forKey: kDMPlayersMatchIdKey) as? Int
		self.laneKills = aDecoder.decodeObject(forKey: kDMPlayersLaneKillsKey) as? Int
		self.necronomiconKills = aDecoder.decodeObject(forKey: kDMPlayersNecronomiconKillsKey) as? Int
		self.item0 = aDecoder.decodeObject(forKey: kDMPlayersItem0Key) as? Int
		self.purchaseTime = aDecoder.decodeObject(forKey: kDMPlayersPurchaseTimeKey) as? DMPurchaseTime
		self.senLog = aDecoder.decodeObject(forKey: kDMPlayersSenLogKey) as? [DMSenLog]
		self.laneEfficiency = aDecoder.decodeObject(forKey: kDMPlayersLaneEfficiencyKey) as? Float
		self.senLeftLog = aDecoder.decodeObject(forKey: kDMPlayersSenLeftLogKey) as? [DMSenLeftLog]
		self.specific = aDecoder.decodeObject(forKey: kDMPlayersSpecificKey) as? DMSpecific
		self.radiantWin = aDecoder.decodeBool(forKey: kDMPlayersRadiantWinKey)
		self.heroKills = aDecoder.decodeObject(forKey: kDMPlayersHeroKillsKey) as? Int
		self.item5 = aDecoder.decodeObject(forKey: kDMPlayersItem5Key) as? Int
		self.denies = aDecoder.decodeObject(forKey: kDMPlayersDeniesKey) as? Int
		self.heroHealing = aDecoder.decodeObject(forKey: kDMPlayersHeroHealingKey) as? Int
		self.duration = aDecoder.decodeObject(forKey: kDMPlayersDurationKey) as? Int
		self.laneEfficiencyPct = aDecoder.decodeObject(forKey: kDMPlayersLaneEfficiencyPctKey) as? Int
		self.lanePos = aDecoder.decodeObject(forKey: kDMPlayersLanePosKey) as? DMLanePos
		self.towerDamage = aDecoder.decodeObject(forKey: kDMPlayersTowerDamageKey) as? Int
		self.itemUsage = aDecoder.decodeObject(forKey: kDMPlayersItemUsageKey) as? DMItemUsage
		self.goldT = aDecoder.decodeObject(forKey: kDMPlayersGoldTKey) as? [DMGoldT]
		self.item1 = aDecoder.decodeObject(forKey: kDMPlayersItem1Key) as? Int
		self.purchaseGem = aDecoder.decodeObject(forKey: kDMPlayersPurchaseGemKey) as? Int
		self.xpT = aDecoder.decodeObject(forKey: kDMPlayersXpTKey) as? [DMXpT]
		self.totalGold = aDecoder.decodeObject(forKey: kDMPlayersTotalGoldKey) as? Int
		self.observerKills = aDecoder.decodeObject(forKey: kDMPlayersObserverKillsKey) as? Int
		self.lastLogin = aDecoder.decodeObject(forKey: kDMPlayersLastLoginKey) as? String
		self.win = aDecoder.decodeObject(forKey: kDMPlayersWinKey) as? Int
		self.times = aDecoder.decodeObject(forKey: kDMPlayersTimesKey) as? [DMTimes]
        self.abilityUses = aDecoder.decodeObject(forKey: kDMPlayersAbilityUsesKey) as? DMAbilityUses
		self.stuns = aDecoder.decodeObject(forKey: kDMPlayersStunsKey) as? Float
		self.patch = aDecoder.decodeObject(forKey: kDMPlayersPatchKey) as? Int
		self.lane = aDecoder.decodeObject(forKey: kDMPlayersLaneKey) as? Int
		self.purchase = aDecoder.decodeObject(forKey: kDMPlayersPurchaseKey) as? DMPurchase
		self.xpPerMin = aDecoder.decodeObject(forKey: kDMPlayersXpPerMinKey) as? Int
		self.purchaseWardSentry = aDecoder.decodeObject(forKey: kDMPlayersPurchaseWardSentryKey) as? Int
		self.neutralKills = aDecoder.decodeObject(forKey: kDMPlayersNeutralKillsKey) as? Int
		self.purchaseTpscroll = aDecoder.decodeObject(forKey: kDMPlayersPurchaseTpscrollKey) as? Int
		self.itemUses = aDecoder.decodeObject(forKey: kDMPlayersItemUsesKey) as? DMItemUses
		self.level = aDecoder.decodeObject(forKey: kDMPlayersLevelKey) as? Int
		self.startTime = aDecoder.decodeObject(forKey: kDMPlayersStartTimeKey) as? Int
		self.roshanKills = aDecoder.decodeObject(forKey: kDMPlayersRoshanKillsKey) as? Int
		self.campsStacked = aDecoder.decodeObject(forKey: kDMPlayersCampsStackedKey) as? Int
		self.posData = aDecoder.decodeObject(forKey: kDMPlayersPosDataKey) as? DMPosData
		self.purchaseLog = aDecoder.decodeObject(forKey: kDMPlayersPurchaseLogKey) as? [DMPurchaseLog]
		self.firstPurchaseTime = aDecoder.decodeObject(forKey: kDMPlayersFirstPurchaseTimeKey) as? DMFirstPurchaseTime
		self.killed = aDecoder.decodeObject(forKey: kDMPlayersKilledKey) as? DMKilled
		self.damage = aDecoder.decodeObject(forKey: kDMPlayersDamageKey) as? DMDamage
		self.lhT = aDecoder.decodeObject(forKey: kDMPlayersLhTKey) as? [DMLhT]
		self.soloCompetitiveRank = aDecoder.decodeObject(forKey: kDMPlayersSoloCompetitiveRankKey) as? String
		self.courierKills = aDecoder.decodeObject(forKey: kDMPlayersCourierKillsKey) as? Int
		self.damageInflictor = aDecoder.decodeObject(forKey: kDMPlayersDamageInflictorKey) as? DMDamageInflictor
		self.item4 = aDecoder.decodeObject(forKey: kDMPlayersItem4Key) as? Int
		self.benchmarks = aDecoder.decodeObject(forKey: kDMPlayersBenchmarksKey) as? DMBenchmarks
		self.heroDamage = aDecoder.decodeObject(forKey: kDMPlayersHeroDamageKey) as? Int
		self.pings = aDecoder.decodeObject(forKey: kDMPlayersPingsKey) as? Int
		self.killsPerMin = aDecoder.decodeObject(forKey: kDMPlayersKillsPerMinKey) as? Float
		self.damageInflictorReceived = aDecoder.decodeObject(forKey: kDMPlayersDamageInflictorReceivedKey) as? DMDamageInflictorReceived
		self.purchaseWardObserver = aDecoder.decodeObject(forKey: kDMPlayersPurchaseWardObserverKey) as? Int
		self.senPlaced = aDecoder.decodeObject(forKey: kDMPlayersSenPlacedKey) as? Int
		self.observerUses = aDecoder.decodeObject(forKey: kDMPlayersObserverUsesKey) as? Int
		self.kills = aDecoder.decodeObject(forKey: kDMPlayersKillsKey) as? Int
		self.buybackCount = aDecoder.decodeObject(forKey: kDMPlayersBuybackCountKey) as? Int
		self.accountId = aDecoder.decodeObject(forKey: kDMPlayersAccountIdKey) as? Int
		self.cluster = aDecoder.decodeObject(forKey: kDMPlayersClusterKey) as? Int
		self.abilityUpgradesArr = aDecoder.decodeObject(forKey: kDMPlayersAbilityUpgradesArrKey) as? [DMAbilityUpgradesArr]
		self.lastHits = aDecoder.decodeObject(forKey: kDMPlayersLastHitsKey) as? Int
		self.actionsPerMin = aDecoder.decodeObject(forKey: kDMPlayersActionsPerMinKey) as? Int
		self.playerSlot = aDecoder.decodeObject(forKey: kDMPlayersPlayerSlotKey) as? Int
		self.abandons = aDecoder.decodeObject(forKey: kDMPlayersAbandonsKey) as? Int
		self.obsPlaced = aDecoder.decodeObject(forKey: kDMPlayersObsPlacedKey) as? Int
		self.maxHeroHit = aDecoder.decodeObject(forKey: kDMPlayersMaxHeroHitKey) as? DMMaxHeroHit
		self.lobbyType = aDecoder.decodeObject(forKey: kDMPlayersLobbyTypeKey) as? Int
		self.region = aDecoder.decodeObject(forKey: kDMPlayersRegionKey) as? Int
		self.goldPerMin = aDecoder.decodeObject(forKey: kDMPlayersGoldPerMinKey) as? Int
		self.goldSpent = aDecoder.decodeObject(forKey: kDMPlayersGoldSpentKey) as? Int
		self.obsLeftLog = aDecoder.decodeObject(forKey: kDMPlayersObsLeftLogKey) as? [DMObsLeftLog]

    }

}
