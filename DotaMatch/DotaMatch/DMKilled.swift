//
//  DMKilled.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMKilled: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMKilledNpcDotaHeroBristlebackKey: String = "npc_dota_hero_bristleback"
	internal let kDMKilledNpcDotaHeroAbaddonKey: String = "npc_dota_hero_abaddon"
	internal let kDMKilledNpcDotaNeutralDarkTrollKey: String = "npc_dota_neutral_dark_troll"
	internal let kDMKilledNpcDotaHeroCrystalMaidenKey: String = "npc_dota_hero_crystal_maiden"
	internal let kDMKilledNpcDotaNeutralGiantWolfKey: String = "npc_dota_neutral_giant_wolf"
	internal let kDMKilledNpcDotaHeroNevermoreKey: String = "npc_dota_hero_nevermore"
	internal let kDMKilledNpcDotaNeutralKoboldTunnelerKey: String = "npc_dota_neutral_kobold_tunneler"
	internal let kDMKilledNpcDotaNeutralMudGolemSplitKey: String = "npc_dota_neutral_mud_golem_split"
	internal let kDMKilledNpcDotaCourierKey: String = "npc_dota_courier"
	internal let kDMKilledNpcDotaNeutralKoboldTaskmasterKey: String = "npc_dota_neutral_kobold_taskmaster"
	internal let kDMKilledNpcDotaGoodguysFortKey: String = "npc_dota_goodguys_fort"
	internal let kDMKilledNpcDotaNeutralGhostKey: String = "npc_dota_neutral_ghost"
	internal let kDMKilledNpcDotaNeutralPolarFurbolgUrsaWarriorKey: String = "npc_dota_neutral_polar_furbolg_ursa_warrior"
	internal let kDMKilledNpcDotaHeroKunkkaKey: String = "npc_dota_hero_kunkka"
	internal let kDMKilledNpcDotaBadguysTower1MidKey: String = "npc_dota_badguys_tower1_mid"
	internal let kDMKilledNpcDotaNeutralRockGolemKey: String = "npc_dota_neutral_rock_golem"
	internal let kDMKilledNpcDotaNeutralKoboldKey: String = "npc_dota_neutral_kobold"
	internal let kDMKilledNpcDotaBadguysTower1BotKey: String = "npc_dota_badguys_tower1_bot"
	internal let kDMKilledNpcDotaNeutralSatyrTricksterKey: String = "npc_dota_neutral_satyr_trickster"
	internal let kDMKilledNpcDotaNeutralEnragedWildkinKey: String = "npc_dota_neutral_enraged_wildkin"
	internal let kDMKilledNpcDotaNeutralBlackDrakeKey: String = "npc_dota_neutral_black_drake"
	internal let kDMKilledNpcDotaHeroVengefulspiritKey: String = "npc_dota_hero_vengefulspirit"
	internal let kDMKilledNpcDotaGoodguysMeleeRaxMidKey: String = "npc_dota_goodguys_melee_rax_mid"
	internal let kDMKilledNpcDotaBadguysTower3MidKey: String = "npc_dota_badguys_tower3_mid"
	internal let kDMKilledNpcDotaNeutralHarpyStormKey: String = "npc_dota_neutral_harpy_storm"
	internal let kDMKilledNpcDotaBadguysTower2MidKey: String = "npc_dota_badguys_tower2_mid"
	internal let kDMKilledNpcDotaCreepBadguysMeleeKey: String = "npc_dota_creep_badguys_melee"
	internal let kDMKilledNpcDotaNeutralOgreMaulerKey: String = "npc_dota_neutral_ogre_mauler"
	internal let kDMKilledNpcDotaGoodguysTower1BotKey: String = "npc_dota_goodguys_tower1_bot"
	internal let kDMKilledNpcDotaNeutralGraniteGolemKey: String = "npc_dota_neutral_granite_golem"
	internal let kDMKilledNpcDotaNeutralFelBeastKey: String = "npc_dota_neutral_fel_beast"
	internal let kDMKilledNpcDotaNeutralGnollAssassinKey: String = "npc_dota_neutral_gnoll_assassin"
	internal let kDMKilledNpcDotaNeutralBlackDragonKey: String = "npc_dota_neutral_black_dragon"
	internal let kDMKilledNpcDotaNeutralMudGolemKey: String = "npc_dota_neutral_mud_golem"
	internal let kDMKilledNpcDotaSentryWardsKey: String = "npc_dota_sentry_wards"
	internal let kDMKilledNpcDotaNeutralCentaurKhanKey: String = "npc_dota_neutral_centaur_khan"
	internal let kDMKilledNpcDotaHeroViperKey: String = "npc_dota_hero_viper"
	internal let kDMKilledNpcDotaNeutralBigThunderLizardKey: String = "npc_dota_neutral_big_thunder_lizard"
	internal let kDMKilledNpcDotaNeutralPolarFurbolgChampionKey: String = "npc_dota_neutral_polar_furbolg_champion"
	internal let kDMKilledNpcDotaNeutralAlphaWolfKey: String = "npc_dota_neutral_alpha_wolf"
	internal let kDMKilledNpcDotaNeutralForestTrollHighPriestKey: String = "npc_dota_neutral_forest_troll_high_priest"
	internal let kDMKilledNpcDotaGoodguysTower3MidKey: String = "npc_dota_goodguys_tower3_mid"
	internal let kDMKilledNpcDotaCreepBadguysRangedUpgradedKey: String = "npc_dota_creep_badguys_ranged_upgraded"
	internal let kDMKilledNpcDotaNeutralCentaurOutrunnerKey: String = "npc_dota_neutral_centaur_outrunner"
	internal let kDMKilledNpcDotaGoodguysTower2TopKey: String = "npc_dota_goodguys_tower2_top"
	internal let kDMKilledNpcDotaGoodguysFillersKey: String = "npc_dota_goodguys_fillers"
	internal let kDMKilledNpcDotaDarkTrollWarlordSkeletonWarriorKey: String = "npc_dota_dark_troll_warlord_skeleton_warrior"
	internal let kDMKilledNpcDotaNeutralWildkinKey: String = "npc_dota_neutral_wildkin"
	internal let kDMKilledNpcDotaNeutralHarpyScoutKey: String = "npc_dota_neutral_harpy_scout"
	internal let kDMKilledNpcDotaGoodguysTower2MidKey: String = "npc_dota_goodguys_tower2_mid"
	internal let kDMKilledNpcDotaNeutralSatyrSoulstealerKey: String = "npc_dota_neutral_satyr_soulstealer"
	internal let kDMKilledNpcDotaGoodguysTower1MidKey: String = "npc_dota_goodguys_tower1_mid"
	internal let kDMKilledNpcDotaBadguysTower2BotKey: String = "npc_dota_badguys_tower2_bot"
	internal let kDMKilledNpcDotaNeutralSatyrHellcallerKey: String = "npc_dota_neutral_satyr_hellcaller"
	internal let kDMKilledNpcDotaCreepGoodguysMeleeKey: String = "npc_dota_creep_goodguys_melee"
	internal let kDMKilledNpcDotaGoodguysRangeRaxMidKey: String = "npc_dota_goodguys_range_rax_mid"
	internal let kDMKilledNpcDotaCreepBadguysRangedKey: String = "npc_dota_creep_badguys_ranged"
	internal let kDMKilledNpcDotaJuggernautHealingWardKey: String = "npc_dota_juggernaut_healing_ward"
	internal let kDMKilledNpcDotaObserverWardsKey: String = "npc_dota_observer_wards"
	internal let kDMKilledNpcDotaNeutralSmallThunderLizardKey: String = "npc_dota_neutral_small_thunder_lizard"
	internal let kDMKilledNpcDotaNeutralDarkTrollWarlordKey: String = "npc_dota_neutral_dark_troll_warlord"
	internal let kDMKilledNpcDotaBadguysTower2TopKey: String = "npc_dota_badguys_tower2_top"
	internal let kDMKilledNpcDotaBadguysSiegeUpgradedKey: String = "npc_dota_badguys_siege_upgraded"
	internal let kDMKilledNpcDotaGoodguysSiegeKey: String = "npc_dota_goodguys_siege"
	internal let kDMKilledNpcDotaGoodguysTower4Key: String = "npc_dota_goodguys_tower4"
	internal let kDMKilledNpcDotaRoshanKey: String = "npc_dota_roshan"
	internal let kDMKilledNpcDotaHeroJuggernautKey: String = "npc_dota_hero_juggernaut"
	internal let kDMKilledNpcDotaBadguysSiegeKey: String = "npc_dota_badguys_siege"
	internal let kDMKilledNpcDotaNeutralOgreMagiKey: String = "npc_dota_neutral_ogre_magi"
	internal let kDMKilledNpcDotaNeutralForestTrollBerserkerKey: String = "npc_dota_neutral_forest_troll_berserker"
	internal let kDMKilledNpcDotaCreepGoodguysRangedKey: String = "npc_dota_creep_goodguys_ranged"
	internal let kDMKilledNpcDotaHeroArcWardenKey: String = "npc_dota_hero_arc_warden"
	internal let kDMKilledNpcDotaHeroEmberSpiritKey: String = "npc_dota_hero_ember_spirit"


    // MARK: Properties
	open var npcDotaHeroBristleback: Int?
	open var npcDotaHeroAbaddon: Int?
	open var npcDotaNeutralDarkTroll: Int?
	open var npcDotaHeroCrystalMaiden: Int?
	open var npcDotaNeutralGiantWolf: Int?
	open var npcDotaHeroNevermore: Int?
	open var npcDotaNeutralKoboldTunneler: Int?
	open var npcDotaNeutralMudGolemSplit: Int?
	open var npcDotaCourier: Int?
	open var npcDotaNeutralKoboldTaskmaster: Int?
	open var npcDotaGoodguysFort: Int?
	open var npcDotaNeutralGhost: Int?
	open var npcDotaNeutralPolarFurbolgUrsaWarrior: Int?
	open var npcDotaHeroKunkka: Int?
	open var npcDotaBadguysTower1Mid: Int?
	open var npcDotaNeutralRockGolem: Int?
	open var npcDotaNeutralKobold: Int?
	open var npcDotaBadguysTower1Bot: Int?
	open var npcDotaNeutralSatyrTrickster: Int?
	open var npcDotaNeutralEnragedWildkin: Int?
	open var npcDotaNeutralBlackDrake: Int?
	open var npcDotaHeroVengefulspirit: Int?
	open var npcDotaGoodguysMeleeRaxMid: Int?
	open var npcDotaBadguysTower3Mid: Int?
	open var npcDotaNeutralHarpyStorm: Int?
	open var npcDotaBadguysTower2Mid: Int?
	open var npcDotaCreepBadguysMelee: Int?
	open var npcDotaNeutralOgreMauler: Int?
	open var npcDotaGoodguysTower1Bot: Int?
	open var npcDotaNeutralGraniteGolem: Int?
	open var npcDotaNeutralFelBeast: Int?
	open var npcDotaNeutralGnollAssassin: Int?
	open var npcDotaNeutralBlackDragon: Int?
	open var npcDotaNeutralMudGolem: Int?
	open var npcDotaSentryWards: Int?
	open var npcDotaNeutralCentaurKhan: Int?
	open var npcDotaHeroViper: Int?
	open var npcDotaNeutralBigThunderLizard: Int?
	open var npcDotaNeutralPolarFurbolgChampion: Int?
	open var npcDotaNeutralAlphaWolf: Int?
	open var npcDotaNeutralForestTrollHighPriest: Int?
	open var npcDotaGoodguysTower3Mid: Int?
	open var npcDotaCreepBadguysRangedUpgraded: Int?
	open var npcDotaNeutralCentaurOutrunner: Int?
	open var npcDotaGoodguysTower2Top: Int?
	open var npcDotaGoodguysFillers: Int?
	open var npcDotaDarkTrollWarlordSkeletonWarrior: Int?
	open var npcDotaNeutralWildkin: Int?
	open var npcDotaNeutralHarpyScout: Int?
	open var npcDotaGoodguysTower2Mid: Int?
	open var npcDotaNeutralSatyrSoulstealer: Int?
	open var npcDotaGoodguysTower1Mid: Int?
	open var npcDotaBadguysTower2Bot: Int?
	open var npcDotaNeutralSatyrHellcaller: Int?
	open var npcDotaCreepGoodguysMelee: Int?
	open var npcDotaGoodguysRangeRaxMid: Int?
	open var npcDotaCreepBadguysRanged: Int?
	open var npcDotaJuggernautHealingWard: Int?
	open var npcDotaObserverWards: Int?
	open var npcDotaNeutralSmallThunderLizard: Int?
	open var npcDotaNeutralDarkTrollWarlord: Int?
	open var npcDotaBadguysTower2Top: Int?
	open var npcDotaBadguysSiegeUpgraded: Int?
	open var npcDotaGoodguysSiege: Int?
	open var npcDotaGoodguysTower4: Int?
	open var npcDotaRoshan: Int?
	open var npcDotaHeroJuggernaut: Int?
	open var npcDotaBadguysSiege: Int?
	open var npcDotaNeutralOgreMagi: Int?
	open var npcDotaNeutralForestTrollBerserker: Int?
	open var npcDotaCreepGoodguysRanged: Int?
	open var npcDotaHeroArcWarden: Int?
	open var npcDotaHeroEmberSpirit: Int?


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
		npcDotaHeroBristleback = json[kDMKilledNpcDotaHeroBristlebackKey].int
		npcDotaHeroAbaddon = json[kDMKilledNpcDotaHeroAbaddonKey].int
		npcDotaNeutralDarkTroll = json[kDMKilledNpcDotaNeutralDarkTrollKey].int
		npcDotaHeroCrystalMaiden = json[kDMKilledNpcDotaHeroCrystalMaidenKey].int
		npcDotaNeutralGiantWolf = json[kDMKilledNpcDotaNeutralGiantWolfKey].int
		npcDotaHeroNevermore = json[kDMKilledNpcDotaHeroNevermoreKey].int
		npcDotaNeutralKoboldTunneler = json[kDMKilledNpcDotaNeutralKoboldTunnelerKey].int
		npcDotaNeutralMudGolemSplit = json[kDMKilledNpcDotaNeutralMudGolemSplitKey].int
		npcDotaCourier = json[kDMKilledNpcDotaCourierKey].int
		npcDotaNeutralKoboldTaskmaster = json[kDMKilledNpcDotaNeutralKoboldTaskmasterKey].int
		npcDotaGoodguysFort = json[kDMKilledNpcDotaGoodguysFortKey].int
		npcDotaNeutralGhost = json[kDMKilledNpcDotaNeutralGhostKey].int
		npcDotaNeutralPolarFurbolgUrsaWarrior = json[kDMKilledNpcDotaNeutralPolarFurbolgUrsaWarriorKey].int
		npcDotaHeroKunkka = json[kDMKilledNpcDotaHeroKunkkaKey].int
		npcDotaBadguysTower1Mid = json[kDMKilledNpcDotaBadguysTower1MidKey].int
		npcDotaNeutralRockGolem = json[kDMKilledNpcDotaNeutralRockGolemKey].int
		npcDotaNeutralKobold = json[kDMKilledNpcDotaNeutralKoboldKey].int
		npcDotaBadguysTower1Bot = json[kDMKilledNpcDotaBadguysTower1BotKey].int
		npcDotaNeutralSatyrTrickster = json[kDMKilledNpcDotaNeutralSatyrTricksterKey].int
		npcDotaNeutralEnragedWildkin = json[kDMKilledNpcDotaNeutralEnragedWildkinKey].int
		npcDotaNeutralBlackDrake = json[kDMKilledNpcDotaNeutralBlackDrakeKey].int
		npcDotaHeroVengefulspirit = json[kDMKilledNpcDotaHeroVengefulspiritKey].int
		npcDotaGoodguysMeleeRaxMid = json[kDMKilledNpcDotaGoodguysMeleeRaxMidKey].int
		npcDotaBadguysTower3Mid = json[kDMKilledNpcDotaBadguysTower3MidKey].int
		npcDotaNeutralHarpyStorm = json[kDMKilledNpcDotaNeutralHarpyStormKey].int
		npcDotaBadguysTower2Mid = json[kDMKilledNpcDotaBadguysTower2MidKey].int
		npcDotaCreepBadguysMelee = json[kDMKilledNpcDotaCreepBadguysMeleeKey].int
		npcDotaNeutralOgreMauler = json[kDMKilledNpcDotaNeutralOgreMaulerKey].int
		npcDotaGoodguysTower1Bot = json[kDMKilledNpcDotaGoodguysTower1BotKey].int
		npcDotaNeutralGraniteGolem = json[kDMKilledNpcDotaNeutralGraniteGolemKey].int
		npcDotaNeutralFelBeast = json[kDMKilledNpcDotaNeutralFelBeastKey].int
		npcDotaNeutralGnollAssassin = json[kDMKilledNpcDotaNeutralGnollAssassinKey].int
		npcDotaNeutralBlackDragon = json[kDMKilledNpcDotaNeutralBlackDragonKey].int
		npcDotaNeutralMudGolem = json[kDMKilledNpcDotaNeutralMudGolemKey].int
		npcDotaSentryWards = json[kDMKilledNpcDotaSentryWardsKey].int
		npcDotaNeutralCentaurKhan = json[kDMKilledNpcDotaNeutralCentaurKhanKey].int
		npcDotaHeroViper = json[kDMKilledNpcDotaHeroViperKey].int
		npcDotaNeutralBigThunderLizard = json[kDMKilledNpcDotaNeutralBigThunderLizardKey].int
		npcDotaNeutralPolarFurbolgChampion = json[kDMKilledNpcDotaNeutralPolarFurbolgChampionKey].int
		npcDotaNeutralAlphaWolf = json[kDMKilledNpcDotaNeutralAlphaWolfKey].int
		npcDotaNeutralForestTrollHighPriest = json[kDMKilledNpcDotaNeutralForestTrollHighPriestKey].int
		npcDotaGoodguysTower3Mid = json[kDMKilledNpcDotaGoodguysTower3MidKey].int
		npcDotaCreepBadguysRangedUpgraded = json[kDMKilledNpcDotaCreepBadguysRangedUpgradedKey].int
		npcDotaNeutralCentaurOutrunner = json[kDMKilledNpcDotaNeutralCentaurOutrunnerKey].int
		npcDotaGoodguysTower2Top = json[kDMKilledNpcDotaGoodguysTower2TopKey].int
		npcDotaGoodguysFillers = json[kDMKilledNpcDotaGoodguysFillersKey].int
		npcDotaDarkTrollWarlordSkeletonWarrior = json[kDMKilledNpcDotaDarkTrollWarlordSkeletonWarriorKey].int
		npcDotaNeutralWildkin = json[kDMKilledNpcDotaNeutralWildkinKey].int
		npcDotaNeutralHarpyScout = json[kDMKilledNpcDotaNeutralHarpyScoutKey].int
		npcDotaGoodguysTower2Mid = json[kDMKilledNpcDotaGoodguysTower2MidKey].int
		npcDotaNeutralSatyrSoulstealer = json[kDMKilledNpcDotaNeutralSatyrSoulstealerKey].int
		npcDotaGoodguysTower1Mid = json[kDMKilledNpcDotaGoodguysTower1MidKey].int
		npcDotaBadguysTower2Bot = json[kDMKilledNpcDotaBadguysTower2BotKey].int
		npcDotaNeutralSatyrHellcaller = json[kDMKilledNpcDotaNeutralSatyrHellcallerKey].int
		npcDotaCreepGoodguysMelee = json[kDMKilledNpcDotaCreepGoodguysMeleeKey].int
		npcDotaGoodguysRangeRaxMid = json[kDMKilledNpcDotaGoodguysRangeRaxMidKey].int
		npcDotaCreepBadguysRanged = json[kDMKilledNpcDotaCreepBadguysRangedKey].int
		npcDotaJuggernautHealingWard = json[kDMKilledNpcDotaJuggernautHealingWardKey].int
		npcDotaObserverWards = json[kDMKilledNpcDotaObserverWardsKey].int
		npcDotaNeutralSmallThunderLizard = json[kDMKilledNpcDotaNeutralSmallThunderLizardKey].int
		npcDotaNeutralDarkTrollWarlord = json[kDMKilledNpcDotaNeutralDarkTrollWarlordKey].int
		npcDotaBadguysTower2Top = json[kDMKilledNpcDotaBadguysTower2TopKey].int
		npcDotaBadguysSiegeUpgraded = json[kDMKilledNpcDotaBadguysSiegeUpgradedKey].int
		npcDotaGoodguysSiege = json[kDMKilledNpcDotaGoodguysSiegeKey].int
		npcDotaGoodguysTower4 = json[kDMKilledNpcDotaGoodguysTower4Key].int
		npcDotaRoshan = json[kDMKilledNpcDotaRoshanKey].int
		npcDotaHeroJuggernaut = json[kDMKilledNpcDotaHeroJuggernautKey].int
		npcDotaBadguysSiege = json[kDMKilledNpcDotaBadguysSiegeKey].int
		npcDotaNeutralOgreMagi = json[kDMKilledNpcDotaNeutralOgreMagiKey].int
		npcDotaNeutralForestTrollBerserker = json[kDMKilledNpcDotaNeutralForestTrollBerserkerKey].int
		npcDotaCreepGoodguysRanged = json[kDMKilledNpcDotaCreepGoodguysRangedKey].int
		npcDotaHeroArcWarden = json[kDMKilledNpcDotaHeroArcWardenKey].int
		npcDotaHeroEmberSpirit = json[kDMKilledNpcDotaHeroEmberSpiritKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if npcDotaHeroBristleback != nil {
			dictionary.updateValue(npcDotaHeroBristleback! as AnyObject, forKey: kDMKilledNpcDotaHeroBristlebackKey)
		}
		if npcDotaHeroAbaddon != nil {
			dictionary.updateValue(npcDotaHeroAbaddon! as AnyObject, forKey: kDMKilledNpcDotaHeroAbaddonKey)
		}
		if npcDotaNeutralDarkTroll != nil {
			dictionary.updateValue(npcDotaNeutralDarkTroll! as AnyObject, forKey: kDMKilledNpcDotaNeutralDarkTrollKey)
		}
		if npcDotaHeroCrystalMaiden != nil {
			dictionary.updateValue(npcDotaHeroCrystalMaiden! as AnyObject, forKey: kDMKilledNpcDotaHeroCrystalMaidenKey)
		}
		if npcDotaNeutralGiantWolf != nil {
			dictionary.updateValue(npcDotaNeutralGiantWolf! as AnyObject, forKey: kDMKilledNpcDotaNeutralGiantWolfKey)
		}
		if npcDotaHeroNevermore != nil {
			dictionary.updateValue(npcDotaHeroNevermore! as AnyObject, forKey: kDMKilledNpcDotaHeroNevermoreKey)
		}
		if npcDotaNeutralKoboldTunneler != nil {
			dictionary.updateValue(npcDotaNeutralKoboldTunneler! as AnyObject, forKey: kDMKilledNpcDotaNeutralKoboldTunnelerKey)
		}
		if npcDotaNeutralMudGolemSplit != nil {
			dictionary.updateValue(npcDotaNeutralMudGolemSplit! as AnyObject, forKey: kDMKilledNpcDotaNeutralMudGolemSplitKey)
		}
		if npcDotaCourier != nil {
			dictionary.updateValue(npcDotaCourier! as AnyObject, forKey: kDMKilledNpcDotaCourierKey)
		}
		if npcDotaNeutralKoboldTaskmaster != nil {
			dictionary.updateValue(npcDotaNeutralKoboldTaskmaster! as AnyObject, forKey: kDMKilledNpcDotaNeutralKoboldTaskmasterKey)
		}
		if npcDotaGoodguysFort != nil {
			dictionary.updateValue(npcDotaGoodguysFort! as AnyObject, forKey: kDMKilledNpcDotaGoodguysFortKey)
		}
		if npcDotaNeutralGhost != nil {
			dictionary.updateValue(npcDotaNeutralGhost! as AnyObject, forKey: kDMKilledNpcDotaNeutralGhostKey)
		}
		if npcDotaNeutralPolarFurbolgUrsaWarrior != nil {
			dictionary.updateValue(npcDotaNeutralPolarFurbolgUrsaWarrior! as AnyObject, forKey: kDMKilledNpcDotaNeutralPolarFurbolgUrsaWarriorKey)
		}
		if npcDotaHeroKunkka != nil {
			dictionary.updateValue(npcDotaHeroKunkka! as AnyObject, forKey: kDMKilledNpcDotaHeroKunkkaKey)
		}
		if npcDotaBadguysTower1Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower1Mid! as AnyObject, forKey: kDMKilledNpcDotaBadguysTower1MidKey)
		}
		if npcDotaNeutralRockGolem != nil {
			dictionary.updateValue(npcDotaNeutralRockGolem! as AnyObject, forKey: kDMKilledNpcDotaNeutralRockGolemKey)
		}
		if npcDotaNeutralKobold != nil {
			dictionary.updateValue(npcDotaNeutralKobold! as AnyObject, forKey: kDMKilledNpcDotaNeutralKoboldKey)
		}
		if npcDotaBadguysTower1Bot != nil {
			dictionary.updateValue(npcDotaBadguysTower1Bot! as AnyObject, forKey: kDMKilledNpcDotaBadguysTower1BotKey)
		}
		if npcDotaNeutralSatyrTrickster != nil {
			dictionary.updateValue(npcDotaNeutralSatyrTrickster! as AnyObject, forKey: kDMKilledNpcDotaNeutralSatyrTricksterKey)
		}
		if npcDotaNeutralEnragedWildkin != nil {
			dictionary.updateValue(npcDotaNeutralEnragedWildkin! as AnyObject, forKey: kDMKilledNpcDotaNeutralEnragedWildkinKey)
		}
		if npcDotaNeutralBlackDrake != nil {
			dictionary.updateValue(npcDotaNeutralBlackDrake! as AnyObject, forKey: kDMKilledNpcDotaNeutralBlackDrakeKey)
		}
		if npcDotaHeroVengefulspirit != nil {
			dictionary.updateValue(npcDotaHeroVengefulspirit! as AnyObject, forKey: kDMKilledNpcDotaHeroVengefulspiritKey)
		}
		if npcDotaGoodguysMeleeRaxMid != nil {
			dictionary.updateValue(npcDotaGoodguysMeleeRaxMid! as AnyObject, forKey: kDMKilledNpcDotaGoodguysMeleeRaxMidKey)
		}
		if npcDotaBadguysTower3Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower3Mid! as AnyObject, forKey: kDMKilledNpcDotaBadguysTower3MidKey)
		}
		if npcDotaNeutralHarpyStorm != nil {
			dictionary.updateValue(npcDotaNeutralHarpyStorm! as AnyObject, forKey: kDMKilledNpcDotaNeutralHarpyStormKey)
		}
		if npcDotaBadguysTower2Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower2Mid! as AnyObject, forKey: kDMKilledNpcDotaBadguysTower2MidKey)
		}
		if npcDotaCreepBadguysMelee != nil {
			dictionary.updateValue(npcDotaCreepBadguysMelee! as AnyObject, forKey: kDMKilledNpcDotaCreepBadguysMeleeKey)
		}
		if npcDotaNeutralOgreMauler != nil {
			dictionary.updateValue(npcDotaNeutralOgreMauler! as AnyObject, forKey: kDMKilledNpcDotaNeutralOgreMaulerKey)
		}
		if npcDotaGoodguysTower1Bot != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Bot! as AnyObject, forKey: kDMKilledNpcDotaGoodguysTower1BotKey)
		}
		if npcDotaNeutralGraniteGolem != nil {
			dictionary.updateValue(npcDotaNeutralGraniteGolem! as AnyObject, forKey: kDMKilledNpcDotaNeutralGraniteGolemKey)
		}
		if npcDotaNeutralFelBeast != nil {
			dictionary.updateValue(npcDotaNeutralFelBeast! as AnyObject, forKey: kDMKilledNpcDotaNeutralFelBeastKey)
		}
		if npcDotaNeutralGnollAssassin != nil {
			dictionary.updateValue(npcDotaNeutralGnollAssassin! as AnyObject, forKey: kDMKilledNpcDotaNeutralGnollAssassinKey)
		}
		if npcDotaNeutralBlackDragon != nil {
			dictionary.updateValue(npcDotaNeutralBlackDragon! as AnyObject, forKey: kDMKilledNpcDotaNeutralBlackDragonKey)
		}
		if npcDotaNeutralMudGolem != nil {
			dictionary.updateValue(npcDotaNeutralMudGolem! as AnyObject, forKey: kDMKilledNpcDotaNeutralMudGolemKey)
		}
		if npcDotaSentryWards != nil {
			dictionary.updateValue(npcDotaSentryWards! as AnyObject, forKey: kDMKilledNpcDotaSentryWardsKey)
		}
		if npcDotaNeutralCentaurKhan != nil {
			dictionary.updateValue(npcDotaNeutralCentaurKhan! as AnyObject, forKey: kDMKilledNpcDotaNeutralCentaurKhanKey)
		}
		if npcDotaHeroViper != nil {
			dictionary.updateValue(npcDotaHeroViper! as AnyObject, forKey: kDMKilledNpcDotaHeroViperKey)
		}
		if npcDotaNeutralBigThunderLizard != nil {
			dictionary.updateValue(npcDotaNeutralBigThunderLizard! as AnyObject, forKey: kDMKilledNpcDotaNeutralBigThunderLizardKey)
		}
		if npcDotaNeutralPolarFurbolgChampion != nil {
			dictionary.updateValue(npcDotaNeutralPolarFurbolgChampion! as AnyObject, forKey: kDMKilledNpcDotaNeutralPolarFurbolgChampionKey)
		}
		if npcDotaNeutralAlphaWolf != nil {
			dictionary.updateValue(npcDotaNeutralAlphaWolf! as AnyObject, forKey: kDMKilledNpcDotaNeutralAlphaWolfKey)
		}
		if npcDotaNeutralForestTrollHighPriest != nil {
			dictionary.updateValue(npcDotaNeutralForestTrollHighPriest! as AnyObject, forKey: kDMKilledNpcDotaNeutralForestTrollHighPriestKey)
		}
		if npcDotaGoodguysTower3Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower3Mid! as AnyObject, forKey: kDMKilledNpcDotaGoodguysTower3MidKey)
		}
		if npcDotaCreepBadguysRangedUpgraded != nil {
			dictionary.updateValue(npcDotaCreepBadguysRangedUpgraded! as AnyObject, forKey: kDMKilledNpcDotaCreepBadguysRangedUpgradedKey)
		}
		if npcDotaNeutralCentaurOutrunner != nil {
			dictionary.updateValue(npcDotaNeutralCentaurOutrunner! as AnyObject, forKey: kDMKilledNpcDotaNeutralCentaurOutrunnerKey)
		}
		if npcDotaGoodguysTower2Top != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Top! as AnyObject, forKey: kDMKilledNpcDotaGoodguysTower2TopKey)
		}
		if npcDotaGoodguysFillers != nil {
			dictionary.updateValue(npcDotaGoodguysFillers! as AnyObject, forKey: kDMKilledNpcDotaGoodguysFillersKey)
		}
		if npcDotaDarkTrollWarlordSkeletonWarrior != nil {
			dictionary.updateValue(npcDotaDarkTrollWarlordSkeletonWarrior! as AnyObject, forKey: kDMKilledNpcDotaDarkTrollWarlordSkeletonWarriorKey)
		}
		if npcDotaNeutralWildkin != nil {
			dictionary.updateValue(npcDotaNeutralWildkin! as AnyObject, forKey: kDMKilledNpcDotaNeutralWildkinKey)
		}
		if npcDotaNeutralHarpyScout != nil {
			dictionary.updateValue(npcDotaNeutralHarpyScout! as AnyObject, forKey: kDMKilledNpcDotaNeutralHarpyScoutKey)
		}
		if npcDotaGoodguysTower2Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Mid! as AnyObject, forKey: kDMKilledNpcDotaGoodguysTower2MidKey)
		}
		if npcDotaNeutralSatyrSoulstealer != nil {
			dictionary.updateValue(npcDotaNeutralSatyrSoulstealer! as AnyObject, forKey: kDMKilledNpcDotaNeutralSatyrSoulstealerKey)
		}
		if npcDotaGoodguysTower1Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Mid! as AnyObject, forKey: kDMKilledNpcDotaGoodguysTower1MidKey)
		}
		if npcDotaBadguysTower2Bot != nil {
			dictionary.updateValue(npcDotaBadguysTower2Bot! as AnyObject, forKey: kDMKilledNpcDotaBadguysTower2BotKey)
		}
		if npcDotaNeutralSatyrHellcaller != nil {
			dictionary.updateValue(npcDotaNeutralSatyrHellcaller! as AnyObject, forKey: kDMKilledNpcDotaNeutralSatyrHellcallerKey)
		}
		if npcDotaCreepGoodguysMelee != nil {
			dictionary.updateValue(npcDotaCreepGoodguysMelee! as AnyObject, forKey: kDMKilledNpcDotaCreepGoodguysMeleeKey)
		}
		if npcDotaGoodguysRangeRaxMid != nil {
			dictionary.updateValue(npcDotaGoodguysRangeRaxMid! as AnyObject, forKey: kDMKilledNpcDotaGoodguysRangeRaxMidKey)
		}
		if npcDotaCreepBadguysRanged != nil {
			dictionary.updateValue(npcDotaCreepBadguysRanged! as AnyObject, forKey: kDMKilledNpcDotaCreepBadguysRangedKey)
		}
		if npcDotaJuggernautHealingWard != nil {
			dictionary.updateValue(npcDotaJuggernautHealingWard! as AnyObject, forKey: kDMKilledNpcDotaJuggernautHealingWardKey)
		}
		if npcDotaObserverWards != nil {
			dictionary.updateValue(npcDotaObserverWards! as AnyObject, forKey: kDMKilledNpcDotaObserverWardsKey)
		}
		if npcDotaNeutralSmallThunderLizard != nil {
			dictionary.updateValue(npcDotaNeutralSmallThunderLizard! as AnyObject, forKey: kDMKilledNpcDotaNeutralSmallThunderLizardKey)
		}
		if npcDotaNeutralDarkTrollWarlord != nil {
			dictionary.updateValue(npcDotaNeutralDarkTrollWarlord! as AnyObject, forKey: kDMKilledNpcDotaNeutralDarkTrollWarlordKey)
		}
		if npcDotaBadguysTower2Top != nil {
			dictionary.updateValue(npcDotaBadguysTower2Top! as AnyObject, forKey: kDMKilledNpcDotaBadguysTower2TopKey)
		}
		if npcDotaBadguysSiegeUpgraded != nil {
			dictionary.updateValue(npcDotaBadguysSiegeUpgraded! as AnyObject, forKey: kDMKilledNpcDotaBadguysSiegeUpgradedKey)
		}
		if npcDotaGoodguysSiege != nil {
			dictionary.updateValue(npcDotaGoodguysSiege! as AnyObject, forKey: kDMKilledNpcDotaGoodguysSiegeKey)
		}
		if npcDotaGoodguysTower4 != nil {
			dictionary.updateValue(npcDotaGoodguysTower4! as AnyObject, forKey: kDMKilledNpcDotaGoodguysTower4Key)
		}
		if npcDotaRoshan != nil {
			dictionary.updateValue(npcDotaRoshan! as AnyObject, forKey: kDMKilledNpcDotaRoshanKey)
		}
		if npcDotaHeroJuggernaut != nil {
			dictionary.updateValue(npcDotaHeroJuggernaut! as AnyObject, forKey: kDMKilledNpcDotaHeroJuggernautKey)
		}
		if npcDotaBadguysSiege != nil {
			dictionary.updateValue(npcDotaBadguysSiege! as AnyObject, forKey: kDMKilledNpcDotaBadguysSiegeKey)
		}
		if npcDotaNeutralOgreMagi != nil {
			dictionary.updateValue(npcDotaNeutralOgreMagi! as AnyObject, forKey: kDMKilledNpcDotaNeutralOgreMagiKey)
		}
		if npcDotaNeutralForestTrollBerserker != nil {
			dictionary.updateValue(npcDotaNeutralForestTrollBerserker! as AnyObject, forKey: kDMKilledNpcDotaNeutralForestTrollBerserkerKey)
		}
		if npcDotaCreepGoodguysRanged != nil {
			dictionary.updateValue(npcDotaCreepGoodguysRanged! as AnyObject, forKey: kDMKilledNpcDotaCreepGoodguysRangedKey)
		}
		if npcDotaHeroArcWarden != nil {
			dictionary.updateValue(npcDotaHeroArcWarden! as AnyObject, forKey: kDMKilledNpcDotaHeroArcWardenKey)
		}
		if npcDotaHeroEmberSpirit != nil {
			dictionary.updateValue(npcDotaHeroEmberSpirit! as AnyObject, forKey: kDMKilledNpcDotaHeroEmberSpiritKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.npcDotaHeroBristleback = aDecoder.decodeObject(forKey: kDMKilledNpcDotaHeroBristlebackKey) as? Int
		self.npcDotaHeroAbaddon = aDecoder.decodeObject(forKey: kDMKilledNpcDotaHeroAbaddonKey) as? Int
		self.npcDotaNeutralDarkTroll = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralDarkTrollKey) as? Int
		self.npcDotaHeroCrystalMaiden = aDecoder.decodeObject(forKey: kDMKilledNpcDotaHeroCrystalMaidenKey) as? Int
		self.npcDotaNeutralGiantWolf = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralGiantWolfKey) as? Int
		self.npcDotaHeroNevermore = aDecoder.decodeObject(forKey: kDMKilledNpcDotaHeroNevermoreKey) as? Int
		self.npcDotaNeutralKoboldTunneler = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralKoboldTunnelerKey) as? Int
		self.npcDotaNeutralMudGolemSplit = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralMudGolemSplitKey) as? Int
		self.npcDotaCourier = aDecoder.decodeObject(forKey: kDMKilledNpcDotaCourierKey) as? Int
		self.npcDotaNeutralKoboldTaskmaster = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralKoboldTaskmasterKey) as? Int
		self.npcDotaGoodguysFort = aDecoder.decodeObject(forKey: kDMKilledNpcDotaGoodguysFortKey) as? Int
		self.npcDotaNeutralGhost = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralGhostKey) as? Int
		self.npcDotaNeutralPolarFurbolgUrsaWarrior = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralPolarFurbolgUrsaWarriorKey) as? Int
		self.npcDotaHeroKunkka = aDecoder.decodeObject(forKey: kDMKilledNpcDotaHeroKunkkaKey) as? Int
		self.npcDotaBadguysTower1Mid = aDecoder.decodeObject(forKey: kDMKilledNpcDotaBadguysTower1MidKey) as? Int
		self.npcDotaNeutralRockGolem = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralRockGolemKey) as? Int
		self.npcDotaNeutralKobold = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralKoboldKey) as? Int
		self.npcDotaBadguysTower1Bot = aDecoder.decodeObject(forKey: kDMKilledNpcDotaBadguysTower1BotKey) as? Int
		self.npcDotaNeutralSatyrTrickster = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralSatyrTricksterKey) as? Int
		self.npcDotaNeutralEnragedWildkin = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralEnragedWildkinKey) as? Int
		self.npcDotaNeutralBlackDrake = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralBlackDrakeKey) as? Int
		self.npcDotaHeroVengefulspirit = aDecoder.decodeObject(forKey: kDMKilledNpcDotaHeroVengefulspiritKey) as? Int
		self.npcDotaGoodguysMeleeRaxMid = aDecoder.decodeObject(forKey: kDMKilledNpcDotaGoodguysMeleeRaxMidKey) as? Int
		self.npcDotaBadguysTower3Mid = aDecoder.decodeObject(forKey: kDMKilledNpcDotaBadguysTower3MidKey) as? Int
		self.npcDotaNeutralHarpyStorm = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralHarpyStormKey) as? Int
		self.npcDotaBadguysTower2Mid = aDecoder.decodeObject(forKey: kDMKilledNpcDotaBadguysTower2MidKey) as? Int
		self.npcDotaCreepBadguysMelee = aDecoder.decodeObject(forKey: kDMKilledNpcDotaCreepBadguysMeleeKey) as? Int
		self.npcDotaNeutralOgreMauler = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralOgreMaulerKey) as? Int
		self.npcDotaGoodguysTower1Bot = aDecoder.decodeObject(forKey: kDMKilledNpcDotaGoodguysTower1BotKey) as? Int
		self.npcDotaNeutralGraniteGolem = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralGraniteGolemKey) as? Int
		self.npcDotaNeutralFelBeast = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralFelBeastKey) as? Int
		self.npcDotaNeutralGnollAssassin = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralGnollAssassinKey) as? Int
		self.npcDotaNeutralBlackDragon = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralBlackDragonKey) as? Int
		self.npcDotaNeutralMudGolem = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralMudGolemKey) as? Int
		self.npcDotaSentryWards = aDecoder.decodeObject(forKey: kDMKilledNpcDotaSentryWardsKey) as? Int
		self.npcDotaNeutralCentaurKhan = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralCentaurKhanKey) as? Int
		self.npcDotaHeroViper = aDecoder.decodeObject(forKey: kDMKilledNpcDotaHeroViperKey) as? Int
		self.npcDotaNeutralBigThunderLizard = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralBigThunderLizardKey) as? Int
		self.npcDotaNeutralPolarFurbolgChampion = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralPolarFurbolgChampionKey) as? Int
		self.npcDotaNeutralAlphaWolf = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralAlphaWolfKey) as? Int
		self.npcDotaNeutralForestTrollHighPriest = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralForestTrollHighPriestKey) as? Int
		self.npcDotaGoodguysTower3Mid = aDecoder.decodeObject(forKey: kDMKilledNpcDotaGoodguysTower3MidKey) as? Int
		self.npcDotaCreepBadguysRangedUpgraded = aDecoder.decodeObject(forKey: kDMKilledNpcDotaCreepBadguysRangedUpgradedKey) as? Int
		self.npcDotaNeutralCentaurOutrunner = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralCentaurOutrunnerKey) as? Int
		self.npcDotaGoodguysTower2Top = aDecoder.decodeObject(forKey: kDMKilledNpcDotaGoodguysTower2TopKey) as? Int
		self.npcDotaGoodguysFillers = aDecoder.decodeObject(forKey: kDMKilledNpcDotaGoodguysFillersKey) as? Int
		self.npcDotaDarkTrollWarlordSkeletonWarrior = aDecoder.decodeObject(forKey: kDMKilledNpcDotaDarkTrollWarlordSkeletonWarriorKey) as? Int
		self.npcDotaNeutralWildkin = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralWildkinKey) as? Int
		self.npcDotaNeutralHarpyScout = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralHarpyScoutKey) as? Int
		self.npcDotaGoodguysTower2Mid = aDecoder.decodeObject(forKey: kDMKilledNpcDotaGoodguysTower2MidKey) as? Int
		self.npcDotaNeutralSatyrSoulstealer = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralSatyrSoulstealerKey) as? Int
		self.npcDotaGoodguysTower1Mid = aDecoder.decodeObject(forKey: kDMKilledNpcDotaGoodguysTower1MidKey) as? Int
		self.npcDotaBadguysTower2Bot = aDecoder.decodeObject(forKey: kDMKilledNpcDotaBadguysTower2BotKey) as? Int
		self.npcDotaNeutralSatyrHellcaller = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralSatyrHellcallerKey) as? Int
		self.npcDotaCreepGoodguysMelee = aDecoder.decodeObject(forKey: kDMKilledNpcDotaCreepGoodguysMeleeKey) as? Int
		self.npcDotaGoodguysRangeRaxMid = aDecoder.decodeObject(forKey: kDMKilledNpcDotaGoodguysRangeRaxMidKey) as? Int
		self.npcDotaCreepBadguysRanged = aDecoder.decodeObject(forKey: kDMKilledNpcDotaCreepBadguysRangedKey) as? Int
		self.npcDotaJuggernautHealingWard = aDecoder.decodeObject(forKey: kDMKilledNpcDotaJuggernautHealingWardKey) as? Int
		self.npcDotaObserverWards = aDecoder.decodeObject(forKey: kDMKilledNpcDotaObserverWardsKey) as? Int
		self.npcDotaNeutralSmallThunderLizard = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralSmallThunderLizardKey) as? Int
		self.npcDotaNeutralDarkTrollWarlord = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralDarkTrollWarlordKey) as? Int
		self.npcDotaBadguysTower2Top = aDecoder.decodeObject(forKey: kDMKilledNpcDotaBadguysTower2TopKey) as? Int
		self.npcDotaBadguysSiegeUpgraded = aDecoder.decodeObject(forKey: kDMKilledNpcDotaBadguysSiegeUpgradedKey) as? Int
		self.npcDotaGoodguysSiege = aDecoder.decodeObject(forKey: kDMKilledNpcDotaGoodguysSiegeKey) as? Int
		self.npcDotaGoodguysTower4 = aDecoder.decodeObject(forKey: kDMKilledNpcDotaGoodguysTower4Key) as? Int
		self.npcDotaRoshan = aDecoder.decodeObject(forKey: kDMKilledNpcDotaRoshanKey) as? Int
		self.npcDotaHeroJuggernaut = aDecoder.decodeObject(forKey: kDMKilledNpcDotaHeroJuggernautKey) as? Int
		self.npcDotaBadguysSiege = aDecoder.decodeObject(forKey: kDMKilledNpcDotaBadguysSiegeKey) as? Int
		self.npcDotaNeutralOgreMagi = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralOgreMagiKey) as? Int
		self.npcDotaNeutralForestTrollBerserker = aDecoder.decodeObject(forKey: kDMKilledNpcDotaNeutralForestTrollBerserkerKey) as? Int
		self.npcDotaCreepGoodguysRanged = aDecoder.decodeObject(forKey: kDMKilledNpcDotaCreepGoodguysRangedKey) as? Int
		self.npcDotaHeroArcWarden = aDecoder.decodeObject(forKey: kDMKilledNpcDotaHeroArcWardenKey) as? Int
		self.npcDotaHeroEmberSpirit = aDecoder.decodeObject(forKey: kDMKilledNpcDotaHeroEmberSpiritKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(npcDotaHeroBristleback, forKey: kDMKilledNpcDotaHeroBristlebackKey)
		aCoder.encode(npcDotaHeroAbaddon, forKey: kDMKilledNpcDotaHeroAbaddonKey)
		aCoder.encode(npcDotaNeutralDarkTroll, forKey: kDMKilledNpcDotaNeutralDarkTrollKey)
		aCoder.encode(npcDotaHeroCrystalMaiden, forKey: kDMKilledNpcDotaHeroCrystalMaidenKey)
		aCoder.encode(npcDotaNeutralGiantWolf, forKey: kDMKilledNpcDotaNeutralGiantWolfKey)
		aCoder.encode(npcDotaHeroNevermore, forKey: kDMKilledNpcDotaHeroNevermoreKey)
		aCoder.encode(npcDotaNeutralKoboldTunneler, forKey: kDMKilledNpcDotaNeutralKoboldTunnelerKey)
		aCoder.encode(npcDotaNeutralMudGolemSplit, forKey: kDMKilledNpcDotaNeutralMudGolemSplitKey)
		aCoder.encode(npcDotaCourier, forKey: kDMKilledNpcDotaCourierKey)
		aCoder.encode(npcDotaNeutralKoboldTaskmaster, forKey: kDMKilledNpcDotaNeutralKoboldTaskmasterKey)
		aCoder.encode(npcDotaGoodguysFort, forKey: kDMKilledNpcDotaGoodguysFortKey)
		aCoder.encode(npcDotaNeutralGhost, forKey: kDMKilledNpcDotaNeutralGhostKey)
		aCoder.encode(npcDotaNeutralPolarFurbolgUrsaWarrior, forKey: kDMKilledNpcDotaNeutralPolarFurbolgUrsaWarriorKey)
		aCoder.encode(npcDotaHeroKunkka, forKey: kDMKilledNpcDotaHeroKunkkaKey)
		aCoder.encode(npcDotaBadguysTower1Mid, forKey: kDMKilledNpcDotaBadguysTower1MidKey)
		aCoder.encode(npcDotaNeutralRockGolem, forKey: kDMKilledNpcDotaNeutralRockGolemKey)
		aCoder.encode(npcDotaNeutralKobold, forKey: kDMKilledNpcDotaNeutralKoboldKey)
		aCoder.encode(npcDotaBadguysTower1Bot, forKey: kDMKilledNpcDotaBadguysTower1BotKey)
		aCoder.encode(npcDotaNeutralSatyrTrickster, forKey: kDMKilledNpcDotaNeutralSatyrTricksterKey)
		aCoder.encode(npcDotaNeutralEnragedWildkin, forKey: kDMKilledNpcDotaNeutralEnragedWildkinKey)
		aCoder.encode(npcDotaNeutralBlackDrake, forKey: kDMKilledNpcDotaNeutralBlackDrakeKey)
		aCoder.encode(npcDotaHeroVengefulspirit, forKey: kDMKilledNpcDotaHeroVengefulspiritKey)
		aCoder.encode(npcDotaGoodguysMeleeRaxMid, forKey: kDMKilledNpcDotaGoodguysMeleeRaxMidKey)
		aCoder.encode(npcDotaBadguysTower3Mid, forKey: kDMKilledNpcDotaBadguysTower3MidKey)
		aCoder.encode(npcDotaNeutralHarpyStorm, forKey: kDMKilledNpcDotaNeutralHarpyStormKey)
		aCoder.encode(npcDotaBadguysTower2Mid, forKey: kDMKilledNpcDotaBadguysTower2MidKey)
		aCoder.encode(npcDotaCreepBadguysMelee, forKey: kDMKilledNpcDotaCreepBadguysMeleeKey)
		aCoder.encode(npcDotaNeutralOgreMauler, forKey: kDMKilledNpcDotaNeutralOgreMaulerKey)
		aCoder.encode(npcDotaGoodguysTower1Bot, forKey: kDMKilledNpcDotaGoodguysTower1BotKey)
		aCoder.encode(npcDotaNeutralGraniteGolem, forKey: kDMKilledNpcDotaNeutralGraniteGolemKey)
		aCoder.encode(npcDotaNeutralFelBeast, forKey: kDMKilledNpcDotaNeutralFelBeastKey)
		aCoder.encode(npcDotaNeutralGnollAssassin, forKey: kDMKilledNpcDotaNeutralGnollAssassinKey)
		aCoder.encode(npcDotaNeutralBlackDragon, forKey: kDMKilledNpcDotaNeutralBlackDragonKey)
		aCoder.encode(npcDotaNeutralMudGolem, forKey: kDMKilledNpcDotaNeutralMudGolemKey)
		aCoder.encode(npcDotaSentryWards, forKey: kDMKilledNpcDotaSentryWardsKey)
		aCoder.encode(npcDotaNeutralCentaurKhan, forKey: kDMKilledNpcDotaNeutralCentaurKhanKey)
		aCoder.encode(npcDotaHeroViper, forKey: kDMKilledNpcDotaHeroViperKey)
		aCoder.encode(npcDotaNeutralBigThunderLizard, forKey: kDMKilledNpcDotaNeutralBigThunderLizardKey)
		aCoder.encode(npcDotaNeutralPolarFurbolgChampion, forKey: kDMKilledNpcDotaNeutralPolarFurbolgChampionKey)
		aCoder.encode(npcDotaNeutralAlphaWolf, forKey: kDMKilledNpcDotaNeutralAlphaWolfKey)
		aCoder.encode(npcDotaNeutralForestTrollHighPriest, forKey: kDMKilledNpcDotaNeutralForestTrollHighPriestKey)
		aCoder.encode(npcDotaGoodguysTower3Mid, forKey: kDMKilledNpcDotaGoodguysTower3MidKey)
		aCoder.encode(npcDotaCreepBadguysRangedUpgraded, forKey: kDMKilledNpcDotaCreepBadguysRangedUpgradedKey)
		aCoder.encode(npcDotaNeutralCentaurOutrunner, forKey: kDMKilledNpcDotaNeutralCentaurOutrunnerKey)
		aCoder.encode(npcDotaGoodguysTower2Top, forKey: kDMKilledNpcDotaGoodguysTower2TopKey)
		aCoder.encode(npcDotaGoodguysFillers, forKey: kDMKilledNpcDotaGoodguysFillersKey)
		aCoder.encode(npcDotaDarkTrollWarlordSkeletonWarrior, forKey: kDMKilledNpcDotaDarkTrollWarlordSkeletonWarriorKey)
		aCoder.encode(npcDotaNeutralWildkin, forKey: kDMKilledNpcDotaNeutralWildkinKey)
		aCoder.encode(npcDotaNeutralHarpyScout, forKey: kDMKilledNpcDotaNeutralHarpyScoutKey)
		aCoder.encode(npcDotaGoodguysTower2Mid, forKey: kDMKilledNpcDotaGoodguysTower2MidKey)
		aCoder.encode(npcDotaNeutralSatyrSoulstealer, forKey: kDMKilledNpcDotaNeutralSatyrSoulstealerKey)
		aCoder.encode(npcDotaGoodguysTower1Mid, forKey: kDMKilledNpcDotaGoodguysTower1MidKey)
		aCoder.encode(npcDotaBadguysTower2Bot, forKey: kDMKilledNpcDotaBadguysTower2BotKey)
		aCoder.encode(npcDotaNeutralSatyrHellcaller, forKey: kDMKilledNpcDotaNeutralSatyrHellcallerKey)
		aCoder.encode(npcDotaCreepGoodguysMelee, forKey: kDMKilledNpcDotaCreepGoodguysMeleeKey)
		aCoder.encode(npcDotaGoodguysRangeRaxMid, forKey: kDMKilledNpcDotaGoodguysRangeRaxMidKey)
		aCoder.encode(npcDotaCreepBadguysRanged, forKey: kDMKilledNpcDotaCreepBadguysRangedKey)
		aCoder.encode(npcDotaJuggernautHealingWard, forKey: kDMKilledNpcDotaJuggernautHealingWardKey)
		aCoder.encode(npcDotaObserverWards, forKey: kDMKilledNpcDotaObserverWardsKey)
		aCoder.encode(npcDotaNeutralSmallThunderLizard, forKey: kDMKilledNpcDotaNeutralSmallThunderLizardKey)
		aCoder.encode(npcDotaNeutralDarkTrollWarlord, forKey: kDMKilledNpcDotaNeutralDarkTrollWarlordKey)
		aCoder.encode(npcDotaBadguysTower2Top, forKey: kDMKilledNpcDotaBadguysTower2TopKey)
		aCoder.encode(npcDotaBadguysSiegeUpgraded, forKey: kDMKilledNpcDotaBadguysSiegeUpgradedKey)
		aCoder.encode(npcDotaGoodguysSiege, forKey: kDMKilledNpcDotaGoodguysSiegeKey)
		aCoder.encode(npcDotaGoodguysTower4, forKey: kDMKilledNpcDotaGoodguysTower4Key)
		aCoder.encode(npcDotaRoshan, forKey: kDMKilledNpcDotaRoshanKey)
		aCoder.encode(npcDotaHeroJuggernaut, forKey: kDMKilledNpcDotaHeroJuggernautKey)
		aCoder.encode(npcDotaBadguysSiege, forKey: kDMKilledNpcDotaBadguysSiegeKey)
		aCoder.encode(npcDotaNeutralOgreMagi, forKey: kDMKilledNpcDotaNeutralOgreMagiKey)
		aCoder.encode(npcDotaNeutralForestTrollBerserker, forKey: kDMKilledNpcDotaNeutralForestTrollBerserkerKey)
		aCoder.encode(npcDotaCreepGoodguysRanged, forKey: kDMKilledNpcDotaCreepGoodguysRangedKey)
		aCoder.encode(npcDotaHeroArcWarden, forKey: kDMKilledNpcDotaHeroArcWardenKey)
		aCoder.encode(npcDotaHeroEmberSpirit, forKey: kDMKilledNpcDotaHeroEmberSpiritKey)

    }

}
