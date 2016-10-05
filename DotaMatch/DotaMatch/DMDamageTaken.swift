//
//  DMDamageTaken.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMDamageTaken: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMDamageTakenNpcDotaHeroBristlebackKey: String = "npc_dota_hero_bristleback"
	internal let kDMDamageTakenNpcDotaHeroAbaddonKey: String = "npc_dota_hero_abaddon"
	internal let kDMDamageTakenNpcDotaNeutralDarkTrollKey: String = "npc_dota_neutral_dark_troll"
	internal let kDMDamageTakenNpcDotaHeroCrystalMaidenKey: String = "npc_dota_hero_crystal_maiden"
	internal let kDMDamageTakenNpcDotaNeutralGiantWolfKey: String = "npc_dota_neutral_giant_wolf"
	internal let kDMDamageTakenNpcDotaHeroNevermoreKey: String = "npc_dota_hero_nevermore"
	internal let kDMDamageTakenNpcDotaNeutralMudGolemSplitKey: String = "npc_dota_neutral_mud_golem_split"
	internal let kDMDamageTakenNpcDotaNeutralKoboldTunnelerKey: String = "npc_dota_neutral_kobold_tunneler"
	internal let kDMDamageTakenNpcDotaBadguysTower1MidKey: String = "npc_dota_badguys_tower1_mid"
	internal let kDMDamageTakenNpcDotaNeutralKoboldTaskmasterKey: String = "npc_dota_neutral_kobold_taskmaster"
	internal let kDMDamageTakenNpcDotaNeutralGhostKey: String = "npc_dota_neutral_ghost"
	internal let kDMDamageTakenNpcDotaHeroKunkkaKey: String = "npc_dota_hero_kunkka"
	internal let kDMDamageTakenNpcDotaNeutralPolarFurbolgUrsaWarriorKey: String = "npc_dota_neutral_polar_furbolg_ursa_warrior"
	internal let kDMDamageTakenNpcDotaNeutralKoboldKey: String = "npc_dota_neutral_kobold"
	internal let kDMDamageTakenNpcDotaNeutralRockGolemKey: String = "npc_dota_neutral_rock_golem"
	internal let kDMDamageTakenNpcDotaBadguysTower1BotKey: String = "npc_dota_badguys_tower1_bot"
	internal let kDMDamageTakenNpcDotaNeutralSatyrTricksterKey: String = "npc_dota_neutral_satyr_trickster"
	internal let kDMDamageTakenNpcDotaGoodguysTower2BotKey: String = "npc_dota_goodguys_tower2_bot"
	internal let kDMDamageTakenNpcDotaNeutralEnragedWildkinKey: String = "npc_dota_neutral_enraged_wildkin"
	internal let kDMDamageTakenNpcDotaNeutralBlackDrakeKey: String = "npc_dota_neutral_black_drake"
	internal let kDMDamageTakenNpcDotaHeroVengefulspiritKey: String = "npc_dota_hero_vengefulspirit"
	internal let kDMDamageTakenNpcDotaBadguysTower3MidKey: String = "npc_dota_badguys_tower3_mid"
	internal let kDMDamageTakenNpcDotaNeutralHarpyStormKey: String = "npc_dota_neutral_harpy_storm"
	internal let kDMDamageTakenNpcDotaNeutralBlackDragonKey: String = "npc_dota_neutral_black_dragon"
	internal let kDMDamageTakenNpcDotaNeutralOgreMaulerKey: String = "npc_dota_neutral_ogre_mauler"
	internal let kDMDamageTakenNpcDotaGoodguysTower1BotKey: String = "npc_dota_goodguys_tower1_bot"
	internal let kDMDamageTakenNpcDotaGoodguysTower1TopKey: String = "npc_dota_goodguys_tower1_top"
	internal let kDMDamageTakenNpcDotaNeutralGraniteGolemKey: String = "npc_dota_neutral_granite_golem"
	internal let kDMDamageTakenNpcDotaNeutralFelBeastKey: String = "npc_dota_neutral_fel_beast"
	internal let kDMDamageTakenNpcDotaNeutralGnollAssassinKey: String = "npc_dota_neutral_gnoll_assassin"
	internal let kDMDamageTakenNpcDotaCreepBadguysMeleeKey: String = "npc_dota_creep_badguys_melee"
	internal let kDMDamageTakenNpcDotaNeutralMudGolemKey: String = "npc_dota_neutral_mud_golem"
	internal let kDMDamageTakenNpcDotaNeutralCentaurKhanKey: String = "npc_dota_neutral_centaur_khan"
	internal let kDMDamageTakenNpcDotaHeroViperKey: String = "npc_dota_hero_viper"
	internal let kDMDamageTakenNpcDotaNeutralPolarFurbolgChampionKey: String = "npc_dota_neutral_polar_furbolg_champion"
	internal let kDMDamageTakenNpcDotaNeutralBigThunderLizardKey: String = "npc_dota_neutral_big_thunder_lizard"
	internal let kDMDamageTakenNpcDotaNeutralAlphaWolfKey: String = "npc_dota_neutral_alpha_wolf"
	internal let kDMDamageTakenNpcDotaNeutralForestTrollHighPriestKey: String = "npc_dota_neutral_forest_troll_high_priest"
	internal let kDMDamageTakenNpcDotaGoodguysTower3MidKey: String = "npc_dota_goodguys_tower3_mid"
	internal let kDMDamageTakenNpcDotaCreepBadguysRangedUpgradedKey: String = "npc_dota_creep_badguys_ranged_upgraded"
	internal let kDMDamageTakenNpcDotaNeutralCentaurOutrunnerKey: String = "npc_dota_neutral_centaur_outrunner"
	internal let kDMDamageTakenNpcDotaGoodguysTower2TopKey: String = "npc_dota_goodguys_tower2_top"
	internal let kDMDamageTakenNpcDotaDarkTrollWarlordSkeletonWarriorKey: String = "npc_dota_dark_troll_warlord_skeleton_warrior"
	internal let kDMDamageTakenNpcDotaNeutralWildkinKey: String = "npc_dota_neutral_wildkin"
	internal let kDMDamageTakenNpcDotaBadguysTower1TopKey: String = "npc_dota_badguys_tower1_top"
	internal let kDMDamageTakenNpcDotaNeutralHarpyScoutKey: String = "npc_dota_neutral_harpy_scout"
	internal let kDMDamageTakenNpcDotaGoodguysTower2MidKey: String = "npc_dota_goodguys_tower2_mid"
	internal let kDMDamageTakenNpcDotaNeutralSatyrSoulstealerKey: String = "npc_dota_neutral_satyr_soulstealer"
	internal let kDMDamageTakenNpcDotaGoodguysTower1MidKey: String = "npc_dota_goodguys_tower1_mid"
	internal let kDMDamageTakenNpcDotaNeutralSatyrHellcallerKey: String = "npc_dota_neutral_satyr_hellcaller"
	internal let kDMDamageTakenNpcDotaCreepGoodguysMeleeKey: String = "npc_dota_creep_goodguys_melee"
	internal let kDMDamageTakenNpcDotaCreepBadguysRangedKey: String = "npc_dota_creep_badguys_ranged"
	internal let kDMDamageTakenNpcDotaNeutralSmallThunderLizardKey: String = "npc_dota_neutral_small_thunder_lizard"
	internal let kDMDamageTakenNpcDotaNeutralDarkTrollWarlordKey: String = "npc_dota_neutral_dark_troll_warlord"
	internal let kDMDamageTakenNpcDotaBadguysTower2TopKey: String = "npc_dota_badguys_tower2_top"
	internal let kDMDamageTakenNpcDotaBadguysSiegeUpgradedKey: String = "npc_dota_badguys_siege_upgraded"
	internal let kDMDamageTakenNpcDotaGoodguysSiegeKey: String = "npc_dota_goodguys_siege"
	internal let kDMDamageTakenNpcDotaGoodguysTower4Key: String = "npc_dota_goodguys_tower4"
	internal let kDMDamageTakenNpcDotaRoshanKey: String = "npc_dota_roshan"
	internal let kDMDamageTakenNpcDotaHeroJuggernautKey: String = "npc_dota_hero_juggernaut"
	internal let kDMDamageTakenNpcDotaBadguysTower4Key: String = "npc_dota_badguys_tower4"
	internal let kDMDamageTakenNpcDotaBadguysSiegeKey: String = "npc_dota_badguys_siege"
	internal let kDMDamageTakenDotaUnknownKey: String = "dota_unknown"
	internal let kDMDamageTakenNpcDotaNeutralOgreMagiKey: String = "npc_dota_neutral_ogre_magi"
	internal let kDMDamageTakenNpcDotaNeutralForestTrollBerserkerKey: String = "npc_dota_neutral_forest_troll_berserker"
	internal let kDMDamageTakenNpcDotaHeroArcWardenKey: String = "npc_dota_hero_arc_warden"
	internal let kDMDamageTakenNpcDotaCreepGoodguysRangedKey: String = "npc_dota_creep_goodguys_ranged"
	internal let kDMDamageTakenNpcDotaHeroEmberSpiritKey: String = "npc_dota_hero_ember_spirit"


    // MARK: Properties
	open var npcDotaHeroBristleback: Int?
	open var npcDotaHeroAbaddon: Int?
	open var npcDotaNeutralDarkTroll: Int?
	open var npcDotaHeroCrystalMaiden: Int?
	open var npcDotaNeutralGiantWolf: Int?
	open var npcDotaHeroNevermore: Int?
	open var npcDotaNeutralMudGolemSplit: Int?
	open var npcDotaNeutralKoboldTunneler: Int?
	open var npcDotaBadguysTower1Mid: Int?
	open var npcDotaNeutralKoboldTaskmaster: Int?
	open var npcDotaNeutralGhost: Int?
	open var npcDotaHeroKunkka: Int?
	open var npcDotaNeutralPolarFurbolgUrsaWarrior: Int?
	open var npcDotaNeutralKobold: Int?
	open var npcDotaNeutralRockGolem: Int?
	open var npcDotaBadguysTower1Bot: Int?
	open var npcDotaNeutralSatyrTrickster: Int?
	open var npcDotaGoodguysTower2Bot: Int?
	open var npcDotaNeutralEnragedWildkin: Int?
	open var npcDotaNeutralBlackDrake: Int?
	open var npcDotaHeroVengefulspirit: Int?
	open var npcDotaBadguysTower3Mid: Int?
	open var npcDotaNeutralHarpyStorm: Int?
	open var npcDotaNeutralBlackDragon: Int?
	open var npcDotaNeutralOgreMauler: Int?
	open var npcDotaGoodguysTower1Bot: Int?
	open var npcDotaGoodguysTower1Top: Int?
	open var npcDotaNeutralGraniteGolem: Int?
	open var npcDotaNeutralFelBeast: Int?
	open var npcDotaNeutralGnollAssassin: Int?
	open var npcDotaCreepBadguysMelee: Int?
	open var npcDotaNeutralMudGolem: Int?
	open var npcDotaNeutralCentaurKhan: Int?
	open var npcDotaHeroViper: Int?
	open var npcDotaNeutralPolarFurbolgChampion: Int?
	open var npcDotaNeutralBigThunderLizard: Int?
	open var npcDotaNeutralAlphaWolf: Int?
	open var npcDotaNeutralForestTrollHighPriest: Int?
	open var npcDotaGoodguysTower3Mid: Int?
	open var npcDotaCreepBadguysRangedUpgraded: Int?
	open var npcDotaNeutralCentaurOutrunner: Int?
	open var npcDotaGoodguysTower2Top: Int?
	open var npcDotaDarkTrollWarlordSkeletonWarrior: Int?
	open var npcDotaNeutralWildkin: Int?
	open var npcDotaBadguysTower1Top: Int?
	open var npcDotaNeutralHarpyScout: Int?
	open var npcDotaGoodguysTower2Mid: Int?
	open var npcDotaNeutralSatyrSoulstealer: Int?
	open var npcDotaGoodguysTower1Mid: Int?
	open var npcDotaNeutralSatyrHellcaller: Int?
	open var npcDotaCreepGoodguysMelee: Int?
	open var npcDotaCreepBadguysRanged: Int?
	open var npcDotaNeutralSmallThunderLizard: Int?
	open var npcDotaNeutralDarkTrollWarlord: Int?
	open var npcDotaBadguysTower2Top: Int?
	open var npcDotaBadguysSiegeUpgraded: Int?
	open var npcDotaGoodguysSiege: Int?
	open var npcDotaGoodguysTower4: Int?
	open var npcDotaRoshan: Int?
	open var npcDotaHeroJuggernaut: Int?
	open var npcDotaBadguysTower4: Int?
	open var npcDotaBadguysSiege: Int?
	open var dotaUnknown: Int?
	open var npcDotaNeutralOgreMagi: Int?
	open var npcDotaNeutralForestTrollBerserker: Int?
	open var npcDotaHeroArcWarden: Int?
	open var npcDotaCreepGoodguysRanged: Int?
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
		npcDotaHeroBristleback = json[kDMDamageTakenNpcDotaHeroBristlebackKey].int
		npcDotaHeroAbaddon = json[kDMDamageTakenNpcDotaHeroAbaddonKey].int
		npcDotaNeutralDarkTroll = json[kDMDamageTakenNpcDotaNeutralDarkTrollKey].int
		npcDotaHeroCrystalMaiden = json[kDMDamageTakenNpcDotaHeroCrystalMaidenKey].int
		npcDotaNeutralGiantWolf = json[kDMDamageTakenNpcDotaNeutralGiantWolfKey].int
		npcDotaHeroNevermore = json[kDMDamageTakenNpcDotaHeroNevermoreKey].int
		npcDotaNeutralMudGolemSplit = json[kDMDamageTakenNpcDotaNeutralMudGolemSplitKey].int
		npcDotaNeutralKoboldTunneler = json[kDMDamageTakenNpcDotaNeutralKoboldTunnelerKey].int
		npcDotaBadguysTower1Mid = json[kDMDamageTakenNpcDotaBadguysTower1MidKey].int
		npcDotaNeutralKoboldTaskmaster = json[kDMDamageTakenNpcDotaNeutralKoboldTaskmasterKey].int
		npcDotaNeutralGhost = json[kDMDamageTakenNpcDotaNeutralGhostKey].int
		npcDotaHeroKunkka = json[kDMDamageTakenNpcDotaHeroKunkkaKey].int
		npcDotaNeutralPolarFurbolgUrsaWarrior = json[kDMDamageTakenNpcDotaNeutralPolarFurbolgUrsaWarriorKey].int
		npcDotaNeutralKobold = json[kDMDamageTakenNpcDotaNeutralKoboldKey].int
		npcDotaNeutralRockGolem = json[kDMDamageTakenNpcDotaNeutralRockGolemKey].int
		npcDotaBadguysTower1Bot = json[kDMDamageTakenNpcDotaBadguysTower1BotKey].int
		npcDotaNeutralSatyrTrickster = json[kDMDamageTakenNpcDotaNeutralSatyrTricksterKey].int
		npcDotaGoodguysTower2Bot = json[kDMDamageTakenNpcDotaGoodguysTower2BotKey].int
		npcDotaNeutralEnragedWildkin = json[kDMDamageTakenNpcDotaNeutralEnragedWildkinKey].int
		npcDotaNeutralBlackDrake = json[kDMDamageTakenNpcDotaNeutralBlackDrakeKey].int
		npcDotaHeroVengefulspirit = json[kDMDamageTakenNpcDotaHeroVengefulspiritKey].int
		npcDotaBadguysTower3Mid = json[kDMDamageTakenNpcDotaBadguysTower3MidKey].int
		npcDotaNeutralHarpyStorm = json[kDMDamageTakenNpcDotaNeutralHarpyStormKey].int
		npcDotaNeutralBlackDragon = json[kDMDamageTakenNpcDotaNeutralBlackDragonKey].int
		npcDotaNeutralOgreMauler = json[kDMDamageTakenNpcDotaNeutralOgreMaulerKey].int
		npcDotaGoodguysTower1Bot = json[kDMDamageTakenNpcDotaGoodguysTower1BotKey].int
		npcDotaGoodguysTower1Top = json[kDMDamageTakenNpcDotaGoodguysTower1TopKey].int
		npcDotaNeutralGraniteGolem = json[kDMDamageTakenNpcDotaNeutralGraniteGolemKey].int
		npcDotaNeutralFelBeast = json[kDMDamageTakenNpcDotaNeutralFelBeastKey].int
		npcDotaNeutralGnollAssassin = json[kDMDamageTakenNpcDotaNeutralGnollAssassinKey].int
		npcDotaCreepBadguysMelee = json[kDMDamageTakenNpcDotaCreepBadguysMeleeKey].int
		npcDotaNeutralMudGolem = json[kDMDamageTakenNpcDotaNeutralMudGolemKey].int
		npcDotaNeutralCentaurKhan = json[kDMDamageTakenNpcDotaNeutralCentaurKhanKey].int
		npcDotaHeroViper = json[kDMDamageTakenNpcDotaHeroViperKey].int
		npcDotaNeutralPolarFurbolgChampion = json[kDMDamageTakenNpcDotaNeutralPolarFurbolgChampionKey].int
		npcDotaNeutralBigThunderLizard = json[kDMDamageTakenNpcDotaNeutralBigThunderLizardKey].int
		npcDotaNeutralAlphaWolf = json[kDMDamageTakenNpcDotaNeutralAlphaWolfKey].int
		npcDotaNeutralForestTrollHighPriest = json[kDMDamageTakenNpcDotaNeutralForestTrollHighPriestKey].int
		npcDotaGoodguysTower3Mid = json[kDMDamageTakenNpcDotaGoodguysTower3MidKey].int
		npcDotaCreepBadguysRangedUpgraded = json[kDMDamageTakenNpcDotaCreepBadguysRangedUpgradedKey].int
		npcDotaNeutralCentaurOutrunner = json[kDMDamageTakenNpcDotaNeutralCentaurOutrunnerKey].int
		npcDotaGoodguysTower2Top = json[kDMDamageTakenNpcDotaGoodguysTower2TopKey].int
		npcDotaDarkTrollWarlordSkeletonWarrior = json[kDMDamageTakenNpcDotaDarkTrollWarlordSkeletonWarriorKey].int
		npcDotaNeutralWildkin = json[kDMDamageTakenNpcDotaNeutralWildkinKey].int
		npcDotaBadguysTower1Top = json[kDMDamageTakenNpcDotaBadguysTower1TopKey].int
		npcDotaNeutralHarpyScout = json[kDMDamageTakenNpcDotaNeutralHarpyScoutKey].int
		npcDotaGoodguysTower2Mid = json[kDMDamageTakenNpcDotaGoodguysTower2MidKey].int
		npcDotaNeutralSatyrSoulstealer = json[kDMDamageTakenNpcDotaNeutralSatyrSoulstealerKey].int
		npcDotaGoodguysTower1Mid = json[kDMDamageTakenNpcDotaGoodguysTower1MidKey].int
		npcDotaNeutralSatyrHellcaller = json[kDMDamageTakenNpcDotaNeutralSatyrHellcallerKey].int
		npcDotaCreepGoodguysMelee = json[kDMDamageTakenNpcDotaCreepGoodguysMeleeKey].int
		npcDotaCreepBadguysRanged = json[kDMDamageTakenNpcDotaCreepBadguysRangedKey].int
		npcDotaNeutralSmallThunderLizard = json[kDMDamageTakenNpcDotaNeutralSmallThunderLizardKey].int
		npcDotaNeutralDarkTrollWarlord = json[kDMDamageTakenNpcDotaNeutralDarkTrollWarlordKey].int
		npcDotaBadguysTower2Top = json[kDMDamageTakenNpcDotaBadguysTower2TopKey].int
		npcDotaBadguysSiegeUpgraded = json[kDMDamageTakenNpcDotaBadguysSiegeUpgradedKey].int
		npcDotaGoodguysSiege = json[kDMDamageTakenNpcDotaGoodguysSiegeKey].int
		npcDotaGoodguysTower4 = json[kDMDamageTakenNpcDotaGoodguysTower4Key].int
		npcDotaRoshan = json[kDMDamageTakenNpcDotaRoshanKey].int
		npcDotaHeroJuggernaut = json[kDMDamageTakenNpcDotaHeroJuggernautKey].int
		npcDotaBadguysTower4 = json[kDMDamageTakenNpcDotaBadguysTower4Key].int
		npcDotaBadguysSiege = json[kDMDamageTakenNpcDotaBadguysSiegeKey].int
		dotaUnknown = json[kDMDamageTakenDotaUnknownKey].int
		npcDotaNeutralOgreMagi = json[kDMDamageTakenNpcDotaNeutralOgreMagiKey].int
		npcDotaNeutralForestTrollBerserker = json[kDMDamageTakenNpcDotaNeutralForestTrollBerserkerKey].int
		npcDotaHeroArcWarden = json[kDMDamageTakenNpcDotaHeroArcWardenKey].int
		npcDotaCreepGoodguysRanged = json[kDMDamageTakenNpcDotaCreepGoodguysRangedKey].int
		npcDotaHeroEmberSpirit = json[kDMDamageTakenNpcDotaHeroEmberSpiritKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if npcDotaHeroBristleback != nil {
			dictionary.updateValue(npcDotaHeroBristleback! as AnyObject, forKey: kDMDamageTakenNpcDotaHeroBristlebackKey)
		}
		if npcDotaHeroAbaddon != nil {
			dictionary.updateValue(npcDotaHeroAbaddon! as AnyObject, forKey: kDMDamageTakenNpcDotaHeroAbaddonKey)
		}
		if npcDotaNeutralDarkTroll != nil {
			dictionary.updateValue(npcDotaNeutralDarkTroll! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralDarkTrollKey)
		}
		if npcDotaHeroCrystalMaiden != nil {
			dictionary.updateValue(npcDotaHeroCrystalMaiden! as AnyObject, forKey: kDMDamageTakenNpcDotaHeroCrystalMaidenKey)
		}
		if npcDotaNeutralGiantWolf != nil {
			dictionary.updateValue(npcDotaNeutralGiantWolf! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralGiantWolfKey)
		}
		if npcDotaHeroNevermore != nil {
			dictionary.updateValue(npcDotaHeroNevermore! as AnyObject, forKey: kDMDamageTakenNpcDotaHeroNevermoreKey)
		}
		if npcDotaNeutralMudGolemSplit != nil {
			dictionary.updateValue(npcDotaNeutralMudGolemSplit! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralMudGolemSplitKey)
		}
		if npcDotaNeutralKoboldTunneler != nil {
			dictionary.updateValue(npcDotaNeutralKoboldTunneler! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralKoboldTunnelerKey)
		}
		if npcDotaBadguysTower1Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower1Mid! as AnyObject, forKey: kDMDamageTakenNpcDotaBadguysTower1MidKey)
		}
		if npcDotaNeutralKoboldTaskmaster != nil {
			dictionary.updateValue(npcDotaNeutralKoboldTaskmaster! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralKoboldTaskmasterKey)
		}
		if npcDotaNeutralGhost != nil {
			dictionary.updateValue(npcDotaNeutralGhost! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralGhostKey)
		}
		if npcDotaHeroKunkka != nil {
			dictionary.updateValue(npcDotaHeroKunkka! as AnyObject, forKey: kDMDamageTakenNpcDotaHeroKunkkaKey)
		}
		if npcDotaNeutralPolarFurbolgUrsaWarrior != nil {
			dictionary.updateValue(npcDotaNeutralPolarFurbolgUrsaWarrior! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralPolarFurbolgUrsaWarriorKey)
		}
		if npcDotaNeutralKobold != nil {
			dictionary.updateValue(npcDotaNeutralKobold! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralKoboldKey)
		}
		if npcDotaNeutralRockGolem != nil {
			dictionary.updateValue(npcDotaNeutralRockGolem! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralRockGolemKey)
		}
		if npcDotaBadguysTower1Bot != nil {
			dictionary.updateValue(npcDotaBadguysTower1Bot! as AnyObject, forKey: kDMDamageTakenNpcDotaBadguysTower1BotKey)
		}
		if npcDotaNeutralSatyrTrickster != nil {
			dictionary.updateValue(npcDotaNeutralSatyrTrickster! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralSatyrTricksterKey)
		}
		if npcDotaGoodguysTower2Bot != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Bot! as AnyObject, forKey: kDMDamageTakenNpcDotaGoodguysTower2BotKey)
		}
		if npcDotaNeutralEnragedWildkin != nil {
			dictionary.updateValue(npcDotaNeutralEnragedWildkin! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralEnragedWildkinKey)
		}
		if npcDotaNeutralBlackDrake != nil {
			dictionary.updateValue(npcDotaNeutralBlackDrake! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralBlackDrakeKey)
		}
		if npcDotaHeroVengefulspirit != nil {
			dictionary.updateValue(npcDotaHeroVengefulspirit! as AnyObject, forKey: kDMDamageTakenNpcDotaHeroVengefulspiritKey)
		}
		if npcDotaBadguysTower3Mid != nil {
			dictionary.updateValue(npcDotaBadguysTower3Mid! as AnyObject, forKey: kDMDamageTakenNpcDotaBadguysTower3MidKey)
		}
		if npcDotaNeutralHarpyStorm != nil {
			dictionary.updateValue(npcDotaNeutralHarpyStorm! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralHarpyStormKey)
		}
		if npcDotaNeutralBlackDragon != nil {
			dictionary.updateValue(npcDotaNeutralBlackDragon! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralBlackDragonKey)
		}
		if npcDotaNeutralOgreMauler != nil {
			dictionary.updateValue(npcDotaNeutralOgreMauler! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralOgreMaulerKey)
		}
		if npcDotaGoodguysTower1Bot != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Bot! as AnyObject, forKey: kDMDamageTakenNpcDotaGoodguysTower1BotKey)
		}
		if npcDotaGoodguysTower1Top != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Top! as AnyObject, forKey: kDMDamageTakenNpcDotaGoodguysTower1TopKey)
		}
		if npcDotaNeutralGraniteGolem != nil {
			dictionary.updateValue(npcDotaNeutralGraniteGolem! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralGraniteGolemKey)
		}
		if npcDotaNeutralFelBeast != nil {
			dictionary.updateValue(npcDotaNeutralFelBeast! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralFelBeastKey)
		}
		if npcDotaNeutralGnollAssassin != nil {
			dictionary.updateValue(npcDotaNeutralGnollAssassin! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralGnollAssassinKey)
		}
		if npcDotaCreepBadguysMelee != nil {
			dictionary.updateValue(npcDotaCreepBadguysMelee! as AnyObject, forKey: kDMDamageTakenNpcDotaCreepBadguysMeleeKey)
		}
		if npcDotaNeutralMudGolem != nil {
			dictionary.updateValue(npcDotaNeutralMudGolem! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralMudGolemKey)
		}
		if npcDotaNeutralCentaurKhan != nil {
			dictionary.updateValue(npcDotaNeutralCentaurKhan! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralCentaurKhanKey)
		}
		if npcDotaHeroViper != nil {
			dictionary.updateValue(npcDotaHeroViper! as AnyObject, forKey: kDMDamageTakenNpcDotaHeroViperKey)
		}
		if npcDotaNeutralPolarFurbolgChampion != nil {
			dictionary.updateValue(npcDotaNeutralPolarFurbolgChampion! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralPolarFurbolgChampionKey)
		}
		if npcDotaNeutralBigThunderLizard != nil {
			dictionary.updateValue(npcDotaNeutralBigThunderLizard! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralBigThunderLizardKey)
		}
		if npcDotaNeutralAlphaWolf != nil {
			dictionary.updateValue(npcDotaNeutralAlphaWolf! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralAlphaWolfKey)
		}
		if npcDotaNeutralForestTrollHighPriest != nil {
			dictionary.updateValue(npcDotaNeutralForestTrollHighPriest! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralForestTrollHighPriestKey)
		}
		if npcDotaGoodguysTower3Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower3Mid! as AnyObject, forKey: kDMDamageTakenNpcDotaGoodguysTower3MidKey)
		}
		if npcDotaCreepBadguysRangedUpgraded != nil {
			dictionary.updateValue(npcDotaCreepBadguysRangedUpgraded! as AnyObject, forKey: kDMDamageTakenNpcDotaCreepBadguysRangedUpgradedKey)
		}
		if npcDotaNeutralCentaurOutrunner != nil {
			dictionary.updateValue(npcDotaNeutralCentaurOutrunner! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralCentaurOutrunnerKey)
		}
		if npcDotaGoodguysTower2Top != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Top! as AnyObject, forKey: kDMDamageTakenNpcDotaGoodguysTower2TopKey)
		}
		if npcDotaDarkTrollWarlordSkeletonWarrior != nil {
			dictionary.updateValue(npcDotaDarkTrollWarlordSkeletonWarrior! as AnyObject, forKey: kDMDamageTakenNpcDotaDarkTrollWarlordSkeletonWarriorKey)
		}
		if npcDotaNeutralWildkin != nil {
			dictionary.updateValue(npcDotaNeutralWildkin! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralWildkinKey)
		}
		if npcDotaBadguysTower1Top != nil {
			dictionary.updateValue(npcDotaBadguysTower1Top! as AnyObject, forKey: kDMDamageTakenNpcDotaBadguysTower1TopKey)
		}
		if npcDotaNeutralHarpyScout != nil {
			dictionary.updateValue(npcDotaNeutralHarpyScout! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralHarpyScoutKey)
		}
		if npcDotaGoodguysTower2Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower2Mid! as AnyObject, forKey: kDMDamageTakenNpcDotaGoodguysTower2MidKey)
		}
		if npcDotaNeutralSatyrSoulstealer != nil {
			dictionary.updateValue(npcDotaNeutralSatyrSoulstealer! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralSatyrSoulstealerKey)
		}
		if npcDotaGoodguysTower1Mid != nil {
			dictionary.updateValue(npcDotaGoodguysTower1Mid! as AnyObject, forKey: kDMDamageTakenNpcDotaGoodguysTower1MidKey)
		}
		if npcDotaNeutralSatyrHellcaller != nil {
			dictionary.updateValue(npcDotaNeutralSatyrHellcaller! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralSatyrHellcallerKey)
		}
		if npcDotaCreepGoodguysMelee != nil {
			dictionary.updateValue(npcDotaCreepGoodguysMelee! as AnyObject, forKey: kDMDamageTakenNpcDotaCreepGoodguysMeleeKey)
		}
		if npcDotaCreepBadguysRanged != nil {
			dictionary.updateValue(npcDotaCreepBadguysRanged! as AnyObject, forKey: kDMDamageTakenNpcDotaCreepBadguysRangedKey)
		}
		if npcDotaNeutralSmallThunderLizard != nil {
			dictionary.updateValue(npcDotaNeutralSmallThunderLizard! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralSmallThunderLizardKey)
		}
		if npcDotaNeutralDarkTrollWarlord != nil {
			dictionary.updateValue(npcDotaNeutralDarkTrollWarlord! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralDarkTrollWarlordKey)
		}
		if npcDotaBadguysTower2Top != nil {
			dictionary.updateValue(npcDotaBadguysTower2Top! as AnyObject, forKey: kDMDamageTakenNpcDotaBadguysTower2TopKey)
		}
		if npcDotaBadguysSiegeUpgraded != nil {
			dictionary.updateValue(npcDotaBadguysSiegeUpgraded! as AnyObject, forKey: kDMDamageTakenNpcDotaBadguysSiegeUpgradedKey)
		}
		if npcDotaGoodguysSiege != nil {
			dictionary.updateValue(npcDotaGoodguysSiege! as AnyObject, forKey: kDMDamageTakenNpcDotaGoodguysSiegeKey)
		}
		if npcDotaGoodguysTower4 != nil {
			dictionary.updateValue(npcDotaGoodguysTower4! as AnyObject, forKey: kDMDamageTakenNpcDotaGoodguysTower4Key)
		}
		if npcDotaRoshan != nil {
			dictionary.updateValue(npcDotaRoshan! as AnyObject, forKey: kDMDamageTakenNpcDotaRoshanKey)
		}
		if npcDotaHeroJuggernaut != nil {
			dictionary.updateValue(npcDotaHeroJuggernaut! as AnyObject, forKey: kDMDamageTakenNpcDotaHeroJuggernautKey)
		}
		if npcDotaBadguysTower4 != nil {
			dictionary.updateValue(npcDotaBadguysTower4! as AnyObject, forKey: kDMDamageTakenNpcDotaBadguysTower4Key)
		}
		if npcDotaBadguysSiege != nil {
			dictionary.updateValue(npcDotaBadguysSiege! as AnyObject, forKey: kDMDamageTakenNpcDotaBadguysSiegeKey)
		}
		if dotaUnknown != nil {
			dictionary.updateValue(dotaUnknown! as AnyObject, forKey: kDMDamageTakenDotaUnknownKey)
		}
		if npcDotaNeutralOgreMagi != nil {
			dictionary.updateValue(npcDotaNeutralOgreMagi! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralOgreMagiKey)
		}
		if npcDotaNeutralForestTrollBerserker != nil {
			dictionary.updateValue(npcDotaNeutralForestTrollBerserker! as AnyObject, forKey: kDMDamageTakenNpcDotaNeutralForestTrollBerserkerKey)
		}
		if npcDotaHeroArcWarden != nil {
			dictionary.updateValue(npcDotaHeroArcWarden! as AnyObject, forKey: kDMDamageTakenNpcDotaHeroArcWardenKey)
		}
		if npcDotaCreepGoodguysRanged != nil {
			dictionary.updateValue(npcDotaCreepGoodguysRanged! as AnyObject, forKey: kDMDamageTakenNpcDotaCreepGoodguysRangedKey)
		}
		if npcDotaHeroEmberSpirit != nil {
			dictionary.updateValue(npcDotaHeroEmberSpirit! as AnyObject, forKey: kDMDamageTakenNpcDotaHeroEmberSpiritKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.npcDotaHeroBristleback = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaHeroBristlebackKey) as? Int
		self.npcDotaHeroAbaddon = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaHeroAbaddonKey) as? Int
		self.npcDotaNeutralDarkTroll = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralDarkTrollKey) as? Int
		self.npcDotaHeroCrystalMaiden = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaHeroCrystalMaidenKey) as? Int
		self.npcDotaNeutralGiantWolf = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralGiantWolfKey) as? Int
		self.npcDotaHeroNevermore = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaHeroNevermoreKey) as? Int
		self.npcDotaNeutralMudGolemSplit = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralMudGolemSplitKey) as? Int
		self.npcDotaNeutralKoboldTunneler = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralKoboldTunnelerKey) as? Int
		self.npcDotaBadguysTower1Mid = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaBadguysTower1MidKey) as? Int
		self.npcDotaNeutralKoboldTaskmaster = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralKoboldTaskmasterKey) as? Int
		self.npcDotaNeutralGhost = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralGhostKey) as? Int
		self.npcDotaHeroKunkka = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaHeroKunkkaKey) as? Int
		self.npcDotaNeutralPolarFurbolgUrsaWarrior = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralPolarFurbolgUrsaWarriorKey) as? Int
		self.npcDotaNeutralKobold = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralKoboldKey) as? Int
		self.npcDotaNeutralRockGolem = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralRockGolemKey) as? Int
		self.npcDotaBadguysTower1Bot = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaBadguysTower1BotKey) as? Int
		self.npcDotaNeutralSatyrTrickster = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralSatyrTricksterKey) as? Int
		self.npcDotaGoodguysTower2Bot = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaGoodguysTower2BotKey) as? Int
		self.npcDotaNeutralEnragedWildkin = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralEnragedWildkinKey) as? Int
		self.npcDotaNeutralBlackDrake = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralBlackDrakeKey) as? Int
		self.npcDotaHeroVengefulspirit = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaHeroVengefulspiritKey) as? Int
		self.npcDotaBadguysTower3Mid = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaBadguysTower3MidKey) as? Int
		self.npcDotaNeutralHarpyStorm = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralHarpyStormKey) as? Int
		self.npcDotaNeutralBlackDragon = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralBlackDragonKey) as? Int
		self.npcDotaNeutralOgreMauler = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralOgreMaulerKey) as? Int
		self.npcDotaGoodguysTower1Bot = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaGoodguysTower1BotKey) as? Int
		self.npcDotaGoodguysTower1Top = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaGoodguysTower1TopKey) as? Int
		self.npcDotaNeutralGraniteGolem = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralGraniteGolemKey) as? Int
		self.npcDotaNeutralFelBeast = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralFelBeastKey) as? Int
		self.npcDotaNeutralGnollAssassin = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralGnollAssassinKey) as? Int
		self.npcDotaCreepBadguysMelee = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaCreepBadguysMeleeKey) as? Int
		self.npcDotaNeutralMudGolem = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralMudGolemKey) as? Int
		self.npcDotaNeutralCentaurKhan = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralCentaurKhanKey) as? Int
		self.npcDotaHeroViper = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaHeroViperKey) as? Int
		self.npcDotaNeutralPolarFurbolgChampion = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralPolarFurbolgChampionKey) as? Int
		self.npcDotaNeutralBigThunderLizard = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralBigThunderLizardKey) as? Int
		self.npcDotaNeutralAlphaWolf = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralAlphaWolfKey) as? Int
		self.npcDotaNeutralForestTrollHighPriest = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralForestTrollHighPriestKey) as? Int
		self.npcDotaGoodguysTower3Mid = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaGoodguysTower3MidKey) as? Int
		self.npcDotaCreepBadguysRangedUpgraded = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaCreepBadguysRangedUpgradedKey) as? Int
		self.npcDotaNeutralCentaurOutrunner = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralCentaurOutrunnerKey) as? Int
		self.npcDotaGoodguysTower2Top = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaGoodguysTower2TopKey) as? Int
		self.npcDotaDarkTrollWarlordSkeletonWarrior = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaDarkTrollWarlordSkeletonWarriorKey) as? Int
		self.npcDotaNeutralWildkin = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralWildkinKey) as? Int
		self.npcDotaBadguysTower1Top = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaBadguysTower1TopKey) as? Int
		self.npcDotaNeutralHarpyScout = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralHarpyScoutKey) as? Int
		self.npcDotaGoodguysTower2Mid = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaGoodguysTower2MidKey) as? Int
		self.npcDotaNeutralSatyrSoulstealer = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralSatyrSoulstealerKey) as? Int
		self.npcDotaGoodguysTower1Mid = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaGoodguysTower1MidKey) as? Int
		self.npcDotaNeutralSatyrHellcaller = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralSatyrHellcallerKey) as? Int
		self.npcDotaCreepGoodguysMelee = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaCreepGoodguysMeleeKey) as? Int
		self.npcDotaCreepBadguysRanged = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaCreepBadguysRangedKey) as? Int
		self.npcDotaNeutralSmallThunderLizard = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralSmallThunderLizardKey) as? Int
		self.npcDotaNeutralDarkTrollWarlord = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralDarkTrollWarlordKey) as? Int
		self.npcDotaBadguysTower2Top = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaBadguysTower2TopKey) as? Int
		self.npcDotaBadguysSiegeUpgraded = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaBadguysSiegeUpgradedKey) as? Int
		self.npcDotaGoodguysSiege = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaGoodguysSiegeKey) as? Int
		self.npcDotaGoodguysTower4 = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaGoodguysTower4Key) as? Int
		self.npcDotaRoshan = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaRoshanKey) as? Int
		self.npcDotaHeroJuggernaut = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaHeroJuggernautKey) as? Int
		self.npcDotaBadguysTower4 = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaBadguysTower4Key) as? Int
		self.npcDotaBadguysSiege = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaBadguysSiegeKey) as? Int
		self.dotaUnknown = aDecoder.decodeObject(forKey: kDMDamageTakenDotaUnknownKey) as? Int
		self.npcDotaNeutralOgreMagi = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralOgreMagiKey) as? Int
		self.npcDotaNeutralForestTrollBerserker = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaNeutralForestTrollBerserkerKey) as? Int
		self.npcDotaHeroArcWarden = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaHeroArcWardenKey) as? Int
		self.npcDotaCreepGoodguysRanged = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaCreepGoodguysRangedKey) as? Int
		self.npcDotaHeroEmberSpirit = aDecoder.decodeObject(forKey: kDMDamageTakenNpcDotaHeroEmberSpiritKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(npcDotaHeroBristleback, forKey: kDMDamageTakenNpcDotaHeroBristlebackKey)
		aCoder.encode(npcDotaHeroAbaddon, forKey: kDMDamageTakenNpcDotaHeroAbaddonKey)
		aCoder.encode(npcDotaNeutralDarkTroll, forKey: kDMDamageTakenNpcDotaNeutralDarkTrollKey)
		aCoder.encode(npcDotaHeroCrystalMaiden, forKey: kDMDamageTakenNpcDotaHeroCrystalMaidenKey)
		aCoder.encode(npcDotaNeutralGiantWolf, forKey: kDMDamageTakenNpcDotaNeutralGiantWolfKey)
		aCoder.encode(npcDotaHeroNevermore, forKey: kDMDamageTakenNpcDotaHeroNevermoreKey)
		aCoder.encode(npcDotaNeutralMudGolemSplit, forKey: kDMDamageTakenNpcDotaNeutralMudGolemSplitKey)
		aCoder.encode(npcDotaNeutralKoboldTunneler, forKey: kDMDamageTakenNpcDotaNeutralKoboldTunnelerKey)
		aCoder.encode(npcDotaBadguysTower1Mid, forKey: kDMDamageTakenNpcDotaBadguysTower1MidKey)
		aCoder.encode(npcDotaNeutralKoboldTaskmaster, forKey: kDMDamageTakenNpcDotaNeutralKoboldTaskmasterKey)
		aCoder.encode(npcDotaNeutralGhost, forKey: kDMDamageTakenNpcDotaNeutralGhostKey)
		aCoder.encode(npcDotaHeroKunkka, forKey: kDMDamageTakenNpcDotaHeroKunkkaKey)
		aCoder.encode(npcDotaNeutralPolarFurbolgUrsaWarrior, forKey: kDMDamageTakenNpcDotaNeutralPolarFurbolgUrsaWarriorKey)
		aCoder.encode(npcDotaNeutralKobold, forKey: kDMDamageTakenNpcDotaNeutralKoboldKey)
		aCoder.encode(npcDotaNeutralRockGolem, forKey: kDMDamageTakenNpcDotaNeutralRockGolemKey)
		aCoder.encode(npcDotaBadguysTower1Bot, forKey: kDMDamageTakenNpcDotaBadguysTower1BotKey)
		aCoder.encode(npcDotaNeutralSatyrTrickster, forKey: kDMDamageTakenNpcDotaNeutralSatyrTricksterKey)
		aCoder.encode(npcDotaGoodguysTower2Bot, forKey: kDMDamageTakenNpcDotaGoodguysTower2BotKey)
		aCoder.encode(npcDotaNeutralEnragedWildkin, forKey: kDMDamageTakenNpcDotaNeutralEnragedWildkinKey)
		aCoder.encode(npcDotaNeutralBlackDrake, forKey: kDMDamageTakenNpcDotaNeutralBlackDrakeKey)
		aCoder.encode(npcDotaHeroVengefulspirit, forKey: kDMDamageTakenNpcDotaHeroVengefulspiritKey)
		aCoder.encode(npcDotaBadguysTower3Mid, forKey: kDMDamageTakenNpcDotaBadguysTower3MidKey)
		aCoder.encode(npcDotaNeutralHarpyStorm, forKey: kDMDamageTakenNpcDotaNeutralHarpyStormKey)
		aCoder.encode(npcDotaNeutralBlackDragon, forKey: kDMDamageTakenNpcDotaNeutralBlackDragonKey)
		aCoder.encode(npcDotaNeutralOgreMauler, forKey: kDMDamageTakenNpcDotaNeutralOgreMaulerKey)
		aCoder.encode(npcDotaGoodguysTower1Bot, forKey: kDMDamageTakenNpcDotaGoodguysTower1BotKey)
		aCoder.encode(npcDotaGoodguysTower1Top, forKey: kDMDamageTakenNpcDotaGoodguysTower1TopKey)
		aCoder.encode(npcDotaNeutralGraniteGolem, forKey: kDMDamageTakenNpcDotaNeutralGraniteGolemKey)
		aCoder.encode(npcDotaNeutralFelBeast, forKey: kDMDamageTakenNpcDotaNeutralFelBeastKey)
		aCoder.encode(npcDotaNeutralGnollAssassin, forKey: kDMDamageTakenNpcDotaNeutralGnollAssassinKey)
		aCoder.encode(npcDotaCreepBadguysMelee, forKey: kDMDamageTakenNpcDotaCreepBadguysMeleeKey)
		aCoder.encode(npcDotaNeutralMudGolem, forKey: kDMDamageTakenNpcDotaNeutralMudGolemKey)
		aCoder.encode(npcDotaNeutralCentaurKhan, forKey: kDMDamageTakenNpcDotaNeutralCentaurKhanKey)
		aCoder.encode(npcDotaHeroViper, forKey: kDMDamageTakenNpcDotaHeroViperKey)
		aCoder.encode(npcDotaNeutralPolarFurbolgChampion, forKey: kDMDamageTakenNpcDotaNeutralPolarFurbolgChampionKey)
		aCoder.encode(npcDotaNeutralBigThunderLizard, forKey: kDMDamageTakenNpcDotaNeutralBigThunderLizardKey)
		aCoder.encode(npcDotaNeutralAlphaWolf, forKey: kDMDamageTakenNpcDotaNeutralAlphaWolfKey)
		aCoder.encode(npcDotaNeutralForestTrollHighPriest, forKey: kDMDamageTakenNpcDotaNeutralForestTrollHighPriestKey)
		aCoder.encode(npcDotaGoodguysTower3Mid, forKey: kDMDamageTakenNpcDotaGoodguysTower3MidKey)
		aCoder.encode(npcDotaCreepBadguysRangedUpgraded, forKey: kDMDamageTakenNpcDotaCreepBadguysRangedUpgradedKey)
		aCoder.encode(npcDotaNeutralCentaurOutrunner, forKey: kDMDamageTakenNpcDotaNeutralCentaurOutrunnerKey)
		aCoder.encode(npcDotaGoodguysTower2Top, forKey: kDMDamageTakenNpcDotaGoodguysTower2TopKey)
		aCoder.encode(npcDotaDarkTrollWarlordSkeletonWarrior, forKey: kDMDamageTakenNpcDotaDarkTrollWarlordSkeletonWarriorKey)
		aCoder.encode(npcDotaNeutralWildkin, forKey: kDMDamageTakenNpcDotaNeutralWildkinKey)
		aCoder.encode(npcDotaBadguysTower1Top, forKey: kDMDamageTakenNpcDotaBadguysTower1TopKey)
		aCoder.encode(npcDotaNeutralHarpyScout, forKey: kDMDamageTakenNpcDotaNeutralHarpyScoutKey)
		aCoder.encode(npcDotaGoodguysTower2Mid, forKey: kDMDamageTakenNpcDotaGoodguysTower2MidKey)
		aCoder.encode(npcDotaNeutralSatyrSoulstealer, forKey: kDMDamageTakenNpcDotaNeutralSatyrSoulstealerKey)
		aCoder.encode(npcDotaGoodguysTower1Mid, forKey: kDMDamageTakenNpcDotaGoodguysTower1MidKey)
		aCoder.encode(npcDotaNeutralSatyrHellcaller, forKey: kDMDamageTakenNpcDotaNeutralSatyrHellcallerKey)
		aCoder.encode(npcDotaCreepGoodguysMelee, forKey: kDMDamageTakenNpcDotaCreepGoodguysMeleeKey)
		aCoder.encode(npcDotaCreepBadguysRanged, forKey: kDMDamageTakenNpcDotaCreepBadguysRangedKey)
		aCoder.encode(npcDotaNeutralSmallThunderLizard, forKey: kDMDamageTakenNpcDotaNeutralSmallThunderLizardKey)
		aCoder.encode(npcDotaNeutralDarkTrollWarlord, forKey: kDMDamageTakenNpcDotaNeutralDarkTrollWarlordKey)
		aCoder.encode(npcDotaBadguysTower2Top, forKey: kDMDamageTakenNpcDotaBadguysTower2TopKey)
		aCoder.encode(npcDotaBadguysSiegeUpgraded, forKey: kDMDamageTakenNpcDotaBadguysSiegeUpgradedKey)
		aCoder.encode(npcDotaGoodguysSiege, forKey: kDMDamageTakenNpcDotaGoodguysSiegeKey)
		aCoder.encode(npcDotaGoodguysTower4, forKey: kDMDamageTakenNpcDotaGoodguysTower4Key)
		aCoder.encode(npcDotaRoshan, forKey: kDMDamageTakenNpcDotaRoshanKey)
		aCoder.encode(npcDotaHeroJuggernaut, forKey: kDMDamageTakenNpcDotaHeroJuggernautKey)
		aCoder.encode(npcDotaBadguysTower4, forKey: kDMDamageTakenNpcDotaBadguysTower4Key)
		aCoder.encode(npcDotaBadguysSiege, forKey: kDMDamageTakenNpcDotaBadguysSiegeKey)
		aCoder.encode(dotaUnknown, forKey: kDMDamageTakenDotaUnknownKey)
		aCoder.encode(npcDotaNeutralOgreMagi, forKey: kDMDamageTakenNpcDotaNeutralOgreMagiKey)
		aCoder.encode(npcDotaNeutralForestTrollBerserker, forKey: kDMDamageTakenNpcDotaNeutralForestTrollBerserkerKey)
		aCoder.encode(npcDotaHeroArcWarden, forKey: kDMDamageTakenNpcDotaHeroArcWardenKey)
		aCoder.encode(npcDotaCreepGoodguysRanged, forKey: kDMDamageTakenNpcDotaCreepGoodguysRangedKey)
		aCoder.encode(npcDotaHeroEmberSpirit, forKey: kDMDamageTakenNpcDotaHeroEmberSpiritKey)

    }

}
