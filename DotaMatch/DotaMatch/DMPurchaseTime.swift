//
//  DMPurchaseTime.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMPurchaseTime: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMPurchaseTimeEnergyBoosterKey: String = "energy_booster"
	internal let kDMPurchaseTimeTangoKey: String = "tango"
	internal let kDMPurchaseTimeAetherLensKey: String = "aether_lens"
	internal let kDMPurchaseTimeEnchantedMangoKey: String = "enchanted_mango"
	internal let kDMPurchaseTimeRiverPainter5Key: String = "river_painter5"
	internal let kDMPurchaseTimeSkadiKey: String = "skadi"
	internal let kDMPurchaseTimeBfuryKey: String = "bfury"
	internal let kDMPurchaseTimeTranquilBootsKey: String = "tranquil_boots"
	internal let kDMPurchaseTimeMjollnirKey: String = "mjollnir"
	internal let kDMPurchaseTimePersKey: String = "pers"
	internal let kDMPurchaseTimeClaymoreKey: String = "claymore"
	internal let kDMPurchaseTimeLifestealKey: String = "lifesteal"
	internal let kDMPurchaseTimeBlightStoneKey: String = "blight_stone"
	internal let kDMPurchaseTimeMonkeyKingBarKey: String = "monkey_king_bar"
	internal let kDMPurchaseTimeUltimateOrbKey: String = "ultimate_orb"
	internal let kDMPurchaseTimeFlaskKey: String = "flask"
	internal let kDMPurchaseTimeDesolatorKey: String = "desolator"
	internal let kDMPurchaseTimeStoutShieldKey: String = "stout_shield"
	internal let kDMPurchaseTimeOrchidKey: String = "orchid"
	internal let kDMPurchaseTimeAncientJanggoKey: String = "ancient_janggo"
	internal let kDMPurchaseTimeMagicStickKey: String = "magic_stick"
	internal let kDMPurchaseTimePoorMansShieldKey: String = "poor_mans_shield"
	internal let kDMPurchaseTimeAssaultKey: String = "assault"
	internal let kDMPurchaseTimeBranchesKey: String = "branches"
	internal let kDMPurchaseTimeBladesOfAttackKey: String = "blades_of_attack"
	internal let kDMPurchaseTimeRingOfBasiliusKey: String = "ring_of_basilius"
	internal let kDMPurchaseTimeMaelstromKey: String = "maelstrom"
	internal let kDMPurchaseTimeBeltOfStrengthKey: String = "belt_of_strength"
	internal let kDMPurchaseTimeRingOfRegenKey: String = "ring_of_regen"
	internal let kDMPurchaseTimeCrimsonGuardKey: String = "crimson_guard"
	internal let kDMPurchaseTimeMedallionOfCourageKey: String = "medallion_of_courage"
	internal let kDMPurchaseTimeDemonEdgeKey: String = "demon_edge"
	internal let kDMPurchaseTimeUrnOfShadowsKey: String = "urn_of_shadows"
	internal let kDMPurchaseTimeOgreAxeKey: String = "ogre_axe"
	internal let kDMPurchaseTimeCircletKey: String = "circlet"
	internal let kDMPurchaseTimeBucklerKey: String = "buckler"
	internal let kDMPurchaseTimeTomeOfKnowledgeKey: String = "tome_of_knowledge"
	internal let kDMPurchaseTimeDustKey: String = "dust"
	internal let kDMPurchaseTimeUltimateScepterKey: String = "ultimate_scepter"
	internal let kDMPurchaseTimeVitalityBoosterKey: String = "vitality_booster"
	internal let kDMPurchaseTimeRingOfProtectionKey: String = "ring_of_protection"
	internal let kDMPurchaseTimePlatemailKey: String = "platemail"
	internal let kDMPurchaseTimeSangeAndYashaKey: String = "sange_and_yasha"
	internal let kDMPurchaseTimeHyperstoneKey: String = "hyperstone"
	internal let kDMPurchaseTimeAbyssalBladeKey: String = "abyssal_blade"
	internal let kDMPurchaseTimeBasherKey: String = "basher"
	internal let kDMPurchaseTimeWardSentryKey: String = "ward_sentry"
	internal let kDMPurchaseTimeHeaddressKey: String = "headdress"
	internal let kDMPurchaseTimeBootsKey: String = "boots"
	internal let kDMPurchaseTimeSangeKey: String = "sange"
	internal let kDMPurchaseTimeTpscrollKey: String = "tpscroll"
	internal let kDMPurchaseTimeBroadswordKey: String = "broadsword"
	internal let kDMPurchaseTimeQuellingBladeKey: String = "quelling_blade"
	internal let kDMPurchaseTimeOrbOfVenomKey: String = "orb_of_venom"
	internal let kDMPurchaseTimeGlovesKey: String = "gloves"
	internal let kDMPurchaseTimeHandOfMidasKey: String = "hand_of_midas"
	internal let kDMPurchaseTimeArmletKey: String = "armlet"
	internal let kDMPurchaseTimeMoonShardKey: String = "moon_shard"
	internal let kDMPurchaseTimeCourierKey: String = "courier"
	internal let kDMPurchaseTimeShadowAmuletKey: String = "shadow_amulet"
	internal let kDMPurchaseTimePowerTreadsKey: String = "power_treads"
	internal let kDMPurchaseTimePipeKey: String = "pipe"
	internal let kDMPurchaseTimeBootsOfElvesKey: String = "boots_of_elves"
	internal let kDMPurchaseTimeInvisSwordKey: String = "invis_sword"
	internal let kDMPurchaseTimeGauntletsKey: String = "gauntlets"
	internal let kDMPurchaseTimeTalismanOfEvasionKey: String = "talisman_of_evasion"
	internal let kDMPurchaseTimeHelmOfIronWillKey: String = "helm_of_iron_will"
	internal let kDMPurchaseTimeVoidStoneKey: String = "void_stone"
	internal let kDMPurchaseTimeSilverEdgeKey: String = "silver_edge"
	internal let kDMPurchaseTimeReaverKey: String = "reaver"
	internal let kDMPurchaseTimeRingOfHealthKey: String = "ring_of_health"
	internal let kDMPurchaseTimeHoodOfDefianceKey: String = "hood_of_defiance"
	internal let kDMPurchaseTimeMantaKey: String = "manta"
	internal let kDMPurchaseTimePointBoosterKey: String = "point_booster"
	internal let kDMPurchaseTimeVanguardKey: String = "vanguard"
	internal let kDMPurchaseTimeBladeOfAlacrityKey: String = "blade_of_alacrity"
	internal let kDMPurchaseTimeStaffOfWizardryKey: String = "staff_of_wizardry"
	internal let kDMPurchaseTimeInfusedRaindropKey: String = "infused_raindrop"
	internal let kDMPurchaseTimeWardObserverKey: String = "ward_observer"
	internal let kDMPurchaseTimeTravelBootsKey: String = "travel_boots"
	internal let kDMPurchaseTimeBlackKingBarKey: String = "black_king_bar"
	internal let kDMPurchaseTimePhaseBootsKey: String = "phase_boots"
	internal let kDMPurchaseTimeFaerieFireKey: String = "faerie_fire"
	internal let kDMPurchaseTimeVladmirKey: String = "vladmir"
	internal let kDMPurchaseTimeSobiMaskKey: String = "sobi_mask"
	internal let kDMPurchaseTimeWindLaceKey: String = "wind_lace"
	internal let kDMPurchaseTimeGreaterCritKey: String = "greater_crit"
	internal let kDMPurchaseTimeSolarCrestKey: String = "solar_crest"
	internal let kDMPurchaseTimeFlyingCourierKey: String = "flying_courier"
	internal let kDMPurchaseTimeMithrilHammerKey: String = "mithril_hammer"
	internal let kDMPurchaseTimeYashaKey: String = "yasha"
	internal let kDMPurchaseTimeWraithBandKey: String = "wraith_band"
	internal let kDMPurchaseTimeHeartKey: String = "heart"
	internal let kDMPurchaseTimeClarityKey: String = "clarity"
	internal let kDMPurchaseTimeBloodthornKey: String = "bloodthorn"
	internal let kDMPurchaseTimeTravelBoots2Key: String = "travel_boots_2"
	internal let kDMPurchaseTimeQuarterstaffKey: String = "quarterstaff"
	internal let kDMPurchaseTimeOblivionStaffKey: String = "oblivion_staff"
	internal let kDMPurchaseTimeMagicWandKey: String = "magic_wand"
	internal let kDMPurchaseTimeGlimmerCapeKey: String = "glimmer_cape"
	internal let kDMPurchaseTimeRingOfAquilaKey: String = "ring_of_aquila"
	internal let kDMPurchaseTimeSlippersKey: String = "slippers"
	internal let kDMPurchaseTimeLesserCritKey: String = "lesser_crit"
	internal let kDMPurchaseTimeJavelinKey: String = "javelin"
	internal let kDMPurchaseTimeHelmOfTheDominatorKey: String = "helm_of_the_dominator"
	internal let kDMPurchaseTimeCloakKey: String = "cloak"
	internal let kDMPurchaseTimeGemKey: String = "gem"
	internal let kDMPurchaseTimeBracerKey: String = "bracer"
	internal let kDMPurchaseTimeRobeKey: String = "robe"
	internal let kDMPurchaseTimeBottleKey: String = "bottle"
	internal let kDMPurchaseTimeChainmailKey: String = "chainmail"


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
		energyBooster = json[kDMPurchaseTimeEnergyBoosterKey].int
		tango = json[kDMPurchaseTimeTangoKey].int
		aetherLens = json[kDMPurchaseTimeAetherLensKey].int
		enchantedMango = json[kDMPurchaseTimeEnchantedMangoKey].int
		riverPainter5 = json[kDMPurchaseTimeRiverPainter5Key].int
		skadi = json[kDMPurchaseTimeSkadiKey].int
		bfury = json[kDMPurchaseTimeBfuryKey].int
		tranquilBoots = json[kDMPurchaseTimeTranquilBootsKey].int
		mjollnir = json[kDMPurchaseTimeMjollnirKey].int
		pers = json[kDMPurchaseTimePersKey].int
		claymore = json[kDMPurchaseTimeClaymoreKey].int
		lifesteal = json[kDMPurchaseTimeLifestealKey].int
		blightStone = json[kDMPurchaseTimeBlightStoneKey].int
		monkeyKingBar = json[kDMPurchaseTimeMonkeyKingBarKey].int
		ultimateOrb = json[kDMPurchaseTimeUltimateOrbKey].int
		flask = json[kDMPurchaseTimeFlaskKey].int
		desolator = json[kDMPurchaseTimeDesolatorKey].int
		stoutShield = json[kDMPurchaseTimeStoutShieldKey].int
		orchid = json[kDMPurchaseTimeOrchidKey].int
		ancientJanggo = json[kDMPurchaseTimeAncientJanggoKey].int
		magicStick = json[kDMPurchaseTimeMagicStickKey].int
		poorMansShield = json[kDMPurchaseTimePoorMansShieldKey].int
		assault = json[kDMPurchaseTimeAssaultKey].int
		branches = json[kDMPurchaseTimeBranchesKey].int
		bladesOfAttack = json[kDMPurchaseTimeBladesOfAttackKey].int
		ringOfBasilius = json[kDMPurchaseTimeRingOfBasiliusKey].int
		maelstrom = json[kDMPurchaseTimeMaelstromKey].int
		beltOfStrength = json[kDMPurchaseTimeBeltOfStrengthKey].int
		ringOfRegen = json[kDMPurchaseTimeRingOfRegenKey].int
		crimsonGuard = json[kDMPurchaseTimeCrimsonGuardKey].int
		medallionOfCourage = json[kDMPurchaseTimeMedallionOfCourageKey].int
		demonEdge = json[kDMPurchaseTimeDemonEdgeKey].int
		urnOfShadows = json[kDMPurchaseTimeUrnOfShadowsKey].int
		ogreAxe = json[kDMPurchaseTimeOgreAxeKey].int
		circlet = json[kDMPurchaseTimeCircletKey].int
		buckler = json[kDMPurchaseTimeBucklerKey].int
		tomeOfKnowledge = json[kDMPurchaseTimeTomeOfKnowledgeKey].int
		dust = json[kDMPurchaseTimeDustKey].int
		ultimateScepter = json[kDMPurchaseTimeUltimateScepterKey].int
		vitalityBooster = json[kDMPurchaseTimeVitalityBoosterKey].int
		ringOfProtection = json[kDMPurchaseTimeRingOfProtectionKey].int
		platemail = json[kDMPurchaseTimePlatemailKey].int
		sangeAndYasha = json[kDMPurchaseTimeSangeAndYashaKey].int
		hyperstone = json[kDMPurchaseTimeHyperstoneKey].int
		abyssalBlade = json[kDMPurchaseTimeAbyssalBladeKey].int
		basher = json[kDMPurchaseTimeBasherKey].int
		wardSentry = json[kDMPurchaseTimeWardSentryKey].int
		headdress = json[kDMPurchaseTimeHeaddressKey].int
		boots = json[kDMPurchaseTimeBootsKey].int
		sange = json[kDMPurchaseTimeSangeKey].int
		tpscroll = json[kDMPurchaseTimeTpscrollKey].int
		broadsword = json[kDMPurchaseTimeBroadswordKey].int
		quellingBlade = json[kDMPurchaseTimeQuellingBladeKey].int
		orbOfVenom = json[kDMPurchaseTimeOrbOfVenomKey].int
		gloves = json[kDMPurchaseTimeGlovesKey].int
		handOfMidas = json[kDMPurchaseTimeHandOfMidasKey].int
		armlet = json[kDMPurchaseTimeArmletKey].int
		moonShard = json[kDMPurchaseTimeMoonShardKey].int
		courier = json[kDMPurchaseTimeCourierKey].int
		shadowAmulet = json[kDMPurchaseTimeShadowAmuletKey].int
		powerTreads = json[kDMPurchaseTimePowerTreadsKey].int
		pipe = json[kDMPurchaseTimePipeKey].int
		bootsOfElves = json[kDMPurchaseTimeBootsOfElvesKey].int
		invisSword = json[kDMPurchaseTimeInvisSwordKey].int
		gauntlets = json[kDMPurchaseTimeGauntletsKey].int
		talismanOfEvasion = json[kDMPurchaseTimeTalismanOfEvasionKey].int
		helmOfIronWill = json[kDMPurchaseTimeHelmOfIronWillKey].int
		voidStone = json[kDMPurchaseTimeVoidStoneKey].int
		silverEdge = json[kDMPurchaseTimeSilverEdgeKey].int
		reaver = json[kDMPurchaseTimeReaverKey].int
		ringOfHealth = json[kDMPurchaseTimeRingOfHealthKey].int
		hoodOfDefiance = json[kDMPurchaseTimeHoodOfDefianceKey].int
		manta = json[kDMPurchaseTimeMantaKey].int
		pointBooster = json[kDMPurchaseTimePointBoosterKey].int
		vanguard = json[kDMPurchaseTimeVanguardKey].int
		bladeOfAlacrity = json[kDMPurchaseTimeBladeOfAlacrityKey].int
		staffOfWizardry = json[kDMPurchaseTimeStaffOfWizardryKey].int
		infusedRaindrop = json[kDMPurchaseTimeInfusedRaindropKey].int
		wardObserver = json[kDMPurchaseTimeWardObserverKey].int
		travelBoots = json[kDMPurchaseTimeTravelBootsKey].int
		blackKingBar = json[kDMPurchaseTimeBlackKingBarKey].int
		phaseBoots = json[kDMPurchaseTimePhaseBootsKey].int
		faerieFire = json[kDMPurchaseTimeFaerieFireKey].int
		vladmir = json[kDMPurchaseTimeVladmirKey].int
		sobiMask = json[kDMPurchaseTimeSobiMaskKey].int
		windLace = json[kDMPurchaseTimeWindLaceKey].int
		greaterCrit = json[kDMPurchaseTimeGreaterCritKey].int
		solarCrest = json[kDMPurchaseTimeSolarCrestKey].int
		flyingCourier = json[kDMPurchaseTimeFlyingCourierKey].int
		mithrilHammer = json[kDMPurchaseTimeMithrilHammerKey].int
		yasha = json[kDMPurchaseTimeYashaKey].int
		wraithBand = json[kDMPurchaseTimeWraithBandKey].int
		heart = json[kDMPurchaseTimeHeartKey].int
		clarity = json[kDMPurchaseTimeClarityKey].int
		bloodthorn = json[kDMPurchaseTimeBloodthornKey].int
		travelBoots2 = json[kDMPurchaseTimeTravelBoots2Key].int
		quarterstaff = json[kDMPurchaseTimeQuarterstaffKey].int
		oblivionStaff = json[kDMPurchaseTimeOblivionStaffKey].int
		magicWand = json[kDMPurchaseTimeMagicWandKey].int
		glimmerCape = json[kDMPurchaseTimeGlimmerCapeKey].int
		ringOfAquila = json[kDMPurchaseTimeRingOfAquilaKey].int
		slippers = json[kDMPurchaseTimeSlippersKey].int
		lesserCrit = json[kDMPurchaseTimeLesserCritKey].int
		javelin = json[kDMPurchaseTimeJavelinKey].int
		helmOfTheDominator = json[kDMPurchaseTimeHelmOfTheDominatorKey].int
		cloak = json[kDMPurchaseTimeCloakKey].int
		gem = json[kDMPurchaseTimeGemKey].int
		bracer = json[kDMPurchaseTimeBracerKey].int
		robe = json[kDMPurchaseTimeRobeKey].int
		bottle = json[kDMPurchaseTimeBottleKey].int
		chainmail = json[kDMPurchaseTimeChainmailKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if energyBooster != nil {
			dictionary.updateValue(energyBooster! as AnyObject, forKey: kDMPurchaseTimeEnergyBoosterKey)
		}
		if tango != nil {
			dictionary.updateValue(tango! as AnyObject, forKey: kDMPurchaseTimeTangoKey)
		}
		if aetherLens != nil {
			dictionary.updateValue(aetherLens! as AnyObject, forKey: kDMPurchaseTimeAetherLensKey)
		}
		if enchantedMango != nil {
			dictionary.updateValue(enchantedMango! as AnyObject, forKey: kDMPurchaseTimeEnchantedMangoKey)
		}
		if riverPainter5 != nil {
			dictionary.updateValue(riverPainter5! as AnyObject, forKey: kDMPurchaseTimeRiverPainter5Key)
		}
		if skadi != nil {
			dictionary.updateValue(skadi! as AnyObject, forKey: kDMPurchaseTimeSkadiKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury! as AnyObject, forKey: kDMPurchaseTimeBfuryKey)
		}
		if tranquilBoots != nil {
			dictionary.updateValue(tranquilBoots! as AnyObject, forKey: kDMPurchaseTimeTranquilBootsKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir! as AnyObject, forKey: kDMPurchaseTimeMjollnirKey)
		}
		if pers != nil {
			dictionary.updateValue(pers! as AnyObject, forKey: kDMPurchaseTimePersKey)
		}
		if claymore != nil {
			dictionary.updateValue(claymore! as AnyObject, forKey: kDMPurchaseTimeClaymoreKey)
		}
		if lifesteal != nil {
			dictionary.updateValue(lifesteal! as AnyObject, forKey: kDMPurchaseTimeLifestealKey)
		}
		if blightStone != nil {
			dictionary.updateValue(blightStone! as AnyObject, forKey: kDMPurchaseTimeBlightStoneKey)
		}
		if monkeyKingBar != nil {
			dictionary.updateValue(monkeyKingBar! as AnyObject, forKey: kDMPurchaseTimeMonkeyKingBarKey)
		}
		if ultimateOrb != nil {
			dictionary.updateValue(ultimateOrb! as AnyObject, forKey: kDMPurchaseTimeUltimateOrbKey)
		}
		if flask != nil {
			dictionary.updateValue(flask! as AnyObject, forKey: kDMPurchaseTimeFlaskKey)
		}
		if desolator != nil {
			dictionary.updateValue(desolator! as AnyObject, forKey: kDMPurchaseTimeDesolatorKey)
		}
		if stoutShield != nil {
			dictionary.updateValue(stoutShield! as AnyObject, forKey: kDMPurchaseTimeStoutShieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid! as AnyObject, forKey: kDMPurchaseTimeOrchidKey)
		}
		if ancientJanggo != nil {
			dictionary.updateValue(ancientJanggo! as AnyObject, forKey: kDMPurchaseTimeAncientJanggoKey)
		}
		if magicStick != nil {
			dictionary.updateValue(magicStick! as AnyObject, forKey: kDMPurchaseTimeMagicStickKey)
		}
		if poorMansShield != nil {
			dictionary.updateValue(poorMansShield! as AnyObject, forKey: kDMPurchaseTimePoorMansShieldKey)
		}
		if assault != nil {
			dictionary.updateValue(assault! as AnyObject, forKey: kDMPurchaseTimeAssaultKey)
		}
		if branches != nil {
			dictionary.updateValue(branches! as AnyObject, forKey: kDMPurchaseTimeBranchesKey)
		}
		if bladesOfAttack != nil {
			dictionary.updateValue(bladesOfAttack! as AnyObject, forKey: kDMPurchaseTimeBladesOfAttackKey)
		}
		if ringOfBasilius != nil {
			dictionary.updateValue(ringOfBasilius! as AnyObject, forKey: kDMPurchaseTimeRingOfBasiliusKey)
		}
		if maelstrom != nil {
			dictionary.updateValue(maelstrom! as AnyObject, forKey: kDMPurchaseTimeMaelstromKey)
		}
		if beltOfStrength != nil {
			dictionary.updateValue(beltOfStrength! as AnyObject, forKey: kDMPurchaseTimeBeltOfStrengthKey)
		}
		if ringOfRegen != nil {
			dictionary.updateValue(ringOfRegen! as AnyObject, forKey: kDMPurchaseTimeRingOfRegenKey)
		}
		if crimsonGuard != nil {
			dictionary.updateValue(crimsonGuard! as AnyObject, forKey: kDMPurchaseTimeCrimsonGuardKey)
		}
		if medallionOfCourage != nil {
			dictionary.updateValue(medallionOfCourage! as AnyObject, forKey: kDMPurchaseTimeMedallionOfCourageKey)
		}
		if demonEdge != nil {
			dictionary.updateValue(demonEdge! as AnyObject, forKey: kDMPurchaseTimeDemonEdgeKey)
		}
		if urnOfShadows != nil {
			dictionary.updateValue(urnOfShadows! as AnyObject, forKey: kDMPurchaseTimeUrnOfShadowsKey)
		}
		if ogreAxe != nil {
			dictionary.updateValue(ogreAxe! as AnyObject, forKey: kDMPurchaseTimeOgreAxeKey)
		}
		if circlet != nil {
			dictionary.updateValue(circlet! as AnyObject, forKey: kDMPurchaseTimeCircletKey)
		}
		if buckler != nil {
			dictionary.updateValue(buckler! as AnyObject, forKey: kDMPurchaseTimeBucklerKey)
		}
		if tomeOfKnowledge != nil {
			dictionary.updateValue(tomeOfKnowledge! as AnyObject, forKey: kDMPurchaseTimeTomeOfKnowledgeKey)
		}
		if dust != nil {
			dictionary.updateValue(dust! as AnyObject, forKey: kDMPurchaseTimeDustKey)
		}
		if ultimateScepter != nil {
			dictionary.updateValue(ultimateScepter! as AnyObject, forKey: kDMPurchaseTimeUltimateScepterKey)
		}
		if vitalityBooster != nil {
			dictionary.updateValue(vitalityBooster! as AnyObject, forKey: kDMPurchaseTimeVitalityBoosterKey)
		}
		if ringOfProtection != nil {
			dictionary.updateValue(ringOfProtection! as AnyObject, forKey: kDMPurchaseTimeRingOfProtectionKey)
		}
		if platemail != nil {
			dictionary.updateValue(platemail! as AnyObject, forKey: kDMPurchaseTimePlatemailKey)
		}
		if sangeAndYasha != nil {
			dictionary.updateValue(sangeAndYasha! as AnyObject, forKey: kDMPurchaseTimeSangeAndYashaKey)
		}
		if hyperstone != nil {
			dictionary.updateValue(hyperstone! as AnyObject, forKey: kDMPurchaseTimeHyperstoneKey)
		}
		if abyssalBlade != nil {
			dictionary.updateValue(abyssalBlade! as AnyObject, forKey: kDMPurchaseTimeAbyssalBladeKey)
		}
		if basher != nil {
			dictionary.updateValue(basher! as AnyObject, forKey: kDMPurchaseTimeBasherKey)
		}
		if wardSentry != nil {
			dictionary.updateValue(wardSentry! as AnyObject, forKey: kDMPurchaseTimeWardSentryKey)
		}
		if headdress != nil {
			dictionary.updateValue(headdress! as AnyObject, forKey: kDMPurchaseTimeHeaddressKey)
		}
		if boots != nil {
			dictionary.updateValue(boots! as AnyObject, forKey: kDMPurchaseTimeBootsKey)
		}
		if sange != nil {
			dictionary.updateValue(sange! as AnyObject, forKey: kDMPurchaseTimeSangeKey)
		}
		if tpscroll != nil {
			dictionary.updateValue(tpscroll! as AnyObject, forKey: kDMPurchaseTimeTpscrollKey)
		}
		if broadsword != nil {
			dictionary.updateValue(broadsword! as AnyObject, forKey: kDMPurchaseTimeBroadswordKey)
		}
		if quellingBlade != nil {
			dictionary.updateValue(quellingBlade! as AnyObject, forKey: kDMPurchaseTimeQuellingBladeKey)
		}
		if orbOfVenom != nil {
			dictionary.updateValue(orbOfVenom! as AnyObject, forKey: kDMPurchaseTimeOrbOfVenomKey)
		}
		if gloves != nil {
			dictionary.updateValue(gloves! as AnyObject, forKey: kDMPurchaseTimeGlovesKey)
		}
		if handOfMidas != nil {
			dictionary.updateValue(handOfMidas! as AnyObject, forKey: kDMPurchaseTimeHandOfMidasKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet! as AnyObject, forKey: kDMPurchaseTimeArmletKey)
		}
		if moonShard != nil {
			dictionary.updateValue(moonShard! as AnyObject, forKey: kDMPurchaseTimeMoonShardKey)
		}
		if courier != nil {
			dictionary.updateValue(courier! as AnyObject, forKey: kDMPurchaseTimeCourierKey)
		}
		if shadowAmulet != nil {
			dictionary.updateValue(shadowAmulet! as AnyObject, forKey: kDMPurchaseTimeShadowAmuletKey)
		}
		if powerTreads != nil {
			dictionary.updateValue(powerTreads! as AnyObject, forKey: kDMPurchaseTimePowerTreadsKey)
		}
		if pipe != nil {
			dictionary.updateValue(pipe! as AnyObject, forKey: kDMPurchaseTimePipeKey)
		}
		if bootsOfElves != nil {
			dictionary.updateValue(bootsOfElves! as AnyObject, forKey: kDMPurchaseTimeBootsOfElvesKey)
		}
		if invisSword != nil {
			dictionary.updateValue(invisSword! as AnyObject, forKey: kDMPurchaseTimeInvisSwordKey)
		}
		if gauntlets != nil {
			dictionary.updateValue(gauntlets! as AnyObject, forKey: kDMPurchaseTimeGauntletsKey)
		}
		if talismanOfEvasion != nil {
			dictionary.updateValue(talismanOfEvasion! as AnyObject, forKey: kDMPurchaseTimeTalismanOfEvasionKey)
		}
		if helmOfIronWill != nil {
			dictionary.updateValue(helmOfIronWill! as AnyObject, forKey: kDMPurchaseTimeHelmOfIronWillKey)
		}
		if voidStone != nil {
			dictionary.updateValue(voidStone! as AnyObject, forKey: kDMPurchaseTimeVoidStoneKey)
		}
		if silverEdge != nil {
			dictionary.updateValue(silverEdge! as AnyObject, forKey: kDMPurchaseTimeSilverEdgeKey)
		}
		if reaver != nil {
			dictionary.updateValue(reaver! as AnyObject, forKey: kDMPurchaseTimeReaverKey)
		}
		if ringOfHealth != nil {
			dictionary.updateValue(ringOfHealth! as AnyObject, forKey: kDMPurchaseTimeRingOfHealthKey)
		}
		if hoodOfDefiance != nil {
			dictionary.updateValue(hoodOfDefiance! as AnyObject, forKey: kDMPurchaseTimeHoodOfDefianceKey)
		}
		if manta != nil {
			dictionary.updateValue(manta! as AnyObject, forKey: kDMPurchaseTimeMantaKey)
		}
		if pointBooster != nil {
			dictionary.updateValue(pointBooster! as AnyObject, forKey: kDMPurchaseTimePointBoosterKey)
		}
		if vanguard != nil {
			dictionary.updateValue(vanguard! as AnyObject, forKey: kDMPurchaseTimeVanguardKey)
		}
		if bladeOfAlacrity != nil {
			dictionary.updateValue(bladeOfAlacrity! as AnyObject, forKey: kDMPurchaseTimeBladeOfAlacrityKey)
		}
		if staffOfWizardry != nil {
			dictionary.updateValue(staffOfWizardry! as AnyObject, forKey: kDMPurchaseTimeStaffOfWizardryKey)
		}
		if infusedRaindrop != nil {
			dictionary.updateValue(infusedRaindrop! as AnyObject, forKey: kDMPurchaseTimeInfusedRaindropKey)
		}
		if wardObserver != nil {
			dictionary.updateValue(wardObserver! as AnyObject, forKey: kDMPurchaseTimeWardObserverKey)
		}
		if travelBoots != nil {
			dictionary.updateValue(travelBoots! as AnyObject, forKey: kDMPurchaseTimeTravelBootsKey)
		}
		if blackKingBar != nil {
			dictionary.updateValue(blackKingBar! as AnyObject, forKey: kDMPurchaseTimeBlackKingBarKey)
		}
		if phaseBoots != nil {
			dictionary.updateValue(phaseBoots! as AnyObject, forKey: kDMPurchaseTimePhaseBootsKey)
		}
		if faerieFire != nil {
			dictionary.updateValue(faerieFire! as AnyObject, forKey: kDMPurchaseTimeFaerieFireKey)
		}
		if vladmir != nil {
			dictionary.updateValue(vladmir! as AnyObject, forKey: kDMPurchaseTimeVladmirKey)
		}
		if sobiMask != nil {
			dictionary.updateValue(sobiMask! as AnyObject, forKey: kDMPurchaseTimeSobiMaskKey)
		}
		if windLace != nil {
			dictionary.updateValue(windLace! as AnyObject, forKey: kDMPurchaseTimeWindLaceKey)
		}
		if greaterCrit != nil {
			dictionary.updateValue(greaterCrit! as AnyObject, forKey: kDMPurchaseTimeGreaterCritKey)
		}
		if solarCrest != nil {
			dictionary.updateValue(solarCrest! as AnyObject, forKey: kDMPurchaseTimeSolarCrestKey)
		}
		if flyingCourier != nil {
			dictionary.updateValue(flyingCourier! as AnyObject, forKey: kDMPurchaseTimeFlyingCourierKey)
		}
		if mithrilHammer != nil {
			dictionary.updateValue(mithrilHammer! as AnyObject, forKey: kDMPurchaseTimeMithrilHammerKey)
		}
		if yasha != nil {
			dictionary.updateValue(yasha! as AnyObject, forKey: kDMPurchaseTimeYashaKey)
		}
		if wraithBand != nil {
			dictionary.updateValue(wraithBand! as AnyObject, forKey: kDMPurchaseTimeWraithBandKey)
		}
		if heart != nil {
			dictionary.updateValue(heart! as AnyObject, forKey: kDMPurchaseTimeHeartKey)
		}
		if clarity != nil {
			dictionary.updateValue(clarity! as AnyObject, forKey: kDMPurchaseTimeClarityKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn! as AnyObject, forKey: kDMPurchaseTimeBloodthornKey)
		}
		if travelBoots2 != nil {
			dictionary.updateValue(travelBoots2! as AnyObject, forKey: kDMPurchaseTimeTravelBoots2Key)
		}
		if quarterstaff != nil {
			dictionary.updateValue(quarterstaff! as AnyObject, forKey: kDMPurchaseTimeQuarterstaffKey)
		}
		if oblivionStaff != nil {
			dictionary.updateValue(oblivionStaff! as AnyObject, forKey: kDMPurchaseTimeOblivionStaffKey)
		}
		if magicWand != nil {
			dictionary.updateValue(magicWand! as AnyObject, forKey: kDMPurchaseTimeMagicWandKey)
		}
		if glimmerCape != nil {
			dictionary.updateValue(glimmerCape! as AnyObject, forKey: kDMPurchaseTimeGlimmerCapeKey)
		}
		if ringOfAquila != nil {
			dictionary.updateValue(ringOfAquila! as AnyObject, forKey: kDMPurchaseTimeRingOfAquilaKey)
		}
		if slippers != nil {
			dictionary.updateValue(slippers! as AnyObject, forKey: kDMPurchaseTimeSlippersKey)
		}
		if lesserCrit != nil {
			dictionary.updateValue(lesserCrit! as AnyObject, forKey: kDMPurchaseTimeLesserCritKey)
		}
		if javelin != nil {
			dictionary.updateValue(javelin! as AnyObject, forKey: kDMPurchaseTimeJavelinKey)
		}
		if helmOfTheDominator != nil {
			dictionary.updateValue(helmOfTheDominator! as AnyObject, forKey: kDMPurchaseTimeHelmOfTheDominatorKey)
		}
		if cloak != nil {
			dictionary.updateValue(cloak! as AnyObject, forKey: kDMPurchaseTimeCloakKey)
		}
		if gem != nil {
			dictionary.updateValue(gem! as AnyObject, forKey: kDMPurchaseTimeGemKey)
		}
		if bracer != nil {
			dictionary.updateValue(bracer! as AnyObject, forKey: kDMPurchaseTimeBracerKey)
		}
		if robe != nil {
			dictionary.updateValue(robe! as AnyObject, forKey: kDMPurchaseTimeRobeKey)
		}
		if bottle != nil {
			dictionary.updateValue(bottle! as AnyObject, forKey: kDMPurchaseTimeBottleKey)
		}
		if chainmail != nil {
			dictionary.updateValue(chainmail! as AnyObject, forKey: kDMPurchaseTimeChainmailKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.energyBooster = aDecoder.decodeObject(forKey: kDMPurchaseTimeEnergyBoosterKey) as? Int
		self.tango = aDecoder.decodeObject(forKey: kDMPurchaseTimeTangoKey) as? Int
		self.aetherLens = aDecoder.decodeObject(forKey: kDMPurchaseTimeAetherLensKey) as? Int
		self.enchantedMango = aDecoder.decodeObject(forKey: kDMPurchaseTimeEnchantedMangoKey) as? Int
		self.riverPainter5 = aDecoder.decodeObject(forKey: kDMPurchaseTimeRiverPainter5Key) as? Int
		self.skadi = aDecoder.decodeObject(forKey: kDMPurchaseTimeSkadiKey) as? Int
		self.bfury = aDecoder.decodeObject(forKey: kDMPurchaseTimeBfuryKey) as? Int
		self.tranquilBoots = aDecoder.decodeObject(forKey: kDMPurchaseTimeTranquilBootsKey) as? Int
		self.mjollnir = aDecoder.decodeObject(forKey: kDMPurchaseTimeMjollnirKey) as? Int
		self.pers = aDecoder.decodeObject(forKey: kDMPurchaseTimePersKey) as? Int
		self.claymore = aDecoder.decodeObject(forKey: kDMPurchaseTimeClaymoreKey) as? Int
		self.lifesteal = aDecoder.decodeObject(forKey: kDMPurchaseTimeLifestealKey) as? Int
		self.blightStone = aDecoder.decodeObject(forKey: kDMPurchaseTimeBlightStoneKey) as? Int
		self.monkeyKingBar = aDecoder.decodeObject(forKey: kDMPurchaseTimeMonkeyKingBarKey) as? Int
		self.ultimateOrb = aDecoder.decodeObject(forKey: kDMPurchaseTimeUltimateOrbKey) as? Int
		self.flask = aDecoder.decodeObject(forKey: kDMPurchaseTimeFlaskKey) as? Int
		self.desolator = aDecoder.decodeObject(forKey: kDMPurchaseTimeDesolatorKey) as? Int
		self.stoutShield = aDecoder.decodeObject(forKey: kDMPurchaseTimeStoutShieldKey) as? Int
		self.orchid = aDecoder.decodeObject(forKey: kDMPurchaseTimeOrchidKey) as? Int
		self.ancientJanggo = aDecoder.decodeObject(forKey: kDMPurchaseTimeAncientJanggoKey) as? Int
		self.magicStick = aDecoder.decodeObject(forKey: kDMPurchaseTimeMagicStickKey) as? Int
		self.poorMansShield = aDecoder.decodeObject(forKey: kDMPurchaseTimePoorMansShieldKey) as? Int
		self.assault = aDecoder.decodeObject(forKey: kDMPurchaseTimeAssaultKey) as? Int
		self.branches = aDecoder.decodeObject(forKey: kDMPurchaseTimeBranchesKey) as? Int
		self.bladesOfAttack = aDecoder.decodeObject(forKey: kDMPurchaseTimeBladesOfAttackKey) as? Int
		self.ringOfBasilius = aDecoder.decodeObject(forKey: kDMPurchaseTimeRingOfBasiliusKey) as? Int
		self.maelstrom = aDecoder.decodeObject(forKey: kDMPurchaseTimeMaelstromKey) as? Int
		self.beltOfStrength = aDecoder.decodeObject(forKey: kDMPurchaseTimeBeltOfStrengthKey) as? Int
		self.ringOfRegen = aDecoder.decodeObject(forKey: kDMPurchaseTimeRingOfRegenKey) as? Int
		self.crimsonGuard = aDecoder.decodeObject(forKey: kDMPurchaseTimeCrimsonGuardKey) as? Int
		self.medallionOfCourage = aDecoder.decodeObject(forKey: kDMPurchaseTimeMedallionOfCourageKey) as? Int
		self.demonEdge = aDecoder.decodeObject(forKey: kDMPurchaseTimeDemonEdgeKey) as? Int
		self.urnOfShadows = aDecoder.decodeObject(forKey: kDMPurchaseTimeUrnOfShadowsKey) as? Int
		self.ogreAxe = aDecoder.decodeObject(forKey: kDMPurchaseTimeOgreAxeKey) as? Int
		self.circlet = aDecoder.decodeObject(forKey: kDMPurchaseTimeCircletKey) as? Int
		self.buckler = aDecoder.decodeObject(forKey: kDMPurchaseTimeBucklerKey) as? Int
		self.tomeOfKnowledge = aDecoder.decodeObject(forKey: kDMPurchaseTimeTomeOfKnowledgeKey) as? Int
		self.dust = aDecoder.decodeObject(forKey: kDMPurchaseTimeDustKey) as? Int
		self.ultimateScepter = aDecoder.decodeObject(forKey: kDMPurchaseTimeUltimateScepterKey) as? Int
		self.vitalityBooster = aDecoder.decodeObject(forKey: kDMPurchaseTimeVitalityBoosterKey) as? Int
		self.ringOfProtection = aDecoder.decodeObject(forKey: kDMPurchaseTimeRingOfProtectionKey) as? Int
		self.platemail = aDecoder.decodeObject(forKey: kDMPurchaseTimePlatemailKey) as? Int
		self.sangeAndYasha = aDecoder.decodeObject(forKey: kDMPurchaseTimeSangeAndYashaKey) as? Int
		self.hyperstone = aDecoder.decodeObject(forKey: kDMPurchaseTimeHyperstoneKey) as? Int
		self.abyssalBlade = aDecoder.decodeObject(forKey: kDMPurchaseTimeAbyssalBladeKey) as? Int
		self.basher = aDecoder.decodeObject(forKey: kDMPurchaseTimeBasherKey) as? Int
		self.wardSentry = aDecoder.decodeObject(forKey: kDMPurchaseTimeWardSentryKey) as? Int
		self.headdress = aDecoder.decodeObject(forKey: kDMPurchaseTimeHeaddressKey) as? Int
		self.boots = aDecoder.decodeObject(forKey: kDMPurchaseTimeBootsKey) as? Int
		self.sange = aDecoder.decodeObject(forKey: kDMPurchaseTimeSangeKey) as? Int
		self.tpscroll = aDecoder.decodeObject(forKey: kDMPurchaseTimeTpscrollKey) as? Int
		self.broadsword = aDecoder.decodeObject(forKey: kDMPurchaseTimeBroadswordKey) as? Int
		self.quellingBlade = aDecoder.decodeObject(forKey: kDMPurchaseTimeQuellingBladeKey) as? Int
		self.orbOfVenom = aDecoder.decodeObject(forKey: kDMPurchaseTimeOrbOfVenomKey) as? Int
		self.gloves = aDecoder.decodeObject(forKey: kDMPurchaseTimeGlovesKey) as? Int
		self.handOfMidas = aDecoder.decodeObject(forKey: kDMPurchaseTimeHandOfMidasKey) as? Int
		self.armlet = aDecoder.decodeObject(forKey: kDMPurchaseTimeArmletKey) as? Int
		self.moonShard = aDecoder.decodeObject(forKey: kDMPurchaseTimeMoonShardKey) as? Int
		self.courier = aDecoder.decodeObject(forKey: kDMPurchaseTimeCourierKey) as? Int
		self.shadowAmulet = aDecoder.decodeObject(forKey: kDMPurchaseTimeShadowAmuletKey) as? Int
		self.powerTreads = aDecoder.decodeObject(forKey: kDMPurchaseTimePowerTreadsKey) as? Int
		self.pipe = aDecoder.decodeObject(forKey: kDMPurchaseTimePipeKey) as? Int
		self.bootsOfElves = aDecoder.decodeObject(forKey: kDMPurchaseTimeBootsOfElvesKey) as? Int
		self.invisSword = aDecoder.decodeObject(forKey: kDMPurchaseTimeInvisSwordKey) as? Int
		self.gauntlets = aDecoder.decodeObject(forKey: kDMPurchaseTimeGauntletsKey) as? Int
		self.talismanOfEvasion = aDecoder.decodeObject(forKey: kDMPurchaseTimeTalismanOfEvasionKey) as? Int
		self.helmOfIronWill = aDecoder.decodeObject(forKey: kDMPurchaseTimeHelmOfIronWillKey) as? Int
		self.voidStone = aDecoder.decodeObject(forKey: kDMPurchaseTimeVoidStoneKey) as? Int
		self.silverEdge = aDecoder.decodeObject(forKey: kDMPurchaseTimeSilverEdgeKey) as? Int
		self.reaver = aDecoder.decodeObject(forKey: kDMPurchaseTimeReaverKey) as? Int
		self.ringOfHealth = aDecoder.decodeObject(forKey: kDMPurchaseTimeRingOfHealthKey) as? Int
		self.hoodOfDefiance = aDecoder.decodeObject(forKey: kDMPurchaseTimeHoodOfDefianceKey) as? Int
		self.manta = aDecoder.decodeObject(forKey: kDMPurchaseTimeMantaKey) as? Int
		self.pointBooster = aDecoder.decodeObject(forKey: kDMPurchaseTimePointBoosterKey) as? Int
		self.vanguard = aDecoder.decodeObject(forKey: kDMPurchaseTimeVanguardKey) as? Int
		self.bladeOfAlacrity = aDecoder.decodeObject(forKey: kDMPurchaseTimeBladeOfAlacrityKey) as? Int
		self.staffOfWizardry = aDecoder.decodeObject(forKey: kDMPurchaseTimeStaffOfWizardryKey) as? Int
		self.infusedRaindrop = aDecoder.decodeObject(forKey: kDMPurchaseTimeInfusedRaindropKey) as? Int
		self.wardObserver = aDecoder.decodeObject(forKey: kDMPurchaseTimeWardObserverKey) as? Int
		self.travelBoots = aDecoder.decodeObject(forKey: kDMPurchaseTimeTravelBootsKey) as? Int
		self.blackKingBar = aDecoder.decodeObject(forKey: kDMPurchaseTimeBlackKingBarKey) as? Int
		self.phaseBoots = aDecoder.decodeObject(forKey: kDMPurchaseTimePhaseBootsKey) as? Int
		self.faerieFire = aDecoder.decodeObject(forKey: kDMPurchaseTimeFaerieFireKey) as? Int
		self.vladmir = aDecoder.decodeObject(forKey: kDMPurchaseTimeVladmirKey) as? Int
		self.sobiMask = aDecoder.decodeObject(forKey: kDMPurchaseTimeSobiMaskKey) as? Int
		self.windLace = aDecoder.decodeObject(forKey: kDMPurchaseTimeWindLaceKey) as? Int
		self.greaterCrit = aDecoder.decodeObject(forKey: kDMPurchaseTimeGreaterCritKey) as? Int
		self.solarCrest = aDecoder.decodeObject(forKey: kDMPurchaseTimeSolarCrestKey) as? Int
		self.flyingCourier = aDecoder.decodeObject(forKey: kDMPurchaseTimeFlyingCourierKey) as? Int
		self.mithrilHammer = aDecoder.decodeObject(forKey: kDMPurchaseTimeMithrilHammerKey) as? Int
		self.yasha = aDecoder.decodeObject(forKey: kDMPurchaseTimeYashaKey) as? Int
		self.wraithBand = aDecoder.decodeObject(forKey: kDMPurchaseTimeWraithBandKey) as? Int
		self.heart = aDecoder.decodeObject(forKey: kDMPurchaseTimeHeartKey) as? Int
		self.clarity = aDecoder.decodeObject(forKey: kDMPurchaseTimeClarityKey) as? Int
		self.bloodthorn = aDecoder.decodeObject(forKey: kDMPurchaseTimeBloodthornKey) as? Int
		self.travelBoots2 = aDecoder.decodeObject(forKey: kDMPurchaseTimeTravelBoots2Key) as? Int
		self.quarterstaff = aDecoder.decodeObject(forKey: kDMPurchaseTimeQuarterstaffKey) as? Int
		self.oblivionStaff = aDecoder.decodeObject(forKey: kDMPurchaseTimeOblivionStaffKey) as? Int
		self.magicWand = aDecoder.decodeObject(forKey: kDMPurchaseTimeMagicWandKey) as? Int
		self.glimmerCape = aDecoder.decodeObject(forKey: kDMPurchaseTimeGlimmerCapeKey) as? Int
		self.ringOfAquila = aDecoder.decodeObject(forKey: kDMPurchaseTimeRingOfAquilaKey) as? Int
		self.slippers = aDecoder.decodeObject(forKey: kDMPurchaseTimeSlippersKey) as? Int
		self.lesserCrit = aDecoder.decodeObject(forKey: kDMPurchaseTimeLesserCritKey) as? Int
		self.javelin = aDecoder.decodeObject(forKey: kDMPurchaseTimeJavelinKey) as? Int
		self.helmOfTheDominator = aDecoder.decodeObject(forKey: kDMPurchaseTimeHelmOfTheDominatorKey) as? Int
		self.cloak = aDecoder.decodeObject(forKey: kDMPurchaseTimeCloakKey) as? Int
		self.gem = aDecoder.decodeObject(forKey: kDMPurchaseTimeGemKey) as? Int
		self.bracer = aDecoder.decodeObject(forKey: kDMPurchaseTimeBracerKey) as? Int
		self.robe = aDecoder.decodeObject(forKey: kDMPurchaseTimeRobeKey) as? Int
		self.bottle = aDecoder.decodeObject(forKey: kDMPurchaseTimeBottleKey) as? Int
		self.chainmail = aDecoder.decodeObject(forKey: kDMPurchaseTimeChainmailKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(energyBooster, forKey: kDMPurchaseTimeEnergyBoosterKey)
		aCoder.encode(tango, forKey: kDMPurchaseTimeTangoKey)
		aCoder.encode(aetherLens, forKey: kDMPurchaseTimeAetherLensKey)
		aCoder.encode(enchantedMango, forKey: kDMPurchaseTimeEnchantedMangoKey)
		aCoder.encode(riverPainter5, forKey: kDMPurchaseTimeRiverPainter5Key)
		aCoder.encode(skadi, forKey: kDMPurchaseTimeSkadiKey)
		aCoder.encode(bfury, forKey: kDMPurchaseTimeBfuryKey)
		aCoder.encode(tranquilBoots, forKey: kDMPurchaseTimeTranquilBootsKey)
		aCoder.encode(mjollnir, forKey: kDMPurchaseTimeMjollnirKey)
		aCoder.encode(pers, forKey: kDMPurchaseTimePersKey)
		aCoder.encode(claymore, forKey: kDMPurchaseTimeClaymoreKey)
		aCoder.encode(lifesteal, forKey: kDMPurchaseTimeLifestealKey)
		aCoder.encode(blightStone, forKey: kDMPurchaseTimeBlightStoneKey)
		aCoder.encode(monkeyKingBar, forKey: kDMPurchaseTimeMonkeyKingBarKey)
		aCoder.encode(ultimateOrb, forKey: kDMPurchaseTimeUltimateOrbKey)
		aCoder.encode(flask, forKey: kDMPurchaseTimeFlaskKey)
		aCoder.encode(desolator, forKey: kDMPurchaseTimeDesolatorKey)
		aCoder.encode(stoutShield, forKey: kDMPurchaseTimeStoutShieldKey)
		aCoder.encode(orchid, forKey: kDMPurchaseTimeOrchidKey)
		aCoder.encode(ancientJanggo, forKey: kDMPurchaseTimeAncientJanggoKey)
		aCoder.encode(magicStick, forKey: kDMPurchaseTimeMagicStickKey)
		aCoder.encode(poorMansShield, forKey: kDMPurchaseTimePoorMansShieldKey)
		aCoder.encode(assault, forKey: kDMPurchaseTimeAssaultKey)
		aCoder.encode(branches, forKey: kDMPurchaseTimeBranchesKey)
		aCoder.encode(bladesOfAttack, forKey: kDMPurchaseTimeBladesOfAttackKey)
		aCoder.encode(ringOfBasilius, forKey: kDMPurchaseTimeRingOfBasiliusKey)
		aCoder.encode(maelstrom, forKey: kDMPurchaseTimeMaelstromKey)
		aCoder.encode(beltOfStrength, forKey: kDMPurchaseTimeBeltOfStrengthKey)
		aCoder.encode(ringOfRegen, forKey: kDMPurchaseTimeRingOfRegenKey)
		aCoder.encode(crimsonGuard, forKey: kDMPurchaseTimeCrimsonGuardKey)
		aCoder.encode(medallionOfCourage, forKey: kDMPurchaseTimeMedallionOfCourageKey)
		aCoder.encode(demonEdge, forKey: kDMPurchaseTimeDemonEdgeKey)
		aCoder.encode(urnOfShadows, forKey: kDMPurchaseTimeUrnOfShadowsKey)
		aCoder.encode(ogreAxe, forKey: kDMPurchaseTimeOgreAxeKey)
		aCoder.encode(circlet, forKey: kDMPurchaseTimeCircletKey)
		aCoder.encode(buckler, forKey: kDMPurchaseTimeBucklerKey)
		aCoder.encode(tomeOfKnowledge, forKey: kDMPurchaseTimeTomeOfKnowledgeKey)
		aCoder.encode(dust, forKey: kDMPurchaseTimeDustKey)
		aCoder.encode(ultimateScepter, forKey: kDMPurchaseTimeUltimateScepterKey)
		aCoder.encode(vitalityBooster, forKey: kDMPurchaseTimeVitalityBoosterKey)
		aCoder.encode(ringOfProtection, forKey: kDMPurchaseTimeRingOfProtectionKey)
		aCoder.encode(platemail, forKey: kDMPurchaseTimePlatemailKey)
		aCoder.encode(sangeAndYasha, forKey: kDMPurchaseTimeSangeAndYashaKey)
		aCoder.encode(hyperstone, forKey: kDMPurchaseTimeHyperstoneKey)
		aCoder.encode(abyssalBlade, forKey: kDMPurchaseTimeAbyssalBladeKey)
		aCoder.encode(basher, forKey: kDMPurchaseTimeBasherKey)
		aCoder.encode(wardSentry, forKey: kDMPurchaseTimeWardSentryKey)
		aCoder.encode(headdress, forKey: kDMPurchaseTimeHeaddressKey)
		aCoder.encode(boots, forKey: kDMPurchaseTimeBootsKey)
		aCoder.encode(sange, forKey: kDMPurchaseTimeSangeKey)
		aCoder.encode(tpscroll, forKey: kDMPurchaseTimeTpscrollKey)
		aCoder.encode(broadsword, forKey: kDMPurchaseTimeBroadswordKey)
		aCoder.encode(quellingBlade, forKey: kDMPurchaseTimeQuellingBladeKey)
		aCoder.encode(orbOfVenom, forKey: kDMPurchaseTimeOrbOfVenomKey)
		aCoder.encode(gloves, forKey: kDMPurchaseTimeGlovesKey)
		aCoder.encode(handOfMidas, forKey: kDMPurchaseTimeHandOfMidasKey)
		aCoder.encode(armlet, forKey: kDMPurchaseTimeArmletKey)
		aCoder.encode(moonShard, forKey: kDMPurchaseTimeMoonShardKey)
		aCoder.encode(courier, forKey: kDMPurchaseTimeCourierKey)
		aCoder.encode(shadowAmulet, forKey: kDMPurchaseTimeShadowAmuletKey)
		aCoder.encode(powerTreads, forKey: kDMPurchaseTimePowerTreadsKey)
		aCoder.encode(pipe, forKey: kDMPurchaseTimePipeKey)
		aCoder.encode(bootsOfElves, forKey: kDMPurchaseTimeBootsOfElvesKey)
		aCoder.encode(invisSword, forKey: kDMPurchaseTimeInvisSwordKey)
		aCoder.encode(gauntlets, forKey: kDMPurchaseTimeGauntletsKey)
		aCoder.encode(talismanOfEvasion, forKey: kDMPurchaseTimeTalismanOfEvasionKey)
		aCoder.encode(helmOfIronWill, forKey: kDMPurchaseTimeHelmOfIronWillKey)
		aCoder.encode(voidStone, forKey: kDMPurchaseTimeVoidStoneKey)
		aCoder.encode(silverEdge, forKey: kDMPurchaseTimeSilverEdgeKey)
		aCoder.encode(reaver, forKey: kDMPurchaseTimeReaverKey)
		aCoder.encode(ringOfHealth, forKey: kDMPurchaseTimeRingOfHealthKey)
		aCoder.encode(hoodOfDefiance, forKey: kDMPurchaseTimeHoodOfDefianceKey)
		aCoder.encode(manta, forKey: kDMPurchaseTimeMantaKey)
		aCoder.encode(pointBooster, forKey: kDMPurchaseTimePointBoosterKey)
		aCoder.encode(vanguard, forKey: kDMPurchaseTimeVanguardKey)
		aCoder.encode(bladeOfAlacrity, forKey: kDMPurchaseTimeBladeOfAlacrityKey)
		aCoder.encode(staffOfWizardry, forKey: kDMPurchaseTimeStaffOfWizardryKey)
		aCoder.encode(infusedRaindrop, forKey: kDMPurchaseTimeInfusedRaindropKey)
		aCoder.encode(wardObserver, forKey: kDMPurchaseTimeWardObserverKey)
		aCoder.encode(travelBoots, forKey: kDMPurchaseTimeTravelBootsKey)
		aCoder.encode(blackKingBar, forKey: kDMPurchaseTimeBlackKingBarKey)
		aCoder.encode(phaseBoots, forKey: kDMPurchaseTimePhaseBootsKey)
		aCoder.encode(faerieFire, forKey: kDMPurchaseTimeFaerieFireKey)
		aCoder.encode(vladmir, forKey: kDMPurchaseTimeVladmirKey)
		aCoder.encode(sobiMask, forKey: kDMPurchaseTimeSobiMaskKey)
		aCoder.encode(windLace, forKey: kDMPurchaseTimeWindLaceKey)
		aCoder.encode(greaterCrit, forKey: kDMPurchaseTimeGreaterCritKey)
		aCoder.encode(solarCrest, forKey: kDMPurchaseTimeSolarCrestKey)
		aCoder.encode(flyingCourier, forKey: kDMPurchaseTimeFlyingCourierKey)
		aCoder.encode(mithrilHammer, forKey: kDMPurchaseTimeMithrilHammerKey)
		aCoder.encode(yasha, forKey: kDMPurchaseTimeYashaKey)
		aCoder.encode(wraithBand, forKey: kDMPurchaseTimeWraithBandKey)
		aCoder.encode(heart, forKey: kDMPurchaseTimeHeartKey)
		aCoder.encode(clarity, forKey: kDMPurchaseTimeClarityKey)
		aCoder.encode(bloodthorn, forKey: kDMPurchaseTimeBloodthornKey)
		aCoder.encode(travelBoots2, forKey: kDMPurchaseTimeTravelBoots2Key)
		aCoder.encode(quarterstaff, forKey: kDMPurchaseTimeQuarterstaffKey)
		aCoder.encode(oblivionStaff, forKey: kDMPurchaseTimeOblivionStaffKey)
		aCoder.encode(magicWand, forKey: kDMPurchaseTimeMagicWandKey)
		aCoder.encode(glimmerCape, forKey: kDMPurchaseTimeGlimmerCapeKey)
		aCoder.encode(ringOfAquila, forKey: kDMPurchaseTimeRingOfAquilaKey)
		aCoder.encode(slippers, forKey: kDMPurchaseTimeSlippersKey)
		aCoder.encode(lesserCrit, forKey: kDMPurchaseTimeLesserCritKey)
		aCoder.encode(javelin, forKey: kDMPurchaseTimeJavelinKey)
		aCoder.encode(helmOfTheDominator, forKey: kDMPurchaseTimeHelmOfTheDominatorKey)
		aCoder.encode(cloak, forKey: kDMPurchaseTimeCloakKey)
		aCoder.encode(gem, forKey: kDMPurchaseTimeGemKey)
		aCoder.encode(bracer, forKey: kDMPurchaseTimeBracerKey)
		aCoder.encode(robe, forKey: kDMPurchaseTimeRobeKey)
		aCoder.encode(bottle, forKey: kDMPurchaseTimeBottleKey)
		aCoder.encode(chainmail, forKey: kDMPurchaseTimeChainmailKey)

    }

}
