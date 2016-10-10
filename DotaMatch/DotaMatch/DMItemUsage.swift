//
//  DMItemUsage.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMItemUsage: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMItemUsageEnergyBoosterKey: String = "energy_booster"
	internal let kDMItemUsageTangoKey: String = "tango"
	internal let kDMItemUsageAetherLensKey: String = "aether_lens"
	internal let kDMItemUsageEnchantedMangoKey: String = "enchanted_mango"
	internal let kDMItemUsageRiverPainter5Key: String = "river_painter5"
	internal let kDMItemUsageSkadiKey: String = "skadi"
	internal let kDMItemUsageBfuryKey: String = "bfury"
	internal let kDMItemUsageTranquilBootsKey: String = "tranquil_boots"
	internal let kDMItemUsageMjollnirKey: String = "mjollnir"
	internal let kDMItemUsagePersKey: String = "pers"
	internal let kDMItemUsageClaymoreKey: String = "claymore"
	internal let kDMItemUsageLifestealKey: String = "lifesteal"
	internal let kDMItemUsageBlightStoneKey: String = "blight_stone"
	internal let kDMItemUsageMonkeyKingBarKey: String = "monkey_king_bar"
	internal let kDMItemUsageUltimateOrbKey: String = "ultimate_orb"
	internal let kDMItemUsageFlaskKey: String = "flask"
	internal let kDMItemUsageDesolatorKey: String = "desolator"
	internal let kDMItemUsageStoutShieldKey: String = "stout_shield"
	internal let kDMItemUsageOrchidKey: String = "orchid"
	internal let kDMItemUsageAncientJanggoKey: String = "ancient_janggo"
	internal let kDMItemUsageMagicStickKey: String = "magic_stick"
	internal let kDMItemUsagePoorMansShieldKey: String = "poor_mans_shield"
	internal let kDMItemUsageAssaultKey: String = "assault"
	internal let kDMItemUsageBranchesKey: String = "branches"
	internal let kDMItemUsageBladesOfAttackKey: String = "blades_of_attack"
	internal let kDMItemUsageRingOfBasiliusKey: String = "ring_of_basilius"
	internal let kDMItemUsageMaelstromKey: String = "maelstrom"
	internal let kDMItemUsageBeltOfStrengthKey: String = "belt_of_strength"
	internal let kDMItemUsageRingOfRegenKey: String = "ring_of_regen"
	internal let kDMItemUsageCrimsonGuardKey: String = "crimson_guard"
	internal let kDMItemUsageMedallionOfCourageKey: String = "medallion_of_courage"
	internal let kDMItemUsageDemonEdgeKey: String = "demon_edge"
	internal let kDMItemUsageUrnOfShadowsKey: String = "urn_of_shadows"
	internal let kDMItemUsageOgreAxeKey: String = "ogre_axe"
	internal let kDMItemUsageCircletKey: String = "circlet"
	internal let kDMItemUsageBucklerKey: String = "buckler"
	internal let kDMItemUsageTomeOfKnowledgeKey: String = "tome_of_knowledge"
	internal let kDMItemUsageDustKey: String = "dust"
	internal let kDMItemUsageUltimateScepterKey: String = "ultimate_scepter"
	internal let kDMItemUsageVitalityBoosterKey: String = "vitality_booster"
	internal let kDMItemUsageRingOfProtectionKey: String = "ring_of_protection"
	internal let kDMItemUsagePlatemailKey: String = "platemail"
	internal let kDMItemUsageSangeAndYashaKey: String = "sange_and_yasha"
	internal let kDMItemUsageHyperstoneKey: String = "hyperstone"
	internal let kDMItemUsageAbyssalBladeKey: String = "abyssal_blade"
	internal let kDMItemUsageBasherKey: String = "basher"
	internal let kDMItemUsageWardSentryKey: String = "ward_sentry"
	internal let kDMItemUsageHeaddressKey: String = "headdress"
	internal let kDMItemUsageBootsKey: String = "boots"
	internal let kDMItemUsageSangeKey: String = "sange"
	internal let kDMItemUsageTpscrollKey: String = "tpscroll"
	internal let kDMItemUsageBroadswordKey: String = "broadsword"
	internal let kDMItemUsageQuellingBladeKey: String = "quelling_blade"
	internal let kDMItemUsageOrbOfVenomKey: String = "orb_of_venom"
	internal let kDMItemUsageGlovesKey: String = "gloves"
	internal let kDMItemUsageHandOfMidasKey: String = "hand_of_midas"
	internal let kDMItemUsageArmletKey: String = "armlet"
	internal let kDMItemUsageMoonShardKey: String = "moon_shard"
	internal let kDMItemUsageCourierKey: String = "courier"
	internal let kDMItemUsageShadowAmuletKey: String = "shadow_amulet"
	internal let kDMItemUsagePowerTreadsKey: String = "power_treads"
	internal let kDMItemUsagePipeKey: String = "pipe"
	internal let kDMItemUsageBootsOfElvesKey: String = "boots_of_elves"
	internal let kDMItemUsageInvisSwordKey: String = "invis_sword"
	internal let kDMItemUsageGauntletsKey: String = "gauntlets"
	internal let kDMItemUsageTalismanOfEvasionKey: String = "talisman_of_evasion"
	internal let kDMItemUsageHelmOfIronWillKey: String = "helm_of_iron_will"
	internal let kDMItemUsageVoidStoneKey: String = "void_stone"
	internal let kDMItemUsageSilverEdgeKey: String = "silver_edge"
	internal let kDMItemUsageReaverKey: String = "reaver"
	internal let kDMItemUsageRingOfHealthKey: String = "ring_of_health"
	internal let kDMItemUsageHoodOfDefianceKey: String = "hood_of_defiance"
	internal let kDMItemUsageMantaKey: String = "manta"
	internal let kDMItemUsagePointBoosterKey: String = "point_booster"
	internal let kDMItemUsageVanguardKey: String = "vanguard"
	internal let kDMItemUsageBladeOfAlacrityKey: String = "blade_of_alacrity"
	internal let kDMItemUsageStaffOfWizardryKey: String = "staff_of_wizardry"
	internal let kDMItemUsageInfusedRaindropKey: String = "infused_raindrop"
	internal let kDMItemUsageWardObserverKey: String = "ward_observer"
	internal let kDMItemUsageTravelBootsKey: String = "travel_boots"
	internal let kDMItemUsageBlackKingBarKey: String = "black_king_bar"
	internal let kDMItemUsagePhaseBootsKey: String = "phase_boots"
	internal let kDMItemUsageFaerieFireKey: String = "faerie_fire"
	internal let kDMItemUsageVladmirKey: String = "vladmir"
	internal let kDMItemUsageSobiMaskKey: String = "sobi_mask"
	internal let kDMItemUsageWindLaceKey: String = "wind_lace"
	internal let kDMItemUsageGreaterCritKey: String = "greater_crit"
	internal let kDMItemUsageSolarCrestKey: String = "solar_crest"
	internal let kDMItemUsageFlyingCourierKey: String = "flying_courier"
	internal let kDMItemUsageMithrilHammerKey: String = "mithril_hammer"
	internal let kDMItemUsageYashaKey: String = "yasha"
	internal let kDMItemUsageWraithBandKey: String = "wraith_band"
	internal let kDMItemUsageHeartKey: String = "heart"
	internal let kDMItemUsageClarityKey: String = "clarity"
	internal let kDMItemUsageBloodthornKey: String = "bloodthorn"
	internal let kDMItemUsageTravelBoots2Key: String = "travel_boots_2"
	internal let kDMItemUsageQuarterstaffKey: String = "quarterstaff"
	internal let kDMItemUsageOblivionStaffKey: String = "oblivion_staff"
	internal let kDMItemUsageMagicWandKey: String = "magic_wand"
	internal let kDMItemUsageGlimmerCapeKey: String = "glimmer_cape"
	internal let kDMItemUsageRingOfAquilaKey: String = "ring_of_aquila"
	internal let kDMItemUsageSlippersKey: String = "slippers"
	internal let kDMItemUsageLesserCritKey: String = "lesser_crit"
	internal let kDMItemUsageJavelinKey: String = "javelin"
	internal let kDMItemUsageHelmOfTheDominatorKey: String = "helm_of_the_dominator"
	internal let kDMItemUsageCloakKey: String = "cloak"
	internal let kDMItemUsageGemKey: String = "gem"
	internal let kDMItemUsageBracerKey: String = "bracer"
	internal let kDMItemUsageRobeKey: String = "robe"
	internal let kDMItemUsageBottleKey: String = "bottle"
	internal let kDMItemUsageChainmailKey: String = "chainmail"


    // MARK: Properties
	open var energyBooster: Int?
	open var tango: Int?
	open var aetherLens: Int?
	open var enchantedMango: Int?
	open var riverPainter5: Int?
	open var skadi: Int?
	open var bfury: Int?
	open var tranquilBoots: Int?
	open var mjollnir: Int?
	open var pers: Int?
	open var claymore: Int?
	open var lifesteal: Int?
	open var blightStone: Int?
	open var monkeyKingBar: Int?
	open var ultimateOrb: Int?
	open var flask: Int?
	open var desolator: Int?
	open var stoutShield: Int?
	open var orchid: Int?
	open var ancientJanggo: Int?
	open var magicStick: Int?
	open var poorMansShield: Int?
	open var assault: Int?
	open var branches: Int?
	open var bladesOfAttack: Int?
	open var ringOfBasilius: Int?
	open var maelstrom: Int?
	open var beltOfStrength: Int?
	open var ringOfRegen: Int?
	open var crimsonGuard: Int?
	open var medallionOfCourage: Int?
	open var demonEdge: Int?
	open var urnOfShadows: Int?
	open var ogreAxe: Int?
	open var circlet: Int?
	open var buckler: Int?
	open var tomeOfKnowledge: Int?
	open var dust: Int?
	open var ultimateScepter: Int?
	open var vitalityBooster: Int?
	open var ringOfProtection: Int?
	open var platemail: Int?
	open var sangeAndYasha: Int?
	open var hyperstone: Int?
	open var abyssalBlade: Int?
	open var basher: Int?
	open var wardSentry: Int?
	open var headdress: Int?
	open var boots: Int?
	open var sange: Int?
	open var tpscroll: Int?
	open var broadsword: Int?
	open var quellingBlade: Int?
	open var orbOfVenom: Int?
	open var gloves: Int?
	open var handOfMidas: Int?
	open var armlet: Int?
	open var moonShard: Int?
	open var courier: Int?
	open var shadowAmulet: Int?
	open var powerTreads: Int?
	open var pipe: Int?
	open var bootsOfElves: Int?
	open var invisSword: Int?
	open var gauntlets: Int?
	open var talismanOfEvasion: Int?
	open var helmOfIronWill: Int?
	open var voidStone: Int?
	open var silverEdge: Int?
	open var reaver: Int?
	open var ringOfHealth: Int?
	open var hoodOfDefiance: Int?
	open var manta: Int?
	open var pointBooster: Int?
	open var vanguard: Int?
	open var bladeOfAlacrity: Int?
	open var staffOfWizardry: Int?
	open var infusedRaindrop: Int?
	open var wardObserver: Int?
	open var travelBoots: Int?
	open var blackKingBar: Int?
	open var phaseBoots: Int?
	open var faerieFire: Int?
	open var vladmir: Int?
	open var sobiMask: Int?
	open var windLace: Int?
	open var greaterCrit: Int?
	open var solarCrest: Int?
	open var flyingCourier: Int?
	open var mithrilHammer: Int?
	open var yasha: Int?
	open var wraithBand: Int?
	open var heart: Int?
	open var clarity: Int?
	open var bloodthorn: Int?
	open var travelBoots2: Int?
	open var quarterstaff: Int?
	open var oblivionStaff: Int?
	open var magicWand: Int?
	open var glimmerCape: Int?
	open var ringOfAquila: Int?
	open var slippers: Int?
	open var lesserCrit: Int?
	open var javelin: Int?
	open var helmOfTheDominator: Int?
	open var cloak: Int?
	open var gem: Int?
	open var bracer: Int?
	open var robe: Int?
	open var bottle: Int?
	open var chainmail: Int?


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
		energyBooster = json[kDMItemUsageEnergyBoosterKey].int
		tango = json[kDMItemUsageTangoKey].int
		aetherLens = json[kDMItemUsageAetherLensKey].int
		enchantedMango = json[kDMItemUsageEnchantedMangoKey].int
		riverPainter5 = json[kDMItemUsageRiverPainter5Key].int
		skadi = json[kDMItemUsageSkadiKey].int
		bfury = json[kDMItemUsageBfuryKey].int
		tranquilBoots = json[kDMItemUsageTranquilBootsKey].int
		mjollnir = json[kDMItemUsageMjollnirKey].int
		pers = json[kDMItemUsagePersKey].int
		claymore = json[kDMItemUsageClaymoreKey].int
		lifesteal = json[kDMItemUsageLifestealKey].int
		blightStone = json[kDMItemUsageBlightStoneKey].int
		monkeyKingBar = json[kDMItemUsageMonkeyKingBarKey].int
		ultimateOrb = json[kDMItemUsageUltimateOrbKey].int
		flask = json[kDMItemUsageFlaskKey].int
		desolator = json[kDMItemUsageDesolatorKey].int
		stoutShield = json[kDMItemUsageStoutShieldKey].int
		orchid = json[kDMItemUsageOrchidKey].int
		ancientJanggo = json[kDMItemUsageAncientJanggoKey].int
		magicStick = json[kDMItemUsageMagicStickKey].int
		poorMansShield = json[kDMItemUsagePoorMansShieldKey].int
		assault = json[kDMItemUsageAssaultKey].int
		branches = json[kDMItemUsageBranchesKey].int
		bladesOfAttack = json[kDMItemUsageBladesOfAttackKey].int
		ringOfBasilius = json[kDMItemUsageRingOfBasiliusKey].int
		maelstrom = json[kDMItemUsageMaelstromKey].int
		beltOfStrength = json[kDMItemUsageBeltOfStrengthKey].int
		ringOfRegen = json[kDMItemUsageRingOfRegenKey].int
		crimsonGuard = json[kDMItemUsageCrimsonGuardKey].int
		medallionOfCourage = json[kDMItemUsageMedallionOfCourageKey].int
		demonEdge = json[kDMItemUsageDemonEdgeKey].int
		urnOfShadows = json[kDMItemUsageUrnOfShadowsKey].int
		ogreAxe = json[kDMItemUsageOgreAxeKey].int
		circlet = json[kDMItemUsageCircletKey].int
		buckler = json[kDMItemUsageBucklerKey].int
		tomeOfKnowledge = json[kDMItemUsageTomeOfKnowledgeKey].int
		dust = json[kDMItemUsageDustKey].int
		ultimateScepter = json[kDMItemUsageUltimateScepterKey].int
		vitalityBooster = json[kDMItemUsageVitalityBoosterKey].int
		ringOfProtection = json[kDMItemUsageRingOfProtectionKey].int
		platemail = json[kDMItemUsagePlatemailKey].int
		sangeAndYasha = json[kDMItemUsageSangeAndYashaKey].int
		hyperstone = json[kDMItemUsageHyperstoneKey].int
		abyssalBlade = json[kDMItemUsageAbyssalBladeKey].int
		basher = json[kDMItemUsageBasherKey].int
		wardSentry = json[kDMItemUsageWardSentryKey].int
		headdress = json[kDMItemUsageHeaddressKey].int
		boots = json[kDMItemUsageBootsKey].int
		sange = json[kDMItemUsageSangeKey].int
		tpscroll = json[kDMItemUsageTpscrollKey].int
		broadsword = json[kDMItemUsageBroadswordKey].int
		quellingBlade = json[kDMItemUsageQuellingBladeKey].int
		orbOfVenom = json[kDMItemUsageOrbOfVenomKey].int
		gloves = json[kDMItemUsageGlovesKey].int
		handOfMidas = json[kDMItemUsageHandOfMidasKey].int
		armlet = json[kDMItemUsageArmletKey].int
		moonShard = json[kDMItemUsageMoonShardKey].int
		courier = json[kDMItemUsageCourierKey].int
		shadowAmulet = json[kDMItemUsageShadowAmuletKey].int
		powerTreads = json[kDMItemUsagePowerTreadsKey].int
		pipe = json[kDMItemUsagePipeKey].int
		bootsOfElves = json[kDMItemUsageBootsOfElvesKey].int
		invisSword = json[kDMItemUsageInvisSwordKey].int
		gauntlets = json[kDMItemUsageGauntletsKey].int
		talismanOfEvasion = json[kDMItemUsageTalismanOfEvasionKey].int
		helmOfIronWill = json[kDMItemUsageHelmOfIronWillKey].int
		voidStone = json[kDMItemUsageVoidStoneKey].int
		silverEdge = json[kDMItemUsageSilverEdgeKey].int
		reaver = json[kDMItemUsageReaverKey].int
		ringOfHealth = json[kDMItemUsageRingOfHealthKey].int
		hoodOfDefiance = json[kDMItemUsageHoodOfDefianceKey].int
		manta = json[kDMItemUsageMantaKey].int
		pointBooster = json[kDMItemUsagePointBoosterKey].int
		vanguard = json[kDMItemUsageVanguardKey].int
		bladeOfAlacrity = json[kDMItemUsageBladeOfAlacrityKey].int
		staffOfWizardry = json[kDMItemUsageStaffOfWizardryKey].int
		infusedRaindrop = json[kDMItemUsageInfusedRaindropKey].int
		wardObserver = json[kDMItemUsageWardObserverKey].int
		travelBoots = json[kDMItemUsageTravelBootsKey].int
		blackKingBar = json[kDMItemUsageBlackKingBarKey].int
		phaseBoots = json[kDMItemUsagePhaseBootsKey].int
		faerieFire = json[kDMItemUsageFaerieFireKey].int
		vladmir = json[kDMItemUsageVladmirKey].int
		sobiMask = json[kDMItemUsageSobiMaskKey].int
		windLace = json[kDMItemUsageWindLaceKey].int
		greaterCrit = json[kDMItemUsageGreaterCritKey].int
		solarCrest = json[kDMItemUsageSolarCrestKey].int
		flyingCourier = json[kDMItemUsageFlyingCourierKey].int
		mithrilHammer = json[kDMItemUsageMithrilHammerKey].int
		yasha = json[kDMItemUsageYashaKey].int
		wraithBand = json[kDMItemUsageWraithBandKey].int
		heart = json[kDMItemUsageHeartKey].int
		clarity = json[kDMItemUsageClarityKey].int
		bloodthorn = json[kDMItemUsageBloodthornKey].int
		travelBoots2 = json[kDMItemUsageTravelBoots2Key].int
		quarterstaff = json[kDMItemUsageQuarterstaffKey].int
		oblivionStaff = json[kDMItemUsageOblivionStaffKey].int
		magicWand = json[kDMItemUsageMagicWandKey].int
		glimmerCape = json[kDMItemUsageGlimmerCapeKey].int
		ringOfAquila = json[kDMItemUsageRingOfAquilaKey].int
		slippers = json[kDMItemUsageSlippersKey].int
		lesserCrit = json[kDMItemUsageLesserCritKey].int
		javelin = json[kDMItemUsageJavelinKey].int
		helmOfTheDominator = json[kDMItemUsageHelmOfTheDominatorKey].int
		cloak = json[kDMItemUsageCloakKey].int
		gem = json[kDMItemUsageGemKey].int
		bracer = json[kDMItemUsageBracerKey].int
		robe = json[kDMItemUsageRobeKey].int
		bottle = json[kDMItemUsageBottleKey].int
		chainmail = json[kDMItemUsageChainmailKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if energyBooster != nil {
			dictionary.updateValue(energyBooster! as AnyObject, forKey: kDMItemUsageEnergyBoosterKey)
		}
		if tango != nil {
			dictionary.updateValue(tango! as AnyObject, forKey: kDMItemUsageTangoKey)
		}
		if aetherLens != nil {
			dictionary.updateValue(aetherLens! as AnyObject, forKey: kDMItemUsageAetherLensKey)
		}
		if enchantedMango != nil {
			dictionary.updateValue(enchantedMango! as AnyObject, forKey: kDMItemUsageEnchantedMangoKey)
		}
		if riverPainter5 != nil {
			dictionary.updateValue(riverPainter5! as AnyObject, forKey: kDMItemUsageRiverPainter5Key)
		}
		if skadi != nil {
			dictionary.updateValue(skadi! as AnyObject, forKey: kDMItemUsageSkadiKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury! as AnyObject, forKey: kDMItemUsageBfuryKey)
		}
		if tranquilBoots != nil {
			dictionary.updateValue(tranquilBoots! as AnyObject, forKey: kDMItemUsageTranquilBootsKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir! as AnyObject, forKey: kDMItemUsageMjollnirKey)
		}
		if pers != nil {
			dictionary.updateValue(pers! as AnyObject, forKey: kDMItemUsagePersKey)
		}
		if claymore != nil {
			dictionary.updateValue(claymore! as AnyObject, forKey: kDMItemUsageClaymoreKey)
		}
		if lifesteal != nil {
			dictionary.updateValue(lifesteal! as AnyObject, forKey: kDMItemUsageLifestealKey)
		}
		if blightStone != nil {
			dictionary.updateValue(blightStone! as AnyObject, forKey: kDMItemUsageBlightStoneKey)
		}
		if monkeyKingBar != nil {
			dictionary.updateValue(monkeyKingBar! as AnyObject, forKey: kDMItemUsageMonkeyKingBarKey)
		}
		if ultimateOrb != nil {
			dictionary.updateValue(ultimateOrb! as AnyObject, forKey: kDMItemUsageUltimateOrbKey)
		}
		if flask != nil {
			dictionary.updateValue(flask! as AnyObject, forKey: kDMItemUsageFlaskKey)
		}
		if desolator != nil {
			dictionary.updateValue(desolator! as AnyObject, forKey: kDMItemUsageDesolatorKey)
		}
		if stoutShield != nil {
			dictionary.updateValue(stoutShield! as AnyObject, forKey: kDMItemUsageStoutShieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid! as AnyObject, forKey: kDMItemUsageOrchidKey)
		}
		if ancientJanggo != nil {
			dictionary.updateValue(ancientJanggo! as AnyObject, forKey: kDMItemUsageAncientJanggoKey)
		}
		if magicStick != nil {
			dictionary.updateValue(magicStick! as AnyObject, forKey: kDMItemUsageMagicStickKey)
		}
		if poorMansShield != nil {
			dictionary.updateValue(poorMansShield! as AnyObject, forKey: kDMItemUsagePoorMansShieldKey)
		}
		if assault != nil {
			dictionary.updateValue(assault! as AnyObject, forKey: kDMItemUsageAssaultKey)
		}
		if branches != nil {
			dictionary.updateValue(branches! as AnyObject, forKey: kDMItemUsageBranchesKey)
		}
		if bladesOfAttack != nil {
			dictionary.updateValue(bladesOfAttack! as AnyObject, forKey: kDMItemUsageBladesOfAttackKey)
		}
		if ringOfBasilius != nil {
			dictionary.updateValue(ringOfBasilius! as AnyObject, forKey: kDMItemUsageRingOfBasiliusKey)
		}
		if maelstrom != nil {
			dictionary.updateValue(maelstrom! as AnyObject, forKey: kDMItemUsageMaelstromKey)
		}
		if beltOfStrength != nil {
			dictionary.updateValue(beltOfStrength! as AnyObject, forKey: kDMItemUsageBeltOfStrengthKey)
		}
		if ringOfRegen != nil {
			dictionary.updateValue(ringOfRegen! as AnyObject, forKey: kDMItemUsageRingOfRegenKey)
		}
		if crimsonGuard != nil {
			dictionary.updateValue(crimsonGuard! as AnyObject, forKey: kDMItemUsageCrimsonGuardKey)
		}
		if medallionOfCourage != nil {
			dictionary.updateValue(medallionOfCourage! as AnyObject, forKey: kDMItemUsageMedallionOfCourageKey)
		}
		if demonEdge != nil {
			dictionary.updateValue(demonEdge! as AnyObject, forKey: kDMItemUsageDemonEdgeKey)
		}
		if urnOfShadows != nil {
			dictionary.updateValue(urnOfShadows! as AnyObject, forKey: kDMItemUsageUrnOfShadowsKey)
		}
		if ogreAxe != nil {
			dictionary.updateValue(ogreAxe! as AnyObject, forKey: kDMItemUsageOgreAxeKey)
		}
		if circlet != nil {
			dictionary.updateValue(circlet! as AnyObject, forKey: kDMItemUsageCircletKey)
		}
		if buckler != nil {
			dictionary.updateValue(buckler! as AnyObject, forKey: kDMItemUsageBucklerKey)
		}
		if tomeOfKnowledge != nil {
			dictionary.updateValue(tomeOfKnowledge! as AnyObject, forKey: kDMItemUsageTomeOfKnowledgeKey)
		}
		if dust != nil {
			dictionary.updateValue(dust! as AnyObject, forKey: kDMItemUsageDustKey)
		}
		if ultimateScepter != nil {
			dictionary.updateValue(ultimateScepter! as AnyObject, forKey: kDMItemUsageUltimateScepterKey)
		}
		if vitalityBooster != nil {
			dictionary.updateValue(vitalityBooster! as AnyObject, forKey: kDMItemUsageVitalityBoosterKey)
		}
		if ringOfProtection != nil {
			dictionary.updateValue(ringOfProtection! as AnyObject, forKey: kDMItemUsageRingOfProtectionKey)
		}
		if platemail != nil {
			dictionary.updateValue(platemail! as AnyObject, forKey: kDMItemUsagePlatemailKey)
		}
		if sangeAndYasha != nil {
			dictionary.updateValue(sangeAndYasha! as AnyObject, forKey: kDMItemUsageSangeAndYashaKey)
		}
		if hyperstone != nil {
			dictionary.updateValue(hyperstone! as AnyObject, forKey: kDMItemUsageHyperstoneKey)
		}
		if abyssalBlade != nil {
			dictionary.updateValue(abyssalBlade! as AnyObject, forKey: kDMItemUsageAbyssalBladeKey)
		}
		if basher != nil {
			dictionary.updateValue(basher! as AnyObject, forKey: kDMItemUsageBasherKey)
		}
		if wardSentry != nil {
			dictionary.updateValue(wardSentry! as AnyObject, forKey: kDMItemUsageWardSentryKey)
		}
		if headdress != nil {
			dictionary.updateValue(headdress! as AnyObject, forKey: kDMItemUsageHeaddressKey)
		}
		if boots != nil {
			dictionary.updateValue(boots! as AnyObject, forKey: kDMItemUsageBootsKey)
		}
		if sange != nil {
			dictionary.updateValue(sange! as AnyObject, forKey: kDMItemUsageSangeKey)
		}
		if tpscroll != nil {
			dictionary.updateValue(tpscroll! as AnyObject, forKey: kDMItemUsageTpscrollKey)
		}
		if broadsword != nil {
			dictionary.updateValue(broadsword! as AnyObject, forKey: kDMItemUsageBroadswordKey)
		}
		if quellingBlade != nil {
			dictionary.updateValue(quellingBlade! as AnyObject, forKey: kDMItemUsageQuellingBladeKey)
		}
		if orbOfVenom != nil {
			dictionary.updateValue(orbOfVenom! as AnyObject, forKey: kDMItemUsageOrbOfVenomKey)
		}
		if gloves != nil {
			dictionary.updateValue(gloves! as AnyObject, forKey: kDMItemUsageGlovesKey)
		}
		if handOfMidas != nil {
			dictionary.updateValue(handOfMidas! as AnyObject, forKey: kDMItemUsageHandOfMidasKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet! as AnyObject, forKey: kDMItemUsageArmletKey)
		}
		if moonShard != nil {
			dictionary.updateValue(moonShard! as AnyObject, forKey: kDMItemUsageMoonShardKey)
		}
		if courier != nil {
			dictionary.updateValue(courier! as AnyObject, forKey: kDMItemUsageCourierKey)
		}
		if shadowAmulet != nil {
			dictionary.updateValue(shadowAmulet! as AnyObject, forKey: kDMItemUsageShadowAmuletKey)
		}
		if powerTreads != nil {
			dictionary.updateValue(powerTreads! as AnyObject, forKey: kDMItemUsagePowerTreadsKey)
		}
		if pipe != nil {
			dictionary.updateValue(pipe! as AnyObject, forKey: kDMItemUsagePipeKey)
		}
		if bootsOfElves != nil {
			dictionary.updateValue(bootsOfElves! as AnyObject, forKey: kDMItemUsageBootsOfElvesKey)
		}
		if invisSword != nil {
			dictionary.updateValue(invisSword! as AnyObject, forKey: kDMItemUsageInvisSwordKey)
		}
		if gauntlets != nil {
			dictionary.updateValue(gauntlets! as AnyObject, forKey: kDMItemUsageGauntletsKey)
		}
		if talismanOfEvasion != nil {
			dictionary.updateValue(talismanOfEvasion! as AnyObject, forKey: kDMItemUsageTalismanOfEvasionKey)
		}
		if helmOfIronWill != nil {
			dictionary.updateValue(helmOfIronWill! as AnyObject, forKey: kDMItemUsageHelmOfIronWillKey)
		}
		if voidStone != nil {
			dictionary.updateValue(voidStone! as AnyObject, forKey: kDMItemUsageVoidStoneKey)
		}
		if silverEdge != nil {
			dictionary.updateValue(silverEdge! as AnyObject, forKey: kDMItemUsageSilverEdgeKey)
		}
		if reaver != nil {
			dictionary.updateValue(reaver! as AnyObject, forKey: kDMItemUsageReaverKey)
		}
		if ringOfHealth != nil {
			dictionary.updateValue(ringOfHealth! as AnyObject, forKey: kDMItemUsageRingOfHealthKey)
		}
		if hoodOfDefiance != nil {
			dictionary.updateValue(hoodOfDefiance! as AnyObject, forKey: kDMItemUsageHoodOfDefianceKey)
		}
		if manta != nil {
			dictionary.updateValue(manta! as AnyObject, forKey: kDMItemUsageMantaKey)
		}
		if pointBooster != nil {
			dictionary.updateValue(pointBooster! as AnyObject, forKey: kDMItemUsagePointBoosterKey)
		}
		if vanguard != nil {
			dictionary.updateValue(vanguard! as AnyObject, forKey: kDMItemUsageVanguardKey)
		}
		if bladeOfAlacrity != nil {
			dictionary.updateValue(bladeOfAlacrity! as AnyObject, forKey: kDMItemUsageBladeOfAlacrityKey)
		}
		if staffOfWizardry != nil {
			dictionary.updateValue(staffOfWizardry! as AnyObject, forKey: kDMItemUsageStaffOfWizardryKey)
		}
		if infusedRaindrop != nil {
			dictionary.updateValue(infusedRaindrop! as AnyObject, forKey: kDMItemUsageInfusedRaindropKey)
		}
		if wardObserver != nil {
			dictionary.updateValue(wardObserver! as AnyObject, forKey: kDMItemUsageWardObserverKey)
		}
		if travelBoots != nil {
			dictionary.updateValue(travelBoots! as AnyObject, forKey: kDMItemUsageTravelBootsKey)
		}
		if blackKingBar != nil {
			dictionary.updateValue(blackKingBar! as AnyObject, forKey: kDMItemUsageBlackKingBarKey)
		}
		if phaseBoots != nil {
			dictionary.updateValue(phaseBoots! as AnyObject, forKey: kDMItemUsagePhaseBootsKey)
		}
		if faerieFire != nil {
			dictionary.updateValue(faerieFire! as AnyObject, forKey: kDMItemUsageFaerieFireKey)
		}
		if vladmir != nil {
			dictionary.updateValue(vladmir! as AnyObject, forKey: kDMItemUsageVladmirKey)
		}
		if sobiMask != nil {
			dictionary.updateValue(sobiMask! as AnyObject, forKey: kDMItemUsageSobiMaskKey)
		}
		if windLace != nil {
			dictionary.updateValue(windLace! as AnyObject, forKey: kDMItemUsageWindLaceKey)
		}
		if greaterCrit != nil {
			dictionary.updateValue(greaterCrit! as AnyObject, forKey: kDMItemUsageGreaterCritKey)
		}
		if solarCrest != nil {
			dictionary.updateValue(solarCrest! as AnyObject, forKey: kDMItemUsageSolarCrestKey)
		}
		if flyingCourier != nil {
			dictionary.updateValue(flyingCourier! as AnyObject, forKey: kDMItemUsageFlyingCourierKey)
		}
		if mithrilHammer != nil {
			dictionary.updateValue(mithrilHammer! as AnyObject, forKey: kDMItemUsageMithrilHammerKey)
		}
		if yasha != nil {
			dictionary.updateValue(yasha! as AnyObject, forKey: kDMItemUsageYashaKey)
		}
		if wraithBand != nil {
			dictionary.updateValue(wraithBand! as AnyObject, forKey: kDMItemUsageWraithBandKey)
		}
		if heart != nil {
			dictionary.updateValue(heart! as AnyObject, forKey: kDMItemUsageHeartKey)
		}
		if clarity != nil {
			dictionary.updateValue(clarity! as AnyObject, forKey: kDMItemUsageClarityKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn! as AnyObject, forKey: kDMItemUsageBloodthornKey)
		}
		if travelBoots2 != nil {
			dictionary.updateValue(travelBoots2! as AnyObject, forKey: kDMItemUsageTravelBoots2Key)
		}
		if quarterstaff != nil {
			dictionary.updateValue(quarterstaff! as AnyObject, forKey: kDMItemUsageQuarterstaffKey)
		}
		if oblivionStaff != nil {
			dictionary.updateValue(oblivionStaff! as AnyObject, forKey: kDMItemUsageOblivionStaffKey)
		}
		if magicWand != nil {
			dictionary.updateValue(magicWand! as AnyObject, forKey: kDMItemUsageMagicWandKey)
		}
		if glimmerCape != nil {
			dictionary.updateValue(glimmerCape! as AnyObject, forKey: kDMItemUsageGlimmerCapeKey)
		}
		if ringOfAquila != nil {
			dictionary.updateValue(ringOfAquila! as AnyObject, forKey: kDMItemUsageRingOfAquilaKey)
		}
		if slippers != nil {
			dictionary.updateValue(slippers! as AnyObject, forKey: kDMItemUsageSlippersKey)
		}
		if lesserCrit != nil {
			dictionary.updateValue(lesserCrit! as AnyObject, forKey: kDMItemUsageLesserCritKey)
		}
		if javelin != nil {
			dictionary.updateValue(javelin! as AnyObject, forKey: kDMItemUsageJavelinKey)
		}
		if helmOfTheDominator != nil {
			dictionary.updateValue(helmOfTheDominator! as AnyObject, forKey: kDMItemUsageHelmOfTheDominatorKey)
		}
		if cloak != nil {
			dictionary.updateValue(cloak! as AnyObject, forKey: kDMItemUsageCloakKey)
		}
		if gem != nil {
			dictionary.updateValue(gem! as AnyObject, forKey: kDMItemUsageGemKey)
		}
		if bracer != nil {
			dictionary.updateValue(bracer! as AnyObject, forKey: kDMItemUsageBracerKey)
		}
		if robe != nil {
			dictionary.updateValue(robe! as AnyObject, forKey: kDMItemUsageRobeKey)
		}
		if bottle != nil {
			dictionary.updateValue(bottle! as AnyObject, forKey: kDMItemUsageBottleKey)
		}
		if chainmail != nil {
			dictionary.updateValue(chainmail! as AnyObject, forKey: kDMItemUsageChainmailKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.energyBooster = aDecoder.decodeObject(forKey: kDMItemUsageEnergyBoosterKey) as? Int
		self.tango = aDecoder.decodeObject(forKey: kDMItemUsageTangoKey) as? Int
		self.aetherLens = aDecoder.decodeObject(forKey: kDMItemUsageAetherLensKey) as? Int
		self.enchantedMango = aDecoder.decodeObject(forKey: kDMItemUsageEnchantedMangoKey) as? Int
		self.riverPainter5 = aDecoder.decodeObject(forKey: kDMItemUsageRiverPainter5Key) as? Int
		self.skadi = aDecoder.decodeObject(forKey: kDMItemUsageSkadiKey) as? Int
		self.bfury = aDecoder.decodeObject(forKey: kDMItemUsageBfuryKey) as? Int
		self.tranquilBoots = aDecoder.decodeObject(forKey: kDMItemUsageTranquilBootsKey) as? Int
		self.mjollnir = aDecoder.decodeObject(forKey: kDMItemUsageMjollnirKey) as? Int
		self.pers = aDecoder.decodeObject(forKey: kDMItemUsagePersKey) as? Int
		self.claymore = aDecoder.decodeObject(forKey: kDMItemUsageClaymoreKey) as? Int
		self.lifesteal = aDecoder.decodeObject(forKey: kDMItemUsageLifestealKey) as? Int
		self.blightStone = aDecoder.decodeObject(forKey: kDMItemUsageBlightStoneKey) as? Int
		self.monkeyKingBar = aDecoder.decodeObject(forKey: kDMItemUsageMonkeyKingBarKey) as? Int
		self.ultimateOrb = aDecoder.decodeObject(forKey: kDMItemUsageUltimateOrbKey) as? Int
		self.flask = aDecoder.decodeObject(forKey: kDMItemUsageFlaskKey) as? Int
		self.desolator = aDecoder.decodeObject(forKey: kDMItemUsageDesolatorKey) as? Int
		self.stoutShield = aDecoder.decodeObject(forKey: kDMItemUsageStoutShieldKey) as? Int
		self.orchid = aDecoder.decodeObject(forKey: kDMItemUsageOrchidKey) as? Int
		self.ancientJanggo = aDecoder.decodeObject(forKey: kDMItemUsageAncientJanggoKey) as? Int
		self.magicStick = aDecoder.decodeObject(forKey: kDMItemUsageMagicStickKey) as? Int
		self.poorMansShield = aDecoder.decodeObject(forKey: kDMItemUsagePoorMansShieldKey) as? Int
		self.assault = aDecoder.decodeObject(forKey: kDMItemUsageAssaultKey) as? Int
		self.branches = aDecoder.decodeObject(forKey: kDMItemUsageBranchesKey) as? Int
		self.bladesOfAttack = aDecoder.decodeObject(forKey: kDMItemUsageBladesOfAttackKey) as? Int
		self.ringOfBasilius = aDecoder.decodeObject(forKey: kDMItemUsageRingOfBasiliusKey) as? Int
		self.maelstrom = aDecoder.decodeObject(forKey: kDMItemUsageMaelstromKey) as? Int
		self.beltOfStrength = aDecoder.decodeObject(forKey: kDMItemUsageBeltOfStrengthKey) as? Int
		self.ringOfRegen = aDecoder.decodeObject(forKey: kDMItemUsageRingOfRegenKey) as? Int
		self.crimsonGuard = aDecoder.decodeObject(forKey: kDMItemUsageCrimsonGuardKey) as? Int
		self.medallionOfCourage = aDecoder.decodeObject(forKey: kDMItemUsageMedallionOfCourageKey) as? Int
		self.demonEdge = aDecoder.decodeObject(forKey: kDMItemUsageDemonEdgeKey) as? Int
		self.urnOfShadows = aDecoder.decodeObject(forKey: kDMItemUsageUrnOfShadowsKey) as? Int
		self.ogreAxe = aDecoder.decodeObject(forKey: kDMItemUsageOgreAxeKey) as? Int
		self.circlet = aDecoder.decodeObject(forKey: kDMItemUsageCircletKey) as? Int
		self.buckler = aDecoder.decodeObject(forKey: kDMItemUsageBucklerKey) as? Int
		self.tomeOfKnowledge = aDecoder.decodeObject(forKey: kDMItemUsageTomeOfKnowledgeKey) as? Int
		self.dust = aDecoder.decodeObject(forKey: kDMItemUsageDustKey) as? Int
		self.ultimateScepter = aDecoder.decodeObject(forKey: kDMItemUsageUltimateScepterKey) as? Int
		self.vitalityBooster = aDecoder.decodeObject(forKey: kDMItemUsageVitalityBoosterKey) as? Int
		self.ringOfProtection = aDecoder.decodeObject(forKey: kDMItemUsageRingOfProtectionKey) as? Int
		self.platemail = aDecoder.decodeObject(forKey: kDMItemUsagePlatemailKey) as? Int
		self.sangeAndYasha = aDecoder.decodeObject(forKey: kDMItemUsageSangeAndYashaKey) as? Int
		self.hyperstone = aDecoder.decodeObject(forKey: kDMItemUsageHyperstoneKey) as? Int
		self.abyssalBlade = aDecoder.decodeObject(forKey: kDMItemUsageAbyssalBladeKey) as? Int
		self.basher = aDecoder.decodeObject(forKey: kDMItemUsageBasherKey) as? Int
		self.wardSentry = aDecoder.decodeObject(forKey: kDMItemUsageWardSentryKey) as? Int
		self.headdress = aDecoder.decodeObject(forKey: kDMItemUsageHeaddressKey) as? Int
		self.boots = aDecoder.decodeObject(forKey: kDMItemUsageBootsKey) as? Int
		self.sange = aDecoder.decodeObject(forKey: kDMItemUsageSangeKey) as? Int
		self.tpscroll = aDecoder.decodeObject(forKey: kDMItemUsageTpscrollKey) as? Int
		self.broadsword = aDecoder.decodeObject(forKey: kDMItemUsageBroadswordKey) as? Int
		self.quellingBlade = aDecoder.decodeObject(forKey: kDMItemUsageQuellingBladeKey) as? Int
		self.orbOfVenom = aDecoder.decodeObject(forKey: kDMItemUsageOrbOfVenomKey) as? Int
		self.gloves = aDecoder.decodeObject(forKey: kDMItemUsageGlovesKey) as? Int
		self.handOfMidas = aDecoder.decodeObject(forKey: kDMItemUsageHandOfMidasKey) as? Int
		self.armlet = aDecoder.decodeObject(forKey: kDMItemUsageArmletKey) as? Int
		self.moonShard = aDecoder.decodeObject(forKey: kDMItemUsageMoonShardKey) as? Int
		self.courier = aDecoder.decodeObject(forKey: kDMItemUsageCourierKey) as? Int
		self.shadowAmulet = aDecoder.decodeObject(forKey: kDMItemUsageShadowAmuletKey) as? Int
		self.powerTreads = aDecoder.decodeObject(forKey: kDMItemUsagePowerTreadsKey) as? Int
		self.pipe = aDecoder.decodeObject(forKey: kDMItemUsagePipeKey) as? Int
		self.bootsOfElves = aDecoder.decodeObject(forKey: kDMItemUsageBootsOfElvesKey) as? Int
		self.invisSword = aDecoder.decodeObject(forKey: kDMItemUsageInvisSwordKey) as? Int
		self.gauntlets = aDecoder.decodeObject(forKey: kDMItemUsageGauntletsKey) as? Int
		self.talismanOfEvasion = aDecoder.decodeObject(forKey: kDMItemUsageTalismanOfEvasionKey) as? Int
		self.helmOfIronWill = aDecoder.decodeObject(forKey: kDMItemUsageHelmOfIronWillKey) as? Int
		self.voidStone = aDecoder.decodeObject(forKey: kDMItemUsageVoidStoneKey) as? Int
		self.silverEdge = aDecoder.decodeObject(forKey: kDMItemUsageSilverEdgeKey) as? Int
		self.reaver = aDecoder.decodeObject(forKey: kDMItemUsageReaverKey) as? Int
		self.ringOfHealth = aDecoder.decodeObject(forKey: kDMItemUsageRingOfHealthKey) as? Int
		self.hoodOfDefiance = aDecoder.decodeObject(forKey: kDMItemUsageHoodOfDefianceKey) as? Int
		self.manta = aDecoder.decodeObject(forKey: kDMItemUsageMantaKey) as? Int
		self.pointBooster = aDecoder.decodeObject(forKey: kDMItemUsagePointBoosterKey) as? Int
		self.vanguard = aDecoder.decodeObject(forKey: kDMItemUsageVanguardKey) as? Int
		self.bladeOfAlacrity = aDecoder.decodeObject(forKey: kDMItemUsageBladeOfAlacrityKey) as? Int
		self.staffOfWizardry = aDecoder.decodeObject(forKey: kDMItemUsageStaffOfWizardryKey) as? Int
		self.infusedRaindrop = aDecoder.decodeObject(forKey: kDMItemUsageInfusedRaindropKey) as? Int
		self.wardObserver = aDecoder.decodeObject(forKey: kDMItemUsageWardObserverKey) as? Int
		self.travelBoots = aDecoder.decodeObject(forKey: kDMItemUsageTravelBootsKey) as? Int
		self.blackKingBar = aDecoder.decodeObject(forKey: kDMItemUsageBlackKingBarKey) as? Int
		self.phaseBoots = aDecoder.decodeObject(forKey: kDMItemUsagePhaseBootsKey) as? Int
		self.faerieFire = aDecoder.decodeObject(forKey: kDMItemUsageFaerieFireKey) as? Int
		self.vladmir = aDecoder.decodeObject(forKey: kDMItemUsageVladmirKey) as? Int
		self.sobiMask = aDecoder.decodeObject(forKey: kDMItemUsageSobiMaskKey) as? Int
		self.windLace = aDecoder.decodeObject(forKey: kDMItemUsageWindLaceKey) as? Int
		self.greaterCrit = aDecoder.decodeObject(forKey: kDMItemUsageGreaterCritKey) as? Int
		self.solarCrest = aDecoder.decodeObject(forKey: kDMItemUsageSolarCrestKey) as? Int
		self.flyingCourier = aDecoder.decodeObject(forKey: kDMItemUsageFlyingCourierKey) as? Int
		self.mithrilHammer = aDecoder.decodeObject(forKey: kDMItemUsageMithrilHammerKey) as? Int
		self.yasha = aDecoder.decodeObject(forKey: kDMItemUsageYashaKey) as? Int
		self.wraithBand = aDecoder.decodeObject(forKey: kDMItemUsageWraithBandKey) as? Int
		self.heart = aDecoder.decodeObject(forKey: kDMItemUsageHeartKey) as? Int
		self.clarity = aDecoder.decodeObject(forKey: kDMItemUsageClarityKey) as? Int
		self.bloodthorn = aDecoder.decodeObject(forKey: kDMItemUsageBloodthornKey) as? Int
		self.travelBoots2 = aDecoder.decodeObject(forKey: kDMItemUsageTravelBoots2Key) as? Int
		self.quarterstaff = aDecoder.decodeObject(forKey: kDMItemUsageQuarterstaffKey) as? Int
		self.oblivionStaff = aDecoder.decodeObject(forKey: kDMItemUsageOblivionStaffKey) as? Int
		self.magicWand = aDecoder.decodeObject(forKey: kDMItemUsageMagicWandKey) as? Int
		self.glimmerCape = aDecoder.decodeObject(forKey: kDMItemUsageGlimmerCapeKey) as? Int
		self.ringOfAquila = aDecoder.decodeObject(forKey: kDMItemUsageRingOfAquilaKey) as? Int
		self.slippers = aDecoder.decodeObject(forKey: kDMItemUsageSlippersKey) as? Int
		self.lesserCrit = aDecoder.decodeObject(forKey: kDMItemUsageLesserCritKey) as? Int
		self.javelin = aDecoder.decodeObject(forKey: kDMItemUsageJavelinKey) as? Int
		self.helmOfTheDominator = aDecoder.decodeObject(forKey: kDMItemUsageHelmOfTheDominatorKey) as? Int
		self.cloak = aDecoder.decodeObject(forKey: kDMItemUsageCloakKey) as? Int
		self.gem = aDecoder.decodeObject(forKey: kDMItemUsageGemKey) as? Int
		self.bracer = aDecoder.decodeObject(forKey: kDMItemUsageBracerKey) as? Int
		self.robe = aDecoder.decodeObject(forKey: kDMItemUsageRobeKey) as? Int
		self.bottle = aDecoder.decodeObject(forKey: kDMItemUsageBottleKey) as? Int
		self.chainmail = aDecoder.decodeObject(forKey: kDMItemUsageChainmailKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(energyBooster, forKey: kDMItemUsageEnergyBoosterKey)
		aCoder.encode(tango, forKey: kDMItemUsageTangoKey)
		aCoder.encode(aetherLens, forKey: kDMItemUsageAetherLensKey)
		aCoder.encode(enchantedMango, forKey: kDMItemUsageEnchantedMangoKey)
		aCoder.encode(riverPainter5, forKey: kDMItemUsageRiverPainter5Key)
		aCoder.encode(skadi, forKey: kDMItemUsageSkadiKey)
		aCoder.encode(bfury, forKey: kDMItemUsageBfuryKey)
		aCoder.encode(tranquilBoots, forKey: kDMItemUsageTranquilBootsKey)
		aCoder.encode(mjollnir, forKey: kDMItemUsageMjollnirKey)
		aCoder.encode(pers, forKey: kDMItemUsagePersKey)
		aCoder.encode(claymore, forKey: kDMItemUsageClaymoreKey)
		aCoder.encode(lifesteal, forKey: kDMItemUsageLifestealKey)
		aCoder.encode(blightStone, forKey: kDMItemUsageBlightStoneKey)
		aCoder.encode(monkeyKingBar, forKey: kDMItemUsageMonkeyKingBarKey)
		aCoder.encode(ultimateOrb, forKey: kDMItemUsageUltimateOrbKey)
		aCoder.encode(flask, forKey: kDMItemUsageFlaskKey)
		aCoder.encode(desolator, forKey: kDMItemUsageDesolatorKey)
		aCoder.encode(stoutShield, forKey: kDMItemUsageStoutShieldKey)
		aCoder.encode(orchid, forKey: kDMItemUsageOrchidKey)
		aCoder.encode(ancientJanggo, forKey: kDMItemUsageAncientJanggoKey)
		aCoder.encode(magicStick, forKey: kDMItemUsageMagicStickKey)
		aCoder.encode(poorMansShield, forKey: kDMItemUsagePoorMansShieldKey)
		aCoder.encode(assault, forKey: kDMItemUsageAssaultKey)
		aCoder.encode(branches, forKey: kDMItemUsageBranchesKey)
		aCoder.encode(bladesOfAttack, forKey: kDMItemUsageBladesOfAttackKey)
		aCoder.encode(ringOfBasilius, forKey: kDMItemUsageRingOfBasiliusKey)
		aCoder.encode(maelstrom, forKey: kDMItemUsageMaelstromKey)
		aCoder.encode(beltOfStrength, forKey: kDMItemUsageBeltOfStrengthKey)
		aCoder.encode(ringOfRegen, forKey: kDMItemUsageRingOfRegenKey)
		aCoder.encode(crimsonGuard, forKey: kDMItemUsageCrimsonGuardKey)
		aCoder.encode(medallionOfCourage, forKey: kDMItemUsageMedallionOfCourageKey)
		aCoder.encode(demonEdge, forKey: kDMItemUsageDemonEdgeKey)
		aCoder.encode(urnOfShadows, forKey: kDMItemUsageUrnOfShadowsKey)
		aCoder.encode(ogreAxe, forKey: kDMItemUsageOgreAxeKey)
		aCoder.encode(circlet, forKey: kDMItemUsageCircletKey)
		aCoder.encode(buckler, forKey: kDMItemUsageBucklerKey)
		aCoder.encode(tomeOfKnowledge, forKey: kDMItemUsageTomeOfKnowledgeKey)
		aCoder.encode(dust, forKey: kDMItemUsageDustKey)
		aCoder.encode(ultimateScepter, forKey: kDMItemUsageUltimateScepterKey)
		aCoder.encode(vitalityBooster, forKey: kDMItemUsageVitalityBoosterKey)
		aCoder.encode(ringOfProtection, forKey: kDMItemUsageRingOfProtectionKey)
		aCoder.encode(platemail, forKey: kDMItemUsagePlatemailKey)
		aCoder.encode(sangeAndYasha, forKey: kDMItemUsageSangeAndYashaKey)
		aCoder.encode(hyperstone, forKey: kDMItemUsageHyperstoneKey)
		aCoder.encode(abyssalBlade, forKey: kDMItemUsageAbyssalBladeKey)
		aCoder.encode(basher, forKey: kDMItemUsageBasherKey)
		aCoder.encode(wardSentry, forKey: kDMItemUsageWardSentryKey)
		aCoder.encode(headdress, forKey: kDMItemUsageHeaddressKey)
		aCoder.encode(boots, forKey: kDMItemUsageBootsKey)
		aCoder.encode(sange, forKey: kDMItemUsageSangeKey)
		aCoder.encode(tpscroll, forKey: kDMItemUsageTpscrollKey)
		aCoder.encode(broadsword, forKey: kDMItemUsageBroadswordKey)
		aCoder.encode(quellingBlade, forKey: kDMItemUsageQuellingBladeKey)
		aCoder.encode(orbOfVenom, forKey: kDMItemUsageOrbOfVenomKey)
		aCoder.encode(gloves, forKey: kDMItemUsageGlovesKey)
		aCoder.encode(handOfMidas, forKey: kDMItemUsageHandOfMidasKey)
		aCoder.encode(armlet, forKey: kDMItemUsageArmletKey)
		aCoder.encode(moonShard, forKey: kDMItemUsageMoonShardKey)
		aCoder.encode(courier, forKey: kDMItemUsageCourierKey)
		aCoder.encode(shadowAmulet, forKey: kDMItemUsageShadowAmuletKey)
		aCoder.encode(powerTreads, forKey: kDMItemUsagePowerTreadsKey)
		aCoder.encode(pipe, forKey: kDMItemUsagePipeKey)
		aCoder.encode(bootsOfElves, forKey: kDMItemUsageBootsOfElvesKey)
		aCoder.encode(invisSword, forKey: kDMItemUsageInvisSwordKey)
		aCoder.encode(gauntlets, forKey: kDMItemUsageGauntletsKey)
		aCoder.encode(talismanOfEvasion, forKey: kDMItemUsageTalismanOfEvasionKey)
		aCoder.encode(helmOfIronWill, forKey: kDMItemUsageHelmOfIronWillKey)
		aCoder.encode(voidStone, forKey: kDMItemUsageVoidStoneKey)
		aCoder.encode(silverEdge, forKey: kDMItemUsageSilverEdgeKey)
		aCoder.encode(reaver, forKey: kDMItemUsageReaverKey)
		aCoder.encode(ringOfHealth, forKey: kDMItemUsageRingOfHealthKey)
		aCoder.encode(hoodOfDefiance, forKey: kDMItemUsageHoodOfDefianceKey)
		aCoder.encode(manta, forKey: kDMItemUsageMantaKey)
		aCoder.encode(pointBooster, forKey: kDMItemUsagePointBoosterKey)
		aCoder.encode(vanguard, forKey: kDMItemUsageVanguardKey)
		aCoder.encode(bladeOfAlacrity, forKey: kDMItemUsageBladeOfAlacrityKey)
		aCoder.encode(staffOfWizardry, forKey: kDMItemUsageStaffOfWizardryKey)
		aCoder.encode(infusedRaindrop, forKey: kDMItemUsageInfusedRaindropKey)
		aCoder.encode(wardObserver, forKey: kDMItemUsageWardObserverKey)
		aCoder.encode(travelBoots, forKey: kDMItemUsageTravelBootsKey)
		aCoder.encode(blackKingBar, forKey: kDMItemUsageBlackKingBarKey)
		aCoder.encode(phaseBoots, forKey: kDMItemUsagePhaseBootsKey)
		aCoder.encode(faerieFire, forKey: kDMItemUsageFaerieFireKey)
		aCoder.encode(vladmir, forKey: kDMItemUsageVladmirKey)
		aCoder.encode(sobiMask, forKey: kDMItemUsageSobiMaskKey)
		aCoder.encode(windLace, forKey: kDMItemUsageWindLaceKey)
		aCoder.encode(greaterCrit, forKey: kDMItemUsageGreaterCritKey)
		aCoder.encode(solarCrest, forKey: kDMItemUsageSolarCrestKey)
		aCoder.encode(flyingCourier, forKey: kDMItemUsageFlyingCourierKey)
		aCoder.encode(mithrilHammer, forKey: kDMItemUsageMithrilHammerKey)
		aCoder.encode(yasha, forKey: kDMItemUsageYashaKey)
		aCoder.encode(wraithBand, forKey: kDMItemUsageWraithBandKey)
		aCoder.encode(heart, forKey: kDMItemUsageHeartKey)
		aCoder.encode(clarity, forKey: kDMItemUsageClarityKey)
		aCoder.encode(bloodthorn, forKey: kDMItemUsageBloodthornKey)
		aCoder.encode(travelBoots2, forKey: kDMItemUsageTravelBoots2Key)
		aCoder.encode(quarterstaff, forKey: kDMItemUsageQuarterstaffKey)
		aCoder.encode(oblivionStaff, forKey: kDMItemUsageOblivionStaffKey)
		aCoder.encode(magicWand, forKey: kDMItemUsageMagicWandKey)
		aCoder.encode(glimmerCape, forKey: kDMItemUsageGlimmerCapeKey)
		aCoder.encode(ringOfAquila, forKey: kDMItemUsageRingOfAquilaKey)
		aCoder.encode(slippers, forKey: kDMItemUsageSlippersKey)
		aCoder.encode(lesserCrit, forKey: kDMItemUsageLesserCritKey)
		aCoder.encode(javelin, forKey: kDMItemUsageJavelinKey)
		aCoder.encode(helmOfTheDominator, forKey: kDMItemUsageHelmOfTheDominatorKey)
		aCoder.encode(cloak, forKey: kDMItemUsageCloakKey)
		aCoder.encode(gem, forKey: kDMItemUsageGemKey)
		aCoder.encode(bracer, forKey: kDMItemUsageBracerKey)
		aCoder.encode(robe, forKey: kDMItemUsageRobeKey)
		aCoder.encode(bottle, forKey: kDMItemUsageBottleKey)
		aCoder.encode(chainmail, forKey: kDMItemUsageChainmailKey)

    }

}
