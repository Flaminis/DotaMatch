//
//  DMDamage.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMDamage: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMDamageNpcDotaHeroBristlebackKey: String = "npc_dota_hero_bristleback"
	internal let kDMDamageNpcDotaHeroAbaddonKey: String = "npc_dota_hero_abaddon"
	internal let kDMDamageNpcDotaHeroEmberSpiritKey: String = "npc_dota_hero_ember_spirit"
	internal let kDMDamageNpcDotaHeroCrystalMaidenKey: String = "npc_dota_hero_crystal_maiden"
	internal let kDMDamageNpcDotaNeutralGiantWolfKey: String = "npc_dota_neutral_giant_wolf"
	internal let kDMDamageNpcDotaHeroNevermoreKey: String = "npc_dota_hero_nevermore"
	internal let kDMDamageNpcDotaNeutralKoboldTunnelerKey: String = "npc_dota_neutral_kobold_tunneler"
	internal let kDMDamageNpcDotaNeutralMudGolemSplitKey: String = "npc_dota_neutral_mud_golem_split"
	internal let kDMDamageNpcDotaBadguysTower1MidKey: String = "npc_dota_badguys_tower1_mid"
	internal let kDMDamageNpcDotaCourierKey: String = "npc_dota_courier"
	internal let kDMDamageNpcDotaNeutralKoboldTaskmasterKey: String = "npc_dota_neutral_kobold_taskmaster"
	internal let kDMDamageNpcDotaHeroKunkkaKey: String = "npc_dota_hero_kunkka"
	internal let kDMDamageNpcDotaGoodguysFortKey: String = "npc_dota_goodguys_fort"
	internal let kDMDamageNpcDotaNeutralGhostKey: String = "npc_dota_neutral_ghost"
	internal let kDMDamageNpcDotaGoodguysTower3BotKey: String = "npc_dota_goodguys_tower3_bot"
	internal let kDMDamageNpcDotaNeutralRockGolemKey: String = "npc_dota_neutral_rock_golem"
	internal let kDMDamageNpcDotaNeutralPolarFurbolgUrsaWarriorKey: String = "npc_dota_neutral_polar_furbolg_ursa_warrior"
	internal let kDMDamageNpcDotaNeutralKoboldKey: String = "npc_dota_neutral_kobold"
	internal let kDMDamageNpcDotaBadguysTower1BotKey: String = "npc_dota_badguys_tower1_bot"
	internal let kDMDamageNpcDotaNeutralSatyrTricksterKey: String = "npc_dota_neutral_satyr_trickster"
	internal let kDMDamageNpcDotaGoodguysTower2BotKey: String = "npc_dota_goodguys_tower2_bot"
	internal let kDMDamageNpcDotaNeutralEnragedWildkinKey: String = "npc_dota_neutral_enraged_wildkin"
	internal let kDMDamageNpcDotaNeutralBlackDrakeKey: String = "npc_dota_neutral_black_drake"
	internal let kDMDamageNpcDotaHeroVengefulspiritKey: String = "npc_dota_hero_vengefulspirit"
	internal let kDMDamageNpcDotaGoodguysMeleeRaxMidKey: String = "npc_dota_goodguys_melee_rax_mid"
	internal let kDMDamageNpcDotaBadguysTower3MidKey: String = "npc_dota_badguys_tower3_mid"
	internal let kDMDamageNpcDotaNeutralHarpyStormKey: String = "npc_dota_neutral_harpy_storm"
	internal let kDMDamageNpcDotaBadguysTower2MidKey: String = "npc_dota_badguys_tower2_mid"
	internal let kDMDamageNpcDotaCreepBadguysMeleeKey: String = "npc_dota_creep_badguys_melee"
	internal let kDMDamageNpcDotaNeutralOgreMaulerKey: String = "npc_dota_neutral_ogre_mauler"
	internal let kDMDamageNpcDotaGoodguysTower1BotKey: String = "npc_dota_goodguys_tower1_bot"
	internal let kDMDamageNpcDotaNeutralGraniteGolemKey: String = "npc_dota_neutral_granite_golem"
	internal let kDMDamageNpcDotaNeutralFelBeastKey: String = "npc_dota_neutral_fel_beast"
	internal let kDMDamageNpcDotaGoodguysTower1TopKey: String = "npc_dota_goodguys_tower1_top"
	internal let kDMDamageNpcDotaNeutralGnollAssassinKey: String = "npc_dota_neutral_gnoll_assassin"
	internal let kDMDamageNpcDotaNeutralBlackDragonKey: String = "npc_dota_neutral_black_dragon"
	internal let kDMDamageNpcDotaNeutralMudGolemKey: String = "npc_dota_neutral_mud_golem"
	internal let kDMDamageNpcDotaSentryWardsKey: String = "npc_dota_sentry_wards"
	internal let kDMDamageNpcDotaNeutralCentaurKhanKey: String = "npc_dota_neutral_centaur_khan"
	internal let kDMDamageNpcDotaHeroViperKey: String = "npc_dota_hero_viper"
	internal let kDMDamageNpcDotaNeutralPolarFurbolgChampionKey: String = "npc_dota_neutral_polar_furbolg_champion"
	internal let kDMDamageNpcDotaNeutralBigThunderLizardKey: String = "npc_dota_neutral_big_thunder_lizard"
	internal let kDMDamageNpcDotaNeutralAlphaWolfKey: String = "npc_dota_neutral_alpha_wolf"
	internal let kDMDamageNpcDotaNeutralForestTrollHighPriestKey: String = "npc_dota_neutral_forest_troll_high_priest"
	internal let kDMDamageNpcDotaGoodguysTower3MidKey: String = "npc_dota_goodguys_tower3_mid"
	internal let kDMDamageNpcDotaCreepBadguysRangedUpgradedKey: String = "npc_dota_creep_badguys_ranged_upgraded"
	internal let kDMDamageIllusionNpcDotaHeroEmberSpiritKey: String = "illusion_npc_dota_hero_ember_spirit"
	internal let kDMDamageNpcDotaNeutralCentaurOutrunnerKey: String = "npc_dota_neutral_centaur_outrunner"
	internal let kDMDamageIllusionNpcDotaHeroCrystalMaidenKey: String = "illusion_npc_dota_hero_crystal_maiden"
	internal let kDMDamageNpcDotaGoodguysTower2TopKey: String = "npc_dota_goodguys_tower2_top"
	internal let kDMDamageNpcDotaGoodguysFillersKey: String = "npc_dota_goodguys_fillers"
	internal let kDMDamageNpcDotaDarkTrollWarlordSkeletonWarriorKey: String = "npc_dota_dark_troll_warlord_skeleton_warrior"
	internal let kDMDamageNpcDotaNeutralWildkinKey: String = "npc_dota_neutral_wildkin"
	internal let kDMDamageNpcDotaBadguysTower1TopKey: String = "npc_dota_badguys_tower1_top"
	internal let kDMDamageNpcDotaNeutralHarpyScoutKey: String = "npc_dota_neutral_harpy_scout"
	internal let kDMDamageNpcDotaGoodguysTower2MidKey: String = "npc_dota_goodguys_tower2_mid"
	internal let kDMDamageNpcDotaNeutralSatyrSoulstealerKey: String = "npc_dota_neutral_satyr_soulstealer"
	internal let kDMDamageNpcDotaGoodguysTower1MidKey: String = "npc_dota_goodguys_tower1_mid"
	internal let kDMDamageIllusionNpcDotaHeroJuggernautKey: String = "illusion_npc_dota_hero_juggernaut"
	internal let kDMDamageNpcDotaBadguysTower2BotKey: String = "npc_dota_badguys_tower2_bot"
	internal let kDMDamageNpcDotaNeutralSatyrHellcallerKey: String = "npc_dota_neutral_satyr_hellcaller"
	internal let kDMDamageNpcDotaCreepGoodguysMeleeKey: String = "npc_dota_creep_goodguys_melee"
	internal let kDMDamageNpcDotaGoodguysRangeRaxMidKey: String = "npc_dota_goodguys_range_rax_mid"
	internal let kDMDamageNpcDotaCreepBadguysRangedKey: String = "npc_dota_creep_badguys_ranged"
	internal let kDMDamageNpcDotaJuggernautHealingWardKey: String = "npc_dota_juggernaut_healing_ward"
	internal let kDMDamageNpcDotaObserverWardsKey: String = "npc_dota_observer_wards"
	internal let kDMDamageNpcDotaNeutralSmallThunderLizardKey: String = "npc_dota_neutral_small_thunder_lizard"
	internal let kDMDamageNpcDotaNeutralDarkTrollWarlordKey: String = "npc_dota_neutral_dark_troll_warlord"
	internal let kDMDamageNpcDotaBadguysTower2TopKey: String = "npc_dota_badguys_tower2_top"
	internal let kDMDamageNpcDotaBadguysSiegeUpgradedKey: String = "npc_dota_badguys_siege_upgraded"
	internal let kDMDamageNpcDotaGoodguysSiegeKey: String = "npc_dota_goodguys_siege"
	internal let kDMDamageIllusionNpcDotaHeroViperKey: String = "illusion_npc_dota_hero_viper"
	internal let kDMDamageNpcDotaGoodguysTower4Key: String = "npc_dota_goodguys_tower4"
	internal let kDMDamageNpcDotaRoshanKey: String = "npc_dota_roshan"
	internal let kDMDamageNpcDotaHeroJuggernautKey: String = "npc_dota_hero_juggernaut"
	internal let kDMDamageNpcDotaBadguysSiegeKey: String = "npc_dota_badguys_siege"
	internal let kDMDamageNpcDotaNeutralOgreMagiKey: String = "npc_dota_neutral_ogre_magi"
	internal let kDMDamageNpcDotaNeutralForestTrollBerserkerKey: String = "npc_dota_neutral_forest_troll_berserker"
	internal let kDMDamageNpcDotaBadguysMeleeRaxMidKey: String = "npc_dota_badguys_melee_rax_mid"
	internal let kDMDamageNpcDotaHeroArcWardenKey: String = "npc_dota_hero_arc_warden"
	internal let kDMDamageNpcDotaCreepGoodguysRangedKey: String = "npc_dota_creep_goodguys_ranged"
	internal let kDMDamageNpcDotaNeutralDarkTrollKey: String = "npc_dota_neutral_dark_troll"


    // MARK: Properties
	open var npcDotaHeroBristleback: Int?
	open var npcDotaHeroAbaddon: Int?
	open var npcDotaHeroEmberSpirit: Int?
	open var npcDotaHeroCrystalMaiden: Int?
	open var npcDotaNeutralGiantWolf: Int?
	open var npcDotaHeroNevermore: Int?
	open var npcDotaNeutralKoboldTunneler: Int?
	open var npcDotaNeutralMudGolemSplit: Int?
	open var npcDotaBadguysTower1Mid: Int?
	open var npcDotaCourier: Int?
	open var npcDotaNeutralKoboldTaskmaster: Int?
	open var npcDotaHeroKunkka: Int?
	open var npcDotaGoodguysFort: Int?
	open var npcDotaNeutralGhost: Int?
	open var npcDotaGoodguysTower3Bot: Int?
	open var npcDotaNeutralRockGolem: Int?
	open var npcDotaNeutralPolarFurbolgUrsaWarrior: Int?
	open var npcDotaNeutralKobold: Int?
	open var npcDotaBadguysTower1Bot: Int?
	open var npcDotaNeutralSatyrTrickster: Int?
	open var npcDotaGoodguysTower2Bot: Int?
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
	open var npcDotaGoodguysTower1Top: Int?
	open var npcDotaNeutralGnollAssassin: Int?
	open var npcDotaNeutralBlackDragon: Int?
	open var npcDotaNeutralMudGolem: Int?
	open var npcDotaSentryWards: Int?
	open var npcDotaNeutralCentaurKhan: Int?
	open var npcDotaHeroViper: Int?
	open var npcDotaNeutralPolarFurbolgChampion: Int?
	open var npcDotaNeutralBigThunderLizard: Int?
	open var npcDotaNeutralAlphaWolf: Int?
	open var npcDotaNeutralForestTrollHighPriest: Int?
	open var npcDotaGoodguysTower3Mid: Int?
	open var npcDotaCreepBadguysRangedUpgraded: Int?
	open var illusionNpcDotaHeroEmberSpirit: Int?
	open var npcDotaNeutralCentaurOutrunner: Int?
	open var illusionNpcDotaHeroCrystalMaiden: Int?
	open var npcDotaGoodguysTower2Top: Int?
	open var npcDotaGoodguysFillers: Int?
	open var npcDotaDarkTrollWarlordSkeletonWarrior: Int?
	open var npcDotaNeutralWildkin: Int?
	open var npcDotaBadguysTower1Top: Int?
	open var npcDotaNeutralHarpyScout: Int?
	open var npcDotaGoodguysTower2Mid: Int?
	open var npcDotaNeutralSatyrSoulstealer: Int?
	open var npcDotaGoodguysTower1Mid: Int?
	open var illusionNpcDotaHeroJuggernaut: Int?
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
	open var illusionNpcDotaHeroViper: Int?
	open var npcDotaGoodguysTower4: Int?
	open var npcDotaRoshan: Int?
	open var npcDotaHeroJuggernaut: Int?
	open var npcDotaBadguysSiege: Int?
	open var npcDotaNeutralOgreMagi: Int?
	open var npcDotaNeutralForestTrollBerserker: Int?
	open var npcDotaBadguysMeleeRaxMid: Int?
	open var npcDotaHeroArcWarden: Int?
	open var npcDotaCreepGoodguysRanged: Int?
	open var npcDotaNeutralDarkTroll: Int?


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
		npcDotaHeroBristleback = json[kDMDamageNpcDotaHeroBristlebackKey].int
		npcDotaHeroAbaddon = json[kDMDamageNpcDotaHeroAbaddonKey].int
		npcDotaHeroEmberSpirit = json[kDMDamageNpcDotaHeroEmberSpiritKey].int
		npcDotaHeroCrystalMaiden = json[kDMDamageNpcDotaHeroCrystalMaidenKey].int
		npcDotaNeutralGiantWolf = json[kDMDamageNpcDotaNeutralGiantWolfKey].int
		npcDotaHeroNevermore = json[kDMDamageNpcDotaHeroNevermoreKey].int
		npcDotaNeutralKoboldTunneler = json[kDMDamageNpcDotaNeutralKoboldTunnelerKey].int
		npcDotaNeutralMudGolemSplit = json[kDMDamageNpcDotaNeutralMudGolemSplitKey].int
		npcDotaBadguysTower1Mid = json[kDMDamageNpcDotaBadguysTower1MidKey].int
		npcDotaCourier = json[kDMDamageNpcDotaCourierKey].int
		npcDotaNeutralKoboldTaskmaster = json[kDMDamageNpcDotaNeutralKoboldTaskmasterKey].int
		npcDotaHeroKunkka = json[kDMDamageNpcDotaHeroKunkkaKey].int
		npcDotaGoodguysFort = json[kDMDamageNpcDotaGoodguysFortKey].int
		npcDotaNeutralGhost = json[kDMDamageNpcDotaNeutralGhostKey].int
		npcDotaGoodguysTower3Bot = json[kDMDamageNpcDotaGoodguysTower3BotKey].int
		npcDotaNeutralRockGolem = json[kDMDamageNpcDotaNeutralRockGolemKey].int
		npcDotaNeutralPolarFurbolgUrsaWarrior = json[kDMDamageNpcDotaNeutralPolarFurbolgUrsaWarriorKey].int
		npcDotaNeutralKobold = json[kDMDamageNpcDotaNeutralKoboldKey].int
		npcDotaBadguysTower1Bot = json[kDMDamageNpcDotaBadguysTower1BotKey].int
		npcDotaNeutralSatyrTrickster = json[kDMDamageNpcDotaNeutralSatyrTricksterKey].int
		npcDotaGoodguysTower2Bot = json[kDMDamageNpcDotaGoodguysTower2BotKey].int
		npcDotaNeutralEnragedWildkin = json[kDMDamageNpcDotaNeutralEnragedWildkinKey].int
		npcDotaNeutralBlackDrake = json[kDMDamageNpcDotaNeutralBlackDrakeKey].int
		npcDotaHeroVengefulspirit = json[kDMDamageNpcDotaHeroVengefulspiritKey].int
		npcDotaGoodguysMeleeRaxMid = json[kDMDamageNpcDotaGoodguysMeleeRaxMidKey].int
		npcDotaBadguysTower3Mid = json[kDMDamageNpcDotaBadguysTower3MidKey].int
		npcDotaNeutralHarpyStorm = json[kDMDamageNpcDotaNeutralHarpyStormKey].int
		npcDotaBadguysTower2Mid = json[kDMDamageNpcDotaBadguysTower2MidKey].int
		npcDotaCreepBadguysMelee = json[kDMDamageNpcDotaCreepBadguysMeleeKey].int
		npcDotaNeutralOgreMauler = json[kDMDamageNpcDotaNeutralOgreMaulerKey].int
		npcDotaGoodguysTower1Bot = json[kDMDamageNpcDotaGoodguysTower1BotKey].int
		npcDotaNeutralGraniteGolem = json[kDMDamageNpcDotaNeutralGraniteGolemKey].int
		npcDotaNeutralFelBeast = json[kDMDamageNpcDotaNeutralFelBeastKey].int
		npcDotaGoodguysTower1Top = json[kDMDamageNpcDotaGoodguysTower1TopKey].int
		npcDotaNeutralGnollAssassin = json[kDMDamageNpcDotaNeutralGnollAssassinKey].int
		npcDotaNeutralBlackDragon = json[kDMDamageNpcDotaNeutralBlackDragonKey].int
		npcDotaNeutralMudGolem = json[kDMDamageNpcDotaNeutralMudGolemKey].int
		npcDotaSentryWards = json[kDMDamageNpcDotaSentryWardsKey].int
		npcDotaNeutralCentaurKhan = json[kDMDamageNpcDotaNeutralCentaurKhanKey].int
		npcDotaHeroViper = json[kDMDamageNpcDotaHeroViperKey].int
		npcDotaNeutralPolarFurbolgChampion = json[kDMDamageNpcDotaNeutralPolarFurbolgChampionKey].int
		npcDotaNeutralBigThunderLizard = json[kDMDamageNpcDotaNeutralBigThunderLizardKey].int
		npcDotaNeutralAlphaWolf = json[kDMDamageNpcDotaNeutralAlphaWolfKey].int
		npcDotaNeutralForestTrollHighPriest = json[kDMDamageNpcDotaNeutralForestTrollHighPriestKey].int
		npcDotaGoodguysTower3Mid = json[kDMDamageNpcDotaGoodguysTower3MidKey].int
		npcDotaCreepBadguysRangedUpgraded = json[kDMDamageNpcDotaCreepBadguysRangedUpgradedKey].int
		illusionNpcDotaHeroEmberSpirit = json[kDMDamageIllusionNpcDotaHeroEmberSpiritKey].int
		npcDotaNeutralCentaurOutrunner = json[kDMDamageNpcDotaNeutralCentaurOutrunnerKey].int
		illusionNpcDotaHeroCrystalMaiden = json[kDMDamageIllusionNpcDotaHeroCrystalMaidenKey].int
		npcDotaGoodguysTower2Top = json[kDMDamageNpcDotaGoodguysTower2TopKey].int
		npcDotaGoodguysFillers = json[kDMDamageNpcDotaGoodguysFillersKey].int
		npcDotaDarkTrollWarlordSkeletonWarrior = json[kDMDamageNpcDotaDarkTrollWarlordSkeletonWarriorKey].int
		npcDotaNeutralWildkin = json[kDMDamageNpcDotaNeutralWildkinKey].int
		npcDotaBadguysTower1Top = json[kDMDamageNpcDotaBadguysTower1TopKey].int
		npcDotaNeutralHarpyScout = json[kDMDamageNpcDotaNeutralHarpyScoutKey].int
		npcDotaGoodguysTower2Mid = json[kDMDamageNpcDotaGoodguysTower2MidKey].int
		npcDotaNeutralSatyrSoulstealer = json[kDMDamageNpcDotaNeutralSatyrSoulstealerKey].int
		npcDotaGoodguysTower1Mid = json[kDMDamageNpcDotaGoodguysTower1MidKey].int
		illusionNpcDotaHeroJuggernaut = json[kDMDamageIllusionNpcDotaHeroJuggernautKey].int
		npcDotaBadguysTower2Bot = json[kDMDamageNpcDotaBadguysTower2BotKey].int
		npcDotaNeutralSatyrHellcaller = json[kDMDamageNpcDotaNeutralSatyrHellcallerKey].int
		npcDotaCreepGoodguysMelee = json[kDMDamageNpcDotaCreepGoodguysMeleeKey].int
		npcDotaGoodguysRangeRaxMid = json[kDMDamageNpcDotaGoodguysRangeRaxMidKey].int
		npcDotaCreepBadguysRanged = json[kDMDamageNpcDotaCreepBadguysRangedKey].int
		npcDotaJuggernautHealingWard = json[kDMDamageNpcDotaJuggernautHealingWardKey].int
		npcDotaObserverWards = json[kDMDamageNpcDotaObserverWardsKey].int
		npcDotaNeutralSmallThunderLizard = json[kDMDamageNpcDotaNeutralSmallThunderLizardKey].int
		npcDotaNeutralDarkTrollWarlord = json[kDMDamageNpcDotaNeutralDarkTrollWarlordKey].int
		npcDotaBadguysTower2Top = json[kDMDamageNpcDotaBadguysTower2TopKey].int
		npcDotaBadguysSiegeUpgraded = json[kDMDamageNpcDotaBadguysSiegeUpgradedKey].int
		npcDotaGoodguysSiege = json[kDMDamageNpcDotaGoodguysSiegeKey].int
		illusionNpcDotaHeroViper = json[kDMDamageIllusionNpcDotaHeroViperKey].int
		npcDotaGoodguysTower4 = json[kDMDamageNpcDotaGoodguysTower4Key].int
		npcDotaRoshan = json[kDMDamageNpcDotaRoshanKey].int
		npcDotaHeroJuggernaut = json[kDMDamageNpcDotaHeroJuggernautKey].int
		npcDotaBadguysSiege = json[kDMDamageNpcDotaBadguysSiegeKey].int
		npcDotaNeutralOgreMagi = json[kDMDamageNpcDotaNeutralOgreMagiKey].int
		npcDotaNeutralForestTrollBerserker = json[kDMDamageNpcDotaNeutralForestTrollBerserkerKey].int
		npcDotaBadguysMeleeRaxMid = json[kDMDamageNpcDotaBadguysMeleeRaxMidKey].int
		npcDotaHeroArcWarden = json[kDMDamageNpcDotaHeroArcWardenKey].int
		npcDotaCreepGoodguysRanged = json[kDMDamageNpcDotaCreepGoodguysRangedKey].int
		npcDotaNeutralDarkTroll = json[kDMDamageNpcDotaNeutralDarkTrollKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if npcDotaHeroBristleback != nil {
			dictionary.updateValue(npcDotaHeroBristleback! as AnyObject, forKey: kDMDamageNpcDotaHeroBristlebackKey)
		}
		if npcDotaHeroAbaddon != nil {
			dictionary.updateValue(npcDotaHeroAbaddon! as AnyObject, forKey: kDMDamageNpcDotaHeroAbaddonKey)
		}
		if npcDotaHeroEmberSpirit != nil {
			dictionary.updateValue(npcDotaHeroEmberSpirit! as AnyObject, forKey: kDMDamageNpcDotaHeroEmberSpiritKey)
		}
		if npcDotaHeroCrystalMaiden != nil {
			dictionary.updateValue(npcDotaHeroCrystalMaiden! as AnyObject, forKey: kDMDamageNpcDotaHeroCrystalMaidenKey)
		}
		if npcDotaNeutralGiantWolf != nil {
			dictionary.updateValue(npcDotaNeutralGiantWolf! as AnyObject, forKey: kDMDamageNpcDotaNeutralGiantWolfKey)
		}
		if npcDotaHeroNevermore != nil {
			dictionary.updateValue(npcDotaHeroNevermore! as AnyObject, forKey: kDMDamageNpcDotaHeroNevermoreKey)
		}
		if npcDotaNeutralKoboldTunneler != nil {
			dictionary.updateValue(npcDotaNeutralKoboldTunneler! as AnyObject, forKey: kDMDamageNpcDotaNeutralKoboldTunnelerKey)
		}
		if npcDotaNeutralMudGolemSplit != nil {
			dictionary.updateValue(npcDotaNeutralMudGolemSplit! as AnyObject, forKey: kDMDamageNpcDotaNeutralMudGolemSplitKey)
		}
		if npcDotaBadguysTower1Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower1Mid! as AnyObject, forKey: kDMDamageNpcDotaBadguysTower1MidKey)
		}
		if npcDotaCourier != nil {
			dictionary.updateValue(npcDotaCourier! as AnyObject, forKey: kDMDamageNpcDotaCourierKey)
		}
		if npcDotaNeutralKoboldTaskmaster != nil {
			dictionary.updateValue(npcDotaNeutralKoboldTaskmaster! as AnyObject, forKey: kDMDamageNpcDotaNeutralKoboldTaskmasterKey)
		}
		if npcDotaHeroKunkka != nil {
			dictionary.updateValue(npcDotaHeroKunkka! as AnyObject, forKey: kDMDamageNpcDotaHeroKunkkaKey)
		}
		if npcDotaGoodguysFort != nil {
			dictionary.updateValue(npcDotaGoodguysFort! as AnyObject, forKey: kDMDamageNpcDotaGoodguysFortKey)
		}
		if npcDotaNeutralGhost != nil {
			dictionary.updateValue(npcDotaNeutralGhost! as AnyObject, forKey: kDMDamageNpcDotaNeutralGhostKey)
		}
		if npcDotaGoodguysTower3Bot != nil {
			dictionary.updateValue(npcDotaGoodguysTower3Bot! as AnyObject, forKey: kDMDamageNpcDotaGoodguysTower3BotKey)
		}
		if npcDotaNeutralRockGolem != nil {
			dictionary.updateValue(npcDotaNeutralRockGolem! as AnyObject, forKey: kDMDamageNpcDotaNeutralRockGolemKey)
		}
		if npcDotaNeutralPolarFurbolgUrsaWarrior != nil {
			dictionary.updateValue(npcDotaNeutralPolarFurbolgUrsaWarrior! as AnyObject, forKey: kDMDamageNpcDotaNeutralPolarFurbolgUrsaWarriorKey)
		}
		if npcDotaNeutralKobold != nil {
			dictionary.updateValue(npcDotaNeutralKobold! as AnyObject, forKey: kDMDamageNpcDotaNeutralKoboldKey)
		}
		if npcDotaBadguysTower1Bot != nil {
			dictionary.updateValue(npcDotaBadguysTower1Bot! as AnyObject, forKey: kDMDamageNpcDotaBadguysTower1BotKey)
		}
		if npcDotaNeutralSatyrTrickster != nil {
			dictionary.updateValue(npcDotaNeutralSatyrTrickster! as AnyObject, forKey: kDMDamageNpcDotaNeutralSatyrTricksterKey)
		}
		if npcDotaGoodguysTower2Bot != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Bot! as AnyObject, forKey: kDMDamageNpcDotaGoodguysTower2BotKey)
		}
		if npcDotaNeutralEnragedWildkin != nil {
			dictionary.updateValue(npcDotaNeutralEnragedWildkin! as AnyObject, forKey: kDMDamageNpcDotaNeutralEnragedWildkinKey)
		}
		if npcDotaNeutralBlackDrake != nil {
			dictionary.updateValue(npcDotaNeutralBlackDrake! as AnyObject, forKey: kDMDamageNpcDotaNeutralBlackDrakeKey)
		}
		if npcDotaHeroVengefulspirit != nil {
			dictionary.updateValue(npcDotaHeroVengefulspirit! as AnyObject, forKey: kDMDamageNpcDotaHeroVengefulspiritKey)
		}
		if npcDotaGoodguysMeleeRaxMid != nil {
			dictionary.updateValue(npcDotaGoodguysMeleeRaxMid! as AnyObject, forKey: kDMDamageNpcDotaGoodguysMeleeRaxMidKey)
		}
		if npcDotaBadguysTower3Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower3Mid! as AnyObject, forKey: kDMDamageNpcDotaBadguysTower3MidKey)
		}
		if npcDotaNeutralHarpyStorm != nil {
			dictionary.updateValue(npcDotaNeutralHarpyStorm! as AnyObject, forKey: kDMDamageNpcDotaNeutralHarpyStormKey)
		}
		if npcDotaBadguysTower2Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower2Mid! as AnyObject, forKey: kDMDamageNpcDotaBadguysTower2MidKey)
		}
		if npcDotaCreepBadguysMelee != nil {
			dictionary.updateValue(npcDotaCreepBadguysMelee! as AnyObject, forKey: kDMDamageNpcDotaCreepBadguysMeleeKey)
		}
		if npcDotaNeutralOgreMauler != nil {
			dictionary.updateValue(npcDotaNeutralOgreMauler! as AnyObject, forKey: kDMDamageNpcDotaNeutralOgreMaulerKey)
		}
		if npcDotaGoodguysTower1Bot != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Bot! as AnyObject, forKey: kDMDamageNpcDotaGoodguysTower1BotKey)
		}
		if npcDotaNeutralGraniteGolem != nil {
			dictionary.updateValue(npcDotaNeutralGraniteGolem! as AnyObject, forKey: kDMDamageNpcDotaNeutralGraniteGolemKey)
		}
		if npcDotaNeutralFelBeast != nil {
			dictionary.updateValue(npcDotaNeutralFelBeast! as AnyObject, forKey: kDMDamageNpcDotaNeutralFelBeastKey)
		}
		if npcDotaGoodguysTower1Top != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Top! as AnyObject, forKey: kDMDamageNpcDotaGoodguysTower1TopKey)
		}
		if npcDotaNeutralGnollAssassin != nil {
			dictionary.updateValue(npcDotaNeutralGnollAssassin! as AnyObject, forKey: kDMDamageNpcDotaNeutralGnollAssassinKey)
		}
		if npcDotaNeutralBlackDragon != nil {
			dictionary.updateValue(npcDotaNeutralBlackDragon! as AnyObject, forKey: kDMDamageNpcDotaNeutralBlackDragonKey)
		}
		if npcDotaNeutralMudGolem != nil {
			dictionary.updateValue(npcDotaNeutralMudGolem! as AnyObject, forKey: kDMDamageNpcDotaNeutralMudGolemKey)
		}
		if npcDotaSentryWards != nil {
			dictionary.updateValue(npcDotaSentryWards! as AnyObject, forKey: kDMDamageNpcDotaSentryWardsKey)
		}
		if npcDotaNeutralCentaurKhan != nil {
			dictionary.updateValue(npcDotaNeutralCentaurKhan! as AnyObject, forKey: kDMDamageNpcDotaNeutralCentaurKhanKey)
		}
		if npcDotaHeroViper != nil {
			dictionary.updateValue(npcDotaHeroViper! as AnyObject, forKey: kDMDamageNpcDotaHeroViperKey)
		}
		if npcDotaNeutralPolarFurbolgChampion != nil {
			dictionary.updateValue(npcDotaNeutralPolarFurbolgChampion! as AnyObject, forKey: kDMDamageNpcDotaNeutralPolarFurbolgChampionKey)
		}
		if npcDotaNeutralBigThunderLizard != nil {
			dictionary.updateValue(npcDotaNeutralBigThunderLizard! as AnyObject, forKey: kDMDamageNpcDotaNeutralBigThunderLizardKey)
		}
		if npcDotaNeutralAlphaWolf != nil {
			dictionary.updateValue(npcDotaNeutralAlphaWolf! as AnyObject, forKey: kDMDamageNpcDotaNeutralAlphaWolfKey)
		}
		if npcDotaNeutralForestTrollHighPriest != nil {
			dictionary.updateValue(npcDotaNeutralForestTrollHighPriest! as AnyObject, forKey: kDMDamageNpcDotaNeutralForestTrollHighPriestKey)
		}
		if npcDotaGoodguysTower3Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower3Mid! as AnyObject, forKey: kDMDamageNpcDotaGoodguysTower3MidKey)
		}
		if npcDotaCreepBadguysRangedUpgraded != nil {
			dictionary.updateValue(npcDotaCreepBadguysRangedUpgraded! as AnyObject, forKey: kDMDamageNpcDotaCreepBadguysRangedUpgradedKey)
		}
		if illusionNpcDotaHeroEmberSpirit != nil {
			dictionary.updateValue(illusionNpcDotaHeroEmberSpirit! as AnyObject, forKey: kDMDamageIllusionNpcDotaHeroEmberSpiritKey)
		}
		if npcDotaNeutralCentaurOutrunner != nil {
			dictionary.updateValue(npcDotaNeutralCentaurOutrunner! as AnyObject, forKey: kDMDamageNpcDotaNeutralCentaurOutrunnerKey)
		}
		if illusionNpcDotaHeroCrystalMaiden != nil {
			dictionary.updateValue(illusionNpcDotaHeroCrystalMaiden! as AnyObject, forKey: kDMDamageIllusionNpcDotaHeroCrystalMaidenKey)
		}
		if npcDotaGoodguysTower2Top != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Top! as AnyObject, forKey: kDMDamageNpcDotaGoodguysTower2TopKey)
		}
		if npcDotaGoodguysFillers != nil {
			dictionary.updateValue(npcDotaGoodguysFillers! as AnyObject, forKey: kDMDamageNpcDotaGoodguysFillersKey)
		}
		if npcDotaDarkTrollWarlordSkeletonWarrior != nil {
			dictionary.updateValue(npcDotaDarkTrollWarlordSkeletonWarrior! as AnyObject, forKey: kDMDamageNpcDotaDarkTrollWarlordSkeletonWarriorKey)
		}
		if npcDotaNeutralWildkin != nil {
			dictionary.updateValue(npcDotaNeutralWildkin! as AnyObject, forKey: kDMDamageNpcDotaNeutralWildkinKey)
		}
		if npcDotaBadguysTower1Top != nil {
			dictionary.updateValue(npcDotaBadguysTower1Top! as AnyObject, forKey: kDMDamageNpcDotaBadguysTower1TopKey)
		}
		if npcDotaNeutralHarpyScout != nil {
			dictionary.updateValue(npcDotaNeutralHarpyScout! as AnyObject, forKey: kDMDamageNpcDotaNeutralHarpyScoutKey)
		}
		if npcDotaGoodguysTower2Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Mid! as AnyObject, forKey: kDMDamageNpcDotaGoodguysTower2MidKey)
		}
		if npcDotaNeutralSatyrSoulstealer != nil {
			dictionary.updateValue(npcDotaNeutralSatyrSoulstealer! as AnyObject, forKey: kDMDamageNpcDotaNeutralSatyrSoulstealerKey)
		}
		if npcDotaGoodguysTower1Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Mid! as AnyObject, forKey: kDMDamageNpcDotaGoodguysTower1MidKey)
		}
		if illusionNpcDotaHeroJuggernaut != nil {
			dictionary.updateValue(illusionNpcDotaHeroJuggernaut! as AnyObject, forKey: kDMDamageIllusionNpcDotaHeroJuggernautKey)
		}
		if npcDotaBadguysTower2Bot != nil {
			dictionary.updateValue(npcDotaBadguysTower2Bot! as AnyObject, forKey: kDMDamageNpcDotaBadguysTower2BotKey)
		}
		if npcDotaNeutralSatyrHellcaller != nil {
			dictionary.updateValue(npcDotaNeutralSatyrHellcaller! as AnyObject, forKey: kDMDamageNpcDotaNeutralSatyrHellcallerKey)
		}
		if npcDotaCreepGoodguysMelee != nil {
			dictionary.updateValue(npcDotaCreepGoodguysMelee! as AnyObject, forKey: kDMDamageNpcDotaCreepGoodguysMeleeKey)
		}
		if npcDotaGoodguysRangeRaxMid != nil {
			dictionary.updateValue(npcDotaGoodguysRangeRaxMid! as AnyObject, forKey: kDMDamageNpcDotaGoodguysRangeRaxMidKey)
		}
		if npcDotaCreepBadguysRanged != nil {
			dictionary.updateValue(npcDotaCreepBadguysRanged! as AnyObject, forKey: kDMDamageNpcDotaCreepBadguysRangedKey)
		}
		if npcDotaJuggernautHealingWard != nil {
			dictionary.updateValue(npcDotaJuggernautHealingWard! as AnyObject, forKey: kDMDamageNpcDotaJuggernautHealingWardKey)
		}
		if npcDotaObserverWards != nil {
			dictionary.updateValue(npcDotaObserverWards! as AnyObject, forKey: kDMDamageNpcDotaObserverWardsKey)
		}
		if npcDotaNeutralSmallThunderLizard != nil {
			dictionary.updateValue(npcDotaNeutralSmallThunderLizard! as AnyObject, forKey: kDMDamageNpcDotaNeutralSmallThunderLizardKey)
		}
		if npcDotaNeutralDarkTrollWarlord != nil {
			dictionary.updateValue(npcDotaNeutralDarkTrollWarlord! as AnyObject, forKey: kDMDamageNpcDotaNeutralDarkTrollWarlordKey)
		}
		if npcDotaBadguysTower2Top != nil {
			dictionary.updateValue(npcDotaBadguysTower2Top! as AnyObject, forKey: kDMDamageNpcDotaBadguysTower2TopKey)
		}
		if npcDotaBadguysSiegeUpgraded != nil {
			dictionary.updateValue(npcDotaBadguysSiegeUpgraded! as AnyObject, forKey: kDMDamageNpcDotaBadguysSiegeUpgradedKey)
		}
		if npcDotaGoodguysSiege != nil {
			dictionary.updateValue(npcDotaGoodguysSiege! as AnyObject, forKey: kDMDamageNpcDotaGoodguysSiegeKey)
		}
		if illusionNpcDotaHeroViper != nil {
			dictionary.updateValue(illusionNpcDotaHeroViper! as AnyObject, forKey: kDMDamageIllusionNpcDotaHeroViperKey)
		}
		if npcDotaGoodguysTower4 != nil {
			dictionary.updateValue(npcDotaGoodguysTower4! as AnyObject, forKey: kDMDamageNpcDotaGoodguysTower4Key)
		}
		if npcDotaRoshan != nil {
			dictionary.updateValue(npcDotaRoshan! as AnyObject, forKey: kDMDamageNpcDotaRoshanKey)
		}
		if npcDotaHeroJuggernaut != nil {
			dictionary.updateValue(npcDotaHeroJuggernaut! as AnyObject, forKey: kDMDamageNpcDotaHeroJuggernautKey)
		}
		if npcDotaBadguysSiege != nil {
			dictionary.updateValue(npcDotaBadguysSiege! as AnyObject, forKey: kDMDamageNpcDotaBadguysSiegeKey)
		}
		if npcDotaNeutralOgreMagi != nil {
			dictionary.updateValue(npcDotaNeutralOgreMagi! as AnyObject, forKey: kDMDamageNpcDotaNeutralOgreMagiKey)
		}
		if npcDotaNeutralForestTrollBerserker != nil {
			dictionary.updateValue(npcDotaNeutralForestTrollBerserker! as AnyObject, forKey: kDMDamageNpcDotaNeutralForestTrollBerserkerKey)
		}
		if npcDotaBadguysMeleeRaxMid != nil {
			dictionary.updateValue(npcDotaBadguysMeleeRaxMid! as AnyObject, forKey: kDMDamageNpcDotaBadguysMeleeRaxMidKey)
		}
		if npcDotaHeroArcWarden != nil {
			dictionary.updateValue(npcDotaHeroArcWarden! as AnyObject, forKey: kDMDamageNpcDotaHeroArcWardenKey)
		}
		if npcDotaCreepGoodguysRanged != nil {
			dictionary.updateValue(npcDotaCreepGoodguysRanged! as AnyObject, forKey: kDMDamageNpcDotaCreepGoodguysRangedKey)
		}
		if npcDotaNeutralDarkTroll != nil {
			dictionary.updateValue(npcDotaNeutralDarkTroll! as AnyObject, forKey: kDMDamageNpcDotaNeutralDarkTrollKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.npcDotaHeroBristleback = aDecoder.decodeObject(forKey: kDMDamageNpcDotaHeroBristlebackKey) as? Int
		self.npcDotaHeroAbaddon = aDecoder.decodeObject(forKey: kDMDamageNpcDotaHeroAbaddonKey) as? Int
		self.npcDotaHeroEmberSpirit = aDecoder.decodeObject(forKey: kDMDamageNpcDotaHeroEmberSpiritKey) as? Int
		self.npcDotaHeroCrystalMaiden = aDecoder.decodeObject(forKey: kDMDamageNpcDotaHeroCrystalMaidenKey) as? Int
		self.npcDotaNeutralGiantWolf = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralGiantWolfKey) as? Int
		self.npcDotaHeroNevermore = aDecoder.decodeObject(forKey: kDMDamageNpcDotaHeroNevermoreKey) as? Int
		self.npcDotaNeutralKoboldTunneler = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralKoboldTunnelerKey) as? Int
		self.npcDotaNeutralMudGolemSplit = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralMudGolemSplitKey) as? Int
		self.npcDotaBadguysTower1Mid = aDecoder.decodeObject(forKey: kDMDamageNpcDotaBadguysTower1MidKey) as? Int
		self.npcDotaCourier = aDecoder.decodeObject(forKey: kDMDamageNpcDotaCourierKey) as? Int
		self.npcDotaNeutralKoboldTaskmaster = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralKoboldTaskmasterKey) as? Int
		self.npcDotaHeroKunkka = aDecoder.decodeObject(forKey: kDMDamageNpcDotaHeroKunkkaKey) as? Int
		self.npcDotaGoodguysFort = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysFortKey) as? Int
		self.npcDotaNeutralGhost = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralGhostKey) as? Int
		self.npcDotaGoodguysTower3Bot = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysTower3BotKey) as? Int
		self.npcDotaNeutralRockGolem = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralRockGolemKey) as? Int
		self.npcDotaNeutralPolarFurbolgUrsaWarrior = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralPolarFurbolgUrsaWarriorKey) as? Int
		self.npcDotaNeutralKobold = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralKoboldKey) as? Int
		self.npcDotaBadguysTower1Bot = aDecoder.decodeObject(forKey: kDMDamageNpcDotaBadguysTower1BotKey) as? Int
		self.npcDotaNeutralSatyrTrickster = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralSatyrTricksterKey) as? Int
		self.npcDotaGoodguysTower2Bot = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysTower2BotKey) as? Int
		self.npcDotaNeutralEnragedWildkin = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralEnragedWildkinKey) as? Int
		self.npcDotaNeutralBlackDrake = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralBlackDrakeKey) as? Int
		self.npcDotaHeroVengefulspirit = aDecoder.decodeObject(forKey: kDMDamageNpcDotaHeroVengefulspiritKey) as? Int
		self.npcDotaGoodguysMeleeRaxMid = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysMeleeRaxMidKey) as? Int
		self.npcDotaBadguysTower3Mid = aDecoder.decodeObject(forKey: kDMDamageNpcDotaBadguysTower3MidKey) as? Int
		self.npcDotaNeutralHarpyStorm = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralHarpyStormKey) as? Int
		self.npcDotaBadguysTower2Mid = aDecoder.decodeObject(forKey: kDMDamageNpcDotaBadguysTower2MidKey) as? Int
		self.npcDotaCreepBadguysMelee = aDecoder.decodeObject(forKey: kDMDamageNpcDotaCreepBadguysMeleeKey) as? Int
		self.npcDotaNeutralOgreMauler = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralOgreMaulerKey) as? Int
		self.npcDotaGoodguysTower1Bot = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysTower1BotKey) as? Int
		self.npcDotaNeutralGraniteGolem = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralGraniteGolemKey) as? Int
		self.npcDotaNeutralFelBeast = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralFelBeastKey) as? Int
		self.npcDotaGoodguysTower1Top = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysTower1TopKey) as? Int
		self.npcDotaNeutralGnollAssassin = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralGnollAssassinKey) as? Int
		self.npcDotaNeutralBlackDragon = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralBlackDragonKey) as? Int
		self.npcDotaNeutralMudGolem = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralMudGolemKey) as? Int
		self.npcDotaSentryWards = aDecoder.decodeObject(forKey: kDMDamageNpcDotaSentryWardsKey) as? Int
		self.npcDotaNeutralCentaurKhan = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralCentaurKhanKey) as? Int
		self.npcDotaHeroViper = aDecoder.decodeObject(forKey: kDMDamageNpcDotaHeroViperKey) as? Int
		self.npcDotaNeutralPolarFurbolgChampion = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralPolarFurbolgChampionKey) as? Int
		self.npcDotaNeutralBigThunderLizard = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralBigThunderLizardKey) as? Int
		self.npcDotaNeutralAlphaWolf = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralAlphaWolfKey) as? Int
		self.npcDotaNeutralForestTrollHighPriest = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralForestTrollHighPriestKey) as? Int
		self.npcDotaGoodguysTower3Mid = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysTower3MidKey) as? Int
		self.npcDotaCreepBadguysRangedUpgraded = aDecoder.decodeObject(forKey: kDMDamageNpcDotaCreepBadguysRangedUpgradedKey) as? Int
		self.illusionNpcDotaHeroEmberSpirit = aDecoder.decodeObject(forKey: kDMDamageIllusionNpcDotaHeroEmberSpiritKey) as? Int
		self.npcDotaNeutralCentaurOutrunner = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralCentaurOutrunnerKey) as? Int
		self.illusionNpcDotaHeroCrystalMaiden = aDecoder.decodeObject(forKey: kDMDamageIllusionNpcDotaHeroCrystalMaidenKey) as? Int
		self.npcDotaGoodguysTower2Top = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysTower2TopKey) as? Int
		self.npcDotaGoodguysFillers = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysFillersKey) as? Int
		self.npcDotaDarkTrollWarlordSkeletonWarrior = aDecoder.decodeObject(forKey: kDMDamageNpcDotaDarkTrollWarlordSkeletonWarriorKey) as? Int
		self.npcDotaNeutralWildkin = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralWildkinKey) as? Int
		self.npcDotaBadguysTower1Top = aDecoder.decodeObject(forKey: kDMDamageNpcDotaBadguysTower1TopKey) as? Int
		self.npcDotaNeutralHarpyScout = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralHarpyScoutKey) as? Int
		self.npcDotaGoodguysTower2Mid = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysTower2MidKey) as? Int
		self.npcDotaNeutralSatyrSoulstealer = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralSatyrSoulstealerKey) as? Int
		self.npcDotaGoodguysTower1Mid = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysTower1MidKey) as? Int
		self.illusionNpcDotaHeroJuggernaut = aDecoder.decodeObject(forKey: kDMDamageIllusionNpcDotaHeroJuggernautKey) as? Int
		self.npcDotaBadguysTower2Bot = aDecoder.decodeObject(forKey: kDMDamageNpcDotaBadguysTower2BotKey) as? Int
		self.npcDotaNeutralSatyrHellcaller = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralSatyrHellcallerKey) as? Int
		self.npcDotaCreepGoodguysMelee = aDecoder.decodeObject(forKey: kDMDamageNpcDotaCreepGoodguysMeleeKey) as? Int
		self.npcDotaGoodguysRangeRaxMid = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysRangeRaxMidKey) as? Int
		self.npcDotaCreepBadguysRanged = aDecoder.decodeObject(forKey: kDMDamageNpcDotaCreepBadguysRangedKey) as? Int
		self.npcDotaJuggernautHealingWard = aDecoder.decodeObject(forKey: kDMDamageNpcDotaJuggernautHealingWardKey) as? Int
		self.npcDotaObserverWards = aDecoder.decodeObject(forKey: kDMDamageNpcDotaObserverWardsKey) as? Int
		self.npcDotaNeutralSmallThunderLizard = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralSmallThunderLizardKey) as? Int
		self.npcDotaNeutralDarkTrollWarlord = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralDarkTrollWarlordKey) as? Int
		self.npcDotaBadguysTower2Top = aDecoder.decodeObject(forKey: kDMDamageNpcDotaBadguysTower2TopKey) as? Int
		self.npcDotaBadguysSiegeUpgraded = aDecoder.decodeObject(forKey: kDMDamageNpcDotaBadguysSiegeUpgradedKey) as? Int
		self.npcDotaGoodguysSiege = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysSiegeKey) as? Int
		self.illusionNpcDotaHeroViper = aDecoder.decodeObject(forKey: kDMDamageIllusionNpcDotaHeroViperKey) as? Int
		self.npcDotaGoodguysTower4 = aDecoder.decodeObject(forKey: kDMDamageNpcDotaGoodguysTower4Key) as? Int
		self.npcDotaRoshan = aDecoder.decodeObject(forKey: kDMDamageNpcDotaRoshanKey) as? Int
		self.npcDotaHeroJuggernaut = aDecoder.decodeObject(forKey: kDMDamageNpcDotaHeroJuggernautKey) as? Int
		self.npcDotaBadguysSiege = aDecoder.decodeObject(forKey: kDMDamageNpcDotaBadguysSiegeKey) as? Int
		self.npcDotaNeutralOgreMagi = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralOgreMagiKey) as? Int
		self.npcDotaNeutralForestTrollBerserker = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralForestTrollBerserkerKey) as? Int
		self.npcDotaBadguysMeleeRaxMid = aDecoder.decodeObject(forKey: kDMDamageNpcDotaBadguysMeleeRaxMidKey) as? Int
		self.npcDotaHeroArcWarden = aDecoder.decodeObject(forKey: kDMDamageNpcDotaHeroArcWardenKey) as? Int
		self.npcDotaCreepGoodguysRanged = aDecoder.decodeObject(forKey: kDMDamageNpcDotaCreepGoodguysRangedKey) as? Int
		self.npcDotaNeutralDarkTroll = aDecoder.decodeObject(forKey: kDMDamageNpcDotaNeutralDarkTrollKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(npcDotaHeroBristleback, forKey: kDMDamageNpcDotaHeroBristlebackKey)
		aCoder.encode(npcDotaHeroAbaddon, forKey: kDMDamageNpcDotaHeroAbaddonKey)
		aCoder.encode(npcDotaHeroEmberSpirit, forKey: kDMDamageNpcDotaHeroEmberSpiritKey)
		aCoder.encode(npcDotaHeroCrystalMaiden, forKey: kDMDamageNpcDotaHeroCrystalMaidenKey)
		aCoder.encode(npcDotaNeutralGiantWolf, forKey: kDMDamageNpcDotaNeutralGiantWolfKey)
		aCoder.encode(npcDotaHeroNevermore, forKey: kDMDamageNpcDotaHeroNevermoreKey)
		aCoder.encode(npcDotaNeutralKoboldTunneler, forKey: kDMDamageNpcDotaNeutralKoboldTunnelerKey)
		aCoder.encode(npcDotaNeutralMudGolemSplit, forKey: kDMDamageNpcDotaNeutralMudGolemSplitKey)
		aCoder.encode(npcDotaBadguysTower1Mid, forKey: kDMDamageNpcDotaBadguysTower1MidKey)
		aCoder.encode(npcDotaCourier, forKey: kDMDamageNpcDotaCourierKey)
		aCoder.encode(npcDotaNeutralKoboldTaskmaster, forKey: kDMDamageNpcDotaNeutralKoboldTaskmasterKey)
		aCoder.encode(npcDotaHeroKunkka, forKey: kDMDamageNpcDotaHeroKunkkaKey)
		aCoder.encode(npcDotaGoodguysFort, forKey: kDMDamageNpcDotaGoodguysFortKey)
		aCoder.encode(npcDotaNeutralGhost, forKey: kDMDamageNpcDotaNeutralGhostKey)
		aCoder.encode(npcDotaGoodguysTower3Bot, forKey: kDMDamageNpcDotaGoodguysTower3BotKey)
		aCoder.encode(npcDotaNeutralRockGolem, forKey: kDMDamageNpcDotaNeutralRockGolemKey)
		aCoder.encode(npcDotaNeutralPolarFurbolgUrsaWarrior, forKey: kDMDamageNpcDotaNeutralPolarFurbolgUrsaWarriorKey)
		aCoder.encode(npcDotaNeutralKobold, forKey: kDMDamageNpcDotaNeutralKoboldKey)
		aCoder.encode(npcDotaBadguysTower1Bot, forKey: kDMDamageNpcDotaBadguysTower1BotKey)
		aCoder.encode(npcDotaNeutralSatyrTrickster, forKey: kDMDamageNpcDotaNeutralSatyrTricksterKey)
		aCoder.encode(npcDotaGoodguysTower2Bot, forKey: kDMDamageNpcDotaGoodguysTower2BotKey)
		aCoder.encode(npcDotaNeutralEnragedWildkin, forKey: kDMDamageNpcDotaNeutralEnragedWildkinKey)
		aCoder.encode(npcDotaNeutralBlackDrake, forKey: kDMDamageNpcDotaNeutralBlackDrakeKey)
		aCoder.encode(npcDotaHeroVengefulspirit, forKey: kDMDamageNpcDotaHeroVengefulspiritKey)
		aCoder.encode(npcDotaGoodguysMeleeRaxMid, forKey: kDMDamageNpcDotaGoodguysMeleeRaxMidKey)
		aCoder.encode(npcDotaBadguysTower3Mid, forKey: kDMDamageNpcDotaBadguysTower3MidKey)
		aCoder.encode(npcDotaNeutralHarpyStorm, forKey: kDMDamageNpcDotaNeutralHarpyStormKey)
		aCoder.encode(npcDotaBadguysTower2Mid, forKey: kDMDamageNpcDotaBadguysTower2MidKey)
		aCoder.encode(npcDotaCreepBadguysMelee, forKey: kDMDamageNpcDotaCreepBadguysMeleeKey)
		aCoder.encode(npcDotaNeutralOgreMauler, forKey: kDMDamageNpcDotaNeutralOgreMaulerKey)
		aCoder.encode(npcDotaGoodguysTower1Bot, forKey: kDMDamageNpcDotaGoodguysTower1BotKey)
		aCoder.encode(npcDotaNeutralGraniteGolem, forKey: kDMDamageNpcDotaNeutralGraniteGolemKey)
		aCoder.encode(npcDotaNeutralFelBeast, forKey: kDMDamageNpcDotaNeutralFelBeastKey)
		aCoder.encode(npcDotaGoodguysTower1Top, forKey: kDMDamageNpcDotaGoodguysTower1TopKey)
		aCoder.encode(npcDotaNeutralGnollAssassin, forKey: kDMDamageNpcDotaNeutralGnollAssassinKey)
		aCoder.encode(npcDotaNeutralBlackDragon, forKey: kDMDamageNpcDotaNeutralBlackDragonKey)
		aCoder.encode(npcDotaNeutralMudGolem, forKey: kDMDamageNpcDotaNeutralMudGolemKey)
		aCoder.encode(npcDotaSentryWards, forKey: kDMDamageNpcDotaSentryWardsKey)
		aCoder.encode(npcDotaNeutralCentaurKhan, forKey: kDMDamageNpcDotaNeutralCentaurKhanKey)
		aCoder.encode(npcDotaHeroViper, forKey: kDMDamageNpcDotaHeroViperKey)
		aCoder.encode(npcDotaNeutralPolarFurbolgChampion, forKey: kDMDamageNpcDotaNeutralPolarFurbolgChampionKey)
		aCoder.encode(npcDotaNeutralBigThunderLizard, forKey: kDMDamageNpcDotaNeutralBigThunderLizardKey)
		aCoder.encode(npcDotaNeutralAlphaWolf, forKey: kDMDamageNpcDotaNeutralAlphaWolfKey)
		aCoder.encode(npcDotaNeutralForestTrollHighPriest, forKey: kDMDamageNpcDotaNeutralForestTrollHighPriestKey)
		aCoder.encode(npcDotaGoodguysTower3Mid, forKey: kDMDamageNpcDotaGoodguysTower3MidKey)
		aCoder.encode(npcDotaCreepBadguysRangedUpgraded, forKey: kDMDamageNpcDotaCreepBadguysRangedUpgradedKey)
		aCoder.encode(illusionNpcDotaHeroEmberSpirit, forKey: kDMDamageIllusionNpcDotaHeroEmberSpiritKey)
		aCoder.encode(npcDotaNeutralCentaurOutrunner, forKey: kDMDamageNpcDotaNeutralCentaurOutrunnerKey)
		aCoder.encode(illusionNpcDotaHeroCrystalMaiden, forKey: kDMDamageIllusionNpcDotaHeroCrystalMaidenKey)
		aCoder.encode(npcDotaGoodguysTower2Top, forKey: kDMDamageNpcDotaGoodguysTower2TopKey)
		aCoder.encode(npcDotaGoodguysFillers, forKey: kDMDamageNpcDotaGoodguysFillersKey)
		aCoder.encode(npcDotaDarkTrollWarlordSkeletonWarrior, forKey: kDMDamageNpcDotaDarkTrollWarlordSkeletonWarriorKey)
		aCoder.encode(npcDotaNeutralWildkin, forKey: kDMDamageNpcDotaNeutralWildkinKey)
		aCoder.encode(npcDotaBadguysTower1Top, forKey: kDMDamageNpcDotaBadguysTower1TopKey)
		aCoder.encode(npcDotaNeutralHarpyScout, forKey: kDMDamageNpcDotaNeutralHarpyScoutKey)
		aCoder.encode(npcDotaGoodguysTower2Mid, forKey: kDMDamageNpcDotaGoodguysTower2MidKey)
		aCoder.encode(npcDotaNeutralSatyrSoulstealer, forKey: kDMDamageNpcDotaNeutralSatyrSoulstealerKey)
		aCoder.encode(npcDotaGoodguysTower1Mid, forKey: kDMDamageNpcDotaGoodguysTower1MidKey)
		aCoder.encode(illusionNpcDotaHeroJuggernaut, forKey: kDMDamageIllusionNpcDotaHeroJuggernautKey)
		aCoder.encode(npcDotaBadguysTower2Bot, forKey: kDMDamageNpcDotaBadguysTower2BotKey)
		aCoder.encode(npcDotaNeutralSatyrHellcaller, forKey: kDMDamageNpcDotaNeutralSatyrHellcallerKey)
		aCoder.encode(npcDotaCreepGoodguysMelee, forKey: kDMDamageNpcDotaCreepGoodguysMeleeKey)
		aCoder.encode(npcDotaGoodguysRangeRaxMid, forKey: kDMDamageNpcDotaGoodguysRangeRaxMidKey)
		aCoder.encode(npcDotaCreepBadguysRanged, forKey: kDMDamageNpcDotaCreepBadguysRangedKey)
		aCoder.encode(npcDotaJuggernautHealingWard, forKey: kDMDamageNpcDotaJuggernautHealingWardKey)
		aCoder.encode(npcDotaObserverWards, forKey: kDMDamageNpcDotaObserverWardsKey)
		aCoder.encode(npcDotaNeutralSmallThunderLizard, forKey: kDMDamageNpcDotaNeutralSmallThunderLizardKey)
		aCoder.encode(npcDotaNeutralDarkTrollWarlord, forKey: kDMDamageNpcDotaNeutralDarkTrollWarlordKey)
		aCoder.encode(npcDotaBadguysTower2Top, forKey: kDMDamageNpcDotaBadguysTower2TopKey)
		aCoder.encode(npcDotaBadguysSiegeUpgraded, forKey: kDMDamageNpcDotaBadguysSiegeUpgradedKey)
		aCoder.encode(npcDotaGoodguysSiege, forKey: kDMDamageNpcDotaGoodguysSiegeKey)
		aCoder.encode(illusionNpcDotaHeroViper, forKey: kDMDamageIllusionNpcDotaHeroViperKey)
		aCoder.encode(npcDotaGoodguysTower4, forKey: kDMDamageNpcDotaGoodguysTower4Key)
		aCoder.encode(npcDotaRoshan, forKey: kDMDamageNpcDotaRoshanKey)
		aCoder.encode(npcDotaHeroJuggernaut, forKey: kDMDamageNpcDotaHeroJuggernautKey)
		aCoder.encode(npcDotaBadguysSiege, forKey: kDMDamageNpcDotaBadguysSiegeKey)
		aCoder.encode(npcDotaNeutralOgreMagi, forKey: kDMDamageNpcDotaNeutralOgreMagiKey)
		aCoder.encode(npcDotaNeutralForestTrollBerserker, forKey: kDMDamageNpcDotaNeutralForestTrollBerserkerKey)
		aCoder.encode(npcDotaBadguysMeleeRaxMid, forKey: kDMDamageNpcDotaBadguysMeleeRaxMidKey)
		aCoder.encode(npcDotaHeroArcWarden, forKey: kDMDamageNpcDotaHeroArcWardenKey)
		aCoder.encode(npcDotaCreepGoodguysRanged, forKey: kDMDamageNpcDotaCreepGoodguysRangedKey)
		aCoder.encode(npcDotaNeutralDarkTroll, forKey: kDMDamageNpcDotaNeutralDarkTrollKey)

    }

}
