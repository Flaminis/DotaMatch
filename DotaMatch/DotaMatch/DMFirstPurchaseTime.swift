//
//  DMFirstPurchaseTime.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMFirstPurchaseTime: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMFirstPurchaseTimeEnergyBoosterKey: String = "energy_booster"
	internal let kDMFirstPurchaseTimeTangoKey: String = "tango"
	internal let kDMFirstPurchaseTimeAetherLensKey: String = "aether_lens"
	internal let kDMFirstPurchaseTimeEnchantedMangoKey: String = "enchanted_mango"
	internal let kDMFirstPurchaseTimeRiverPainter5Key: String = "river_painter5"
	internal let kDMFirstPurchaseTimeSkadiKey: String = "skadi"
	internal let kDMFirstPurchaseTimeBfuryKey: String = "bfury"
	internal let kDMFirstPurchaseTimeTranquilBootsKey: String = "tranquil_boots"
	internal let kDMFirstPurchaseTimeMjollnirKey: String = "mjollnir"
	internal let kDMFirstPurchaseTimePersKey: String = "pers"
	internal let kDMFirstPurchaseTimeClaymoreKey: String = "claymore"
	internal let kDMFirstPurchaseTimeLifestealKey: String = "lifesteal"
	internal let kDMFirstPurchaseTimeBlightStoneKey: String = "blight_stone"
	internal let kDMFirstPurchaseTimeMonkeyKingBarKey: String = "monkey_king_bar"
	internal let kDMFirstPurchaseTimeUltimateOrbKey: String = "ultimate_orb"
	internal let kDMFirstPurchaseTimeFlaskKey: String = "flask"
	internal let kDMFirstPurchaseTimeDesolatorKey: String = "desolator"
	internal let kDMFirstPurchaseTimeStoutShieldKey: String = "stout_shield"
	internal let kDMFirstPurchaseTimeOrchidKey: String = "orchid"
	internal let kDMFirstPurchaseTimeAncientJanggoKey: String = "ancient_janggo"
	internal let kDMFirstPurchaseTimeMagicStickKey: String = "magic_stick"
	internal let kDMFirstPurchaseTimePoorMansShieldKey: String = "poor_mans_shield"
	internal let kDMFirstPurchaseTimeAssaultKey: String = "assault"
	internal let kDMFirstPurchaseTimeBranchesKey: String = "branches"
	internal let kDMFirstPurchaseTimeBladesOfAttackKey: String = "blades_of_attack"
	internal let kDMFirstPurchaseTimeRingOfBasiliusKey: String = "ring_of_basilius"
	internal let kDMFirstPurchaseTimeMaelstromKey: String = "maelstrom"
	internal let kDMFirstPurchaseTimeBeltOfStrengthKey: String = "belt_of_strength"
	internal let kDMFirstPurchaseTimeRingOfRegenKey: String = "ring_of_regen"
	internal let kDMFirstPurchaseTimeCrimsonGuardKey: String = "crimson_guard"
	internal let kDMFirstPurchaseTimeMedallionOfCourageKey: String = "medallion_of_courage"
	internal let kDMFirstPurchaseTimeDemonEdgeKey: String = "demon_edge"
	internal let kDMFirstPurchaseTimeUrnOfShadowsKey: String = "urn_of_shadows"
	internal let kDMFirstPurchaseTimeOgreAxeKey: String = "ogre_axe"
	internal let kDMFirstPurchaseTimeCircletKey: String = "circlet"
	internal let kDMFirstPurchaseTimeBucklerKey: String = "buckler"
	internal let kDMFirstPurchaseTimeTomeOfKnowledgeKey: String = "tome_of_knowledge"
	internal let kDMFirstPurchaseTimeDustKey: String = "dust"
	internal let kDMFirstPurchaseTimeUltimateScepterKey: String = "ultimate_scepter"
	internal let kDMFirstPurchaseTimeVitalityBoosterKey: String = "vitality_booster"
	internal let kDMFirstPurchaseTimeRingOfProtectionKey: String = "ring_of_protection"
	internal let kDMFirstPurchaseTimePlatemailKey: String = "platemail"
	internal let kDMFirstPurchaseTimeSangeAndYashaKey: String = "sange_and_yasha"
	internal let kDMFirstPurchaseTimeHyperstoneKey: String = "hyperstone"
	internal let kDMFirstPurchaseTimeAbyssalBladeKey: String = "abyssal_blade"
	internal let kDMFirstPurchaseTimeBasherKey: String = "basher"
	internal let kDMFirstPurchaseTimeWardSentryKey: String = "ward_sentry"
	internal let kDMFirstPurchaseTimeHeaddressKey: String = "headdress"
	internal let kDMFirstPurchaseTimeBootsKey: String = "boots"
	internal let kDMFirstPurchaseTimeSangeKey: String = "sange"
	internal let kDMFirstPurchaseTimeTpscrollKey: String = "tpscroll"
	internal let kDMFirstPurchaseTimeBroadswordKey: String = "broadsword"
	internal let kDMFirstPurchaseTimeQuellingBladeKey: String = "quelling_blade"
	internal let kDMFirstPurchaseTimeOrbOfVenomKey: String = "orb_of_venom"
	internal let kDMFirstPurchaseTimeGlovesKey: String = "gloves"
	internal let kDMFirstPurchaseTimeHandOfMidasKey: String = "hand_of_midas"
	internal let kDMFirstPurchaseTimeArmletKey: String = "armlet"
	internal let kDMFirstPurchaseTimeMoonShardKey: String = "moon_shard"
	internal let kDMFirstPurchaseTimeCourierKey: String = "courier"
	internal let kDMFirstPurchaseTimeShadowAmuletKey: String = "shadow_amulet"
	internal let kDMFirstPurchaseTimePowerTreadsKey: String = "power_treads"
	internal let kDMFirstPurchaseTimePipeKey: String = "pipe"
	internal let kDMFirstPurchaseTimeBootsOfElvesKey: String = "boots_of_elves"
	internal let kDMFirstPurchaseTimeInvisSwordKey: String = "invis_sword"
	internal let kDMFirstPurchaseTimeGauntletsKey: String = "gauntlets"
	internal let kDMFirstPurchaseTimeTalismanOfEvasionKey: String = "talisman_of_evasion"
	internal let kDMFirstPurchaseTimeHelmOfIronWillKey: String = "helm_of_iron_will"
	internal let kDMFirstPurchaseTimeVoidStoneKey: String = "void_stone"
	internal let kDMFirstPurchaseTimeSilverEdgeKey: String = "silver_edge"
	internal let kDMFirstPurchaseTimeReaverKey: String = "reaver"
	internal let kDMFirstPurchaseTimeRingOfHealthKey: String = "ring_of_health"
	internal let kDMFirstPurchaseTimeHoodOfDefianceKey: String = "hood_of_defiance"
	internal let kDMFirstPurchaseTimeMantaKey: String = "manta"
	internal let kDMFirstPurchaseTimePointBoosterKey: String = "point_booster"
	internal let kDMFirstPurchaseTimeVanguardKey: String = "vanguard"
	internal let kDMFirstPurchaseTimeBladeOfAlacrityKey: String = "blade_of_alacrity"
	internal let kDMFirstPurchaseTimeStaffOfWizardryKey: String = "staff_of_wizardry"
	internal let kDMFirstPurchaseTimeInfusedRaindropKey: String = "infused_raindrop"
	internal let kDMFirstPurchaseTimeWardObserverKey: String = "ward_observer"
	internal let kDMFirstPurchaseTimeTravelBootsKey: String = "travel_boots"
	internal let kDMFirstPurchaseTimeBlackKingBarKey: String = "black_king_bar"
	internal let kDMFirstPurchaseTimePhaseBootsKey: String = "phase_boots"
	internal let kDMFirstPurchaseTimeFaerieFireKey: String = "faerie_fire"
	internal let kDMFirstPurchaseTimeVladmirKey: String = "vladmir"
	internal let kDMFirstPurchaseTimeSobiMaskKey: String = "sobi_mask"
	internal let kDMFirstPurchaseTimeWindLaceKey: String = "wind_lace"
	internal let kDMFirstPurchaseTimeGreaterCritKey: String = "greater_crit"
	internal let kDMFirstPurchaseTimeSolarCrestKey: String = "solar_crest"
	internal let kDMFirstPurchaseTimeFlyingCourierKey: String = "flying_courier"
	internal let kDMFirstPurchaseTimeMithrilHammerKey: String = "mithril_hammer"
	internal let kDMFirstPurchaseTimeYashaKey: String = "yasha"
	internal let kDMFirstPurchaseTimeWraithBandKey: String = "wraith_band"
	internal let kDMFirstPurchaseTimeHeartKey: String = "heart"
	internal let kDMFirstPurchaseTimeClarityKey: String = "clarity"
	internal let kDMFirstPurchaseTimeBloodthornKey: String = "bloodthorn"
	internal let kDMFirstPurchaseTimeTravelBoots2Key: String = "travel_boots_2"
	internal let kDMFirstPurchaseTimeQuarterstaffKey: String = "quarterstaff"
	internal let kDMFirstPurchaseTimeOblivionStaffKey: String = "oblivion_staff"
	internal let kDMFirstPurchaseTimeMagicWandKey: String = "magic_wand"
	internal let kDMFirstPurchaseTimeGlimmerCapeKey: String = "glimmer_cape"
	internal let kDMFirstPurchaseTimeRingOfAquilaKey: String = "ring_of_aquila"
	internal let kDMFirstPurchaseTimeSlippersKey: String = "slippers"
	internal let kDMFirstPurchaseTimeLesserCritKey: String = "lesser_crit"
	internal let kDMFirstPurchaseTimeJavelinKey: String = "javelin"
	internal let kDMFirstPurchaseTimeHelmOfTheDominatorKey: String = "helm_of_the_dominator"
	internal let kDMFirstPurchaseTimeCloakKey: String = "cloak"
	internal let kDMFirstPurchaseTimeGemKey: String = "gem"
	internal let kDMFirstPurchaseTimeBracerKey: String = "bracer"
	internal let kDMFirstPurchaseTimeRobeKey: String = "robe"
	internal let kDMFirstPurchaseTimeBottleKey: String = "bottle"
	internal let kDMFirstPurchaseTimeChainmailKey: String = "chainmail"


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
		energyBooster = json[kDMFirstPurchaseTimeEnergyBoosterKey].int
		tango = json[kDMFirstPurchaseTimeTangoKey].int
		aetherLens = json[kDMFirstPurchaseTimeAetherLensKey].int
		enchantedMango = json[kDMFirstPurchaseTimeEnchantedMangoKey].int
		riverPainter5 = json[kDMFirstPurchaseTimeRiverPainter5Key].int
		skadi = json[kDMFirstPurchaseTimeSkadiKey].int
		bfury = json[kDMFirstPurchaseTimeBfuryKey].int
		tranquilBoots = json[kDMFirstPurchaseTimeTranquilBootsKey].int
		mjollnir = json[kDMFirstPurchaseTimeMjollnirKey].int
		pers = json[kDMFirstPurchaseTimePersKey].int
		claymore = json[kDMFirstPurchaseTimeClaymoreKey].int
		lifesteal = json[kDMFirstPurchaseTimeLifestealKey].int
		blightStone = json[kDMFirstPurchaseTimeBlightStoneKey].int
		monkeyKingBar = json[kDMFirstPurchaseTimeMonkeyKingBarKey].int
		ultimateOrb = json[kDMFirstPurchaseTimeUltimateOrbKey].int
		flask = json[kDMFirstPurchaseTimeFlaskKey].int
		desolator = json[kDMFirstPurchaseTimeDesolatorKey].int
		stoutShield = json[kDMFirstPurchaseTimeStoutShieldKey].int
		orchid = json[kDMFirstPurchaseTimeOrchidKey].int
		ancientJanggo = json[kDMFirstPurchaseTimeAncientJanggoKey].int
		magicStick = json[kDMFirstPurchaseTimeMagicStickKey].int
		poorMansShield = json[kDMFirstPurchaseTimePoorMansShieldKey].int
		assault = json[kDMFirstPurchaseTimeAssaultKey].int
		branches = json[kDMFirstPurchaseTimeBranchesKey].int
		bladesOfAttack = json[kDMFirstPurchaseTimeBladesOfAttackKey].int
		ringOfBasilius = json[kDMFirstPurchaseTimeRingOfBasiliusKey].int
		maelstrom = json[kDMFirstPurchaseTimeMaelstromKey].int
		beltOfStrength = json[kDMFirstPurchaseTimeBeltOfStrengthKey].int
		ringOfRegen = json[kDMFirstPurchaseTimeRingOfRegenKey].int
		crimsonGuard = json[kDMFirstPurchaseTimeCrimsonGuardKey].int
		medallionOfCourage = json[kDMFirstPurchaseTimeMedallionOfCourageKey].int
		demonEdge = json[kDMFirstPurchaseTimeDemonEdgeKey].int
		urnOfShadows = json[kDMFirstPurchaseTimeUrnOfShadowsKey].int
		ogreAxe = json[kDMFirstPurchaseTimeOgreAxeKey].int
		circlet = json[kDMFirstPurchaseTimeCircletKey].int
		buckler = json[kDMFirstPurchaseTimeBucklerKey].int
		tomeOfKnowledge = json[kDMFirstPurchaseTimeTomeOfKnowledgeKey].int
		dust = json[kDMFirstPurchaseTimeDustKey].int
		ultimateScepter = json[kDMFirstPurchaseTimeUltimateScepterKey].int
		vitalityBooster = json[kDMFirstPurchaseTimeVitalityBoosterKey].int
		ringOfProtection = json[kDMFirstPurchaseTimeRingOfProtectionKey].int
		platemail = json[kDMFirstPurchaseTimePlatemailKey].int
		sangeAndYasha = json[kDMFirstPurchaseTimeSangeAndYashaKey].int
		hyperstone = json[kDMFirstPurchaseTimeHyperstoneKey].int
		abyssalBlade = json[kDMFirstPurchaseTimeAbyssalBladeKey].int
		basher = json[kDMFirstPurchaseTimeBasherKey].int
		wardSentry = json[kDMFirstPurchaseTimeWardSentryKey].int
		headdress = json[kDMFirstPurchaseTimeHeaddressKey].int
		boots = json[kDMFirstPurchaseTimeBootsKey].int
		sange = json[kDMFirstPurchaseTimeSangeKey].int
		tpscroll = json[kDMFirstPurchaseTimeTpscrollKey].int
		broadsword = json[kDMFirstPurchaseTimeBroadswordKey].int
		quellingBlade = json[kDMFirstPurchaseTimeQuellingBladeKey].int
		orbOfVenom = json[kDMFirstPurchaseTimeOrbOfVenomKey].int
		gloves = json[kDMFirstPurchaseTimeGlovesKey].int
		handOfMidas = json[kDMFirstPurchaseTimeHandOfMidasKey].int
		armlet = json[kDMFirstPurchaseTimeArmletKey].int
		moonShard = json[kDMFirstPurchaseTimeMoonShardKey].int
		courier = json[kDMFirstPurchaseTimeCourierKey].int
		shadowAmulet = json[kDMFirstPurchaseTimeShadowAmuletKey].int
		powerTreads = json[kDMFirstPurchaseTimePowerTreadsKey].int
		pipe = json[kDMFirstPurchaseTimePipeKey].int
		bootsOfElves = json[kDMFirstPurchaseTimeBootsOfElvesKey].int
		invisSword = json[kDMFirstPurchaseTimeInvisSwordKey].int
		gauntlets = json[kDMFirstPurchaseTimeGauntletsKey].int
		talismanOfEvasion = json[kDMFirstPurchaseTimeTalismanOfEvasionKey].int
		helmOfIronWill = json[kDMFirstPurchaseTimeHelmOfIronWillKey].int
		voidStone = json[kDMFirstPurchaseTimeVoidStoneKey].int
		silverEdge = json[kDMFirstPurchaseTimeSilverEdgeKey].int
		reaver = json[kDMFirstPurchaseTimeReaverKey].int
		ringOfHealth = json[kDMFirstPurchaseTimeRingOfHealthKey].int
		hoodOfDefiance = json[kDMFirstPurchaseTimeHoodOfDefianceKey].int
		manta = json[kDMFirstPurchaseTimeMantaKey].int
		pointBooster = json[kDMFirstPurchaseTimePointBoosterKey].int
		vanguard = json[kDMFirstPurchaseTimeVanguardKey].int
		bladeOfAlacrity = json[kDMFirstPurchaseTimeBladeOfAlacrityKey].int
		staffOfWizardry = json[kDMFirstPurchaseTimeStaffOfWizardryKey].int
		infusedRaindrop = json[kDMFirstPurchaseTimeInfusedRaindropKey].int
		wardObserver = json[kDMFirstPurchaseTimeWardObserverKey].int
		travelBoots = json[kDMFirstPurchaseTimeTravelBootsKey].int
		blackKingBar = json[kDMFirstPurchaseTimeBlackKingBarKey].int
		phaseBoots = json[kDMFirstPurchaseTimePhaseBootsKey].int
		faerieFire = json[kDMFirstPurchaseTimeFaerieFireKey].int
		vladmir = json[kDMFirstPurchaseTimeVladmirKey].int
		sobiMask = json[kDMFirstPurchaseTimeSobiMaskKey].int
		windLace = json[kDMFirstPurchaseTimeWindLaceKey].int
		greaterCrit = json[kDMFirstPurchaseTimeGreaterCritKey].int
		solarCrest = json[kDMFirstPurchaseTimeSolarCrestKey].int
		flyingCourier = json[kDMFirstPurchaseTimeFlyingCourierKey].int
		mithrilHammer = json[kDMFirstPurchaseTimeMithrilHammerKey].int
		yasha = json[kDMFirstPurchaseTimeYashaKey].int
		wraithBand = json[kDMFirstPurchaseTimeWraithBandKey].int
		heart = json[kDMFirstPurchaseTimeHeartKey].int
		clarity = json[kDMFirstPurchaseTimeClarityKey].int
		bloodthorn = json[kDMFirstPurchaseTimeBloodthornKey].int
		travelBoots2 = json[kDMFirstPurchaseTimeTravelBoots2Key].int
		quarterstaff = json[kDMFirstPurchaseTimeQuarterstaffKey].int
		oblivionStaff = json[kDMFirstPurchaseTimeOblivionStaffKey].int
		magicWand = json[kDMFirstPurchaseTimeMagicWandKey].int
		glimmerCape = json[kDMFirstPurchaseTimeGlimmerCapeKey].int
		ringOfAquila = json[kDMFirstPurchaseTimeRingOfAquilaKey].int
		slippers = json[kDMFirstPurchaseTimeSlippersKey].int
		lesserCrit = json[kDMFirstPurchaseTimeLesserCritKey].int
		javelin = json[kDMFirstPurchaseTimeJavelinKey].int
		helmOfTheDominator = json[kDMFirstPurchaseTimeHelmOfTheDominatorKey].int
		cloak = json[kDMFirstPurchaseTimeCloakKey].int
		gem = json[kDMFirstPurchaseTimeGemKey].int
		bracer = json[kDMFirstPurchaseTimeBracerKey].int
		robe = json[kDMFirstPurchaseTimeRobeKey].int
		bottle = json[kDMFirstPurchaseTimeBottleKey].int
		chainmail = json[kDMFirstPurchaseTimeChainmailKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if energyBooster != nil {
			dictionary.updateValue(energyBooster! as AnyObject, forKey: kDMFirstPurchaseTimeEnergyBoosterKey)
		}
		if tango != nil {
			dictionary.updateValue(tango! as AnyObject, forKey: kDMFirstPurchaseTimeTangoKey)
		}
		if aetherLens != nil {
			dictionary.updateValue(aetherLens! as AnyObject, forKey: kDMFirstPurchaseTimeAetherLensKey)
		}
		if enchantedMango != nil {
			dictionary.updateValue(enchantedMango! as AnyObject, forKey: kDMFirstPurchaseTimeEnchantedMangoKey)
		}
		if riverPainter5 != nil {
			dictionary.updateValue(riverPainter5! as AnyObject, forKey: kDMFirstPurchaseTimeRiverPainter5Key)
		}
		if skadi != nil {
			dictionary.updateValue(skadi! as AnyObject, forKey: kDMFirstPurchaseTimeSkadiKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury! as AnyObject, forKey: kDMFirstPurchaseTimeBfuryKey)
		}
		if tranquilBoots != nil {
			dictionary.updateValue(tranquilBoots! as AnyObject, forKey: kDMFirstPurchaseTimeTranquilBootsKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir! as AnyObject, forKey: kDMFirstPurchaseTimeMjollnirKey)
		}
		if pers != nil {
			dictionary.updateValue(pers! as AnyObject, forKey: kDMFirstPurchaseTimePersKey)
		}
		if claymore != nil {
			dictionary.updateValue(claymore! as AnyObject, forKey: kDMFirstPurchaseTimeClaymoreKey)
		}
		if lifesteal != nil {
			dictionary.updateValue(lifesteal! as AnyObject, forKey: kDMFirstPurchaseTimeLifestealKey)
		}
		if blightStone != nil {
			dictionary.updateValue(blightStone! as AnyObject, forKey: kDMFirstPurchaseTimeBlightStoneKey)
		}
		if monkeyKingBar != nil {
			dictionary.updateValue(monkeyKingBar! as AnyObject, forKey: kDMFirstPurchaseTimeMonkeyKingBarKey)
		}
		if ultimateOrb != nil {
			dictionary.updateValue(ultimateOrb! as AnyObject, forKey: kDMFirstPurchaseTimeUltimateOrbKey)
		}
		if flask != nil {
			dictionary.updateValue(flask! as AnyObject, forKey: kDMFirstPurchaseTimeFlaskKey)
		}
		if desolator != nil {
			dictionary.updateValue(desolator! as AnyObject, forKey: kDMFirstPurchaseTimeDesolatorKey)
		}
		if stoutShield != nil {
			dictionary.updateValue(stoutShield! as AnyObject, forKey: kDMFirstPurchaseTimeStoutShieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid! as AnyObject, forKey: kDMFirstPurchaseTimeOrchidKey)
		}
		if ancientJanggo != nil {
			dictionary.updateValue(ancientJanggo! as AnyObject, forKey: kDMFirstPurchaseTimeAncientJanggoKey)
		}
		if magicStick != nil {
			dictionary.updateValue(magicStick! as AnyObject, forKey: kDMFirstPurchaseTimeMagicStickKey)
		}
		if poorMansShield != nil {
			dictionary.updateValue(poorMansShield! as AnyObject, forKey: kDMFirstPurchaseTimePoorMansShieldKey)
		}
		if assault != nil {
			dictionary.updateValue(assault! as AnyObject, forKey: kDMFirstPurchaseTimeAssaultKey)
		}
		if branches != nil {
			dictionary.updateValue(branches! as AnyObject, forKey: kDMFirstPurchaseTimeBranchesKey)
		}
		if bladesOfAttack != nil {
			dictionary.updateValue(bladesOfAttack! as AnyObject, forKey: kDMFirstPurchaseTimeBladesOfAttackKey)
		}
		if ringOfBasilius != nil {
			dictionary.updateValue(ringOfBasilius! as AnyObject, forKey: kDMFirstPurchaseTimeRingOfBasiliusKey)
		}
		if maelstrom != nil {
			dictionary.updateValue(maelstrom! as AnyObject, forKey: kDMFirstPurchaseTimeMaelstromKey)
		}
		if beltOfStrength != nil {
			dictionary.updateValue(beltOfStrength! as AnyObject, forKey: kDMFirstPurchaseTimeBeltOfStrengthKey)
		}
		if ringOfRegen != nil {
			dictionary.updateValue(ringOfRegen! as AnyObject, forKey: kDMFirstPurchaseTimeRingOfRegenKey)
		}
		if crimsonGuard != nil {
			dictionary.updateValue(crimsonGuard! as AnyObject, forKey: kDMFirstPurchaseTimeCrimsonGuardKey)
		}
		if medallionOfCourage != nil {
			dictionary.updateValue(medallionOfCourage! as AnyObject, forKey: kDMFirstPurchaseTimeMedallionOfCourageKey)
		}
		if demonEdge != nil {
			dictionary.updateValue(demonEdge! as AnyObject, forKey: kDMFirstPurchaseTimeDemonEdgeKey)
		}
		if urnOfShadows != nil {
			dictionary.updateValue(urnOfShadows! as AnyObject, forKey: kDMFirstPurchaseTimeUrnOfShadowsKey)
		}
		if ogreAxe != nil {
			dictionary.updateValue(ogreAxe! as AnyObject, forKey: kDMFirstPurchaseTimeOgreAxeKey)
		}
		if circlet != nil {
			dictionary.updateValue(circlet! as AnyObject, forKey: kDMFirstPurchaseTimeCircletKey)
		}
		if buckler != nil {
			dictionary.updateValue(buckler! as AnyObject, forKey: kDMFirstPurchaseTimeBucklerKey)
		}
		if tomeOfKnowledge != nil {
			dictionary.updateValue(tomeOfKnowledge! as AnyObject, forKey: kDMFirstPurchaseTimeTomeOfKnowledgeKey)
		}
		if dust != nil {
			dictionary.updateValue(dust! as AnyObject, forKey: kDMFirstPurchaseTimeDustKey)
		}
		if ultimateScepter != nil {
			dictionary.updateValue(ultimateScepter! as AnyObject, forKey: kDMFirstPurchaseTimeUltimateScepterKey)
		}
		if vitalityBooster != nil {
			dictionary.updateValue(vitalityBooster! as AnyObject, forKey: kDMFirstPurchaseTimeVitalityBoosterKey)
		}
		if ringOfProtection != nil {
			dictionary.updateValue(ringOfProtection! as AnyObject, forKey: kDMFirstPurchaseTimeRingOfProtectionKey)
		}
		if platemail != nil {
			dictionary.updateValue(platemail! as AnyObject, forKey: kDMFirstPurchaseTimePlatemailKey)
		}
		if sangeAndYasha != nil {
			dictionary.updateValue(sangeAndYasha! as AnyObject, forKey: kDMFirstPurchaseTimeSangeAndYashaKey)
		}
		if hyperstone != nil {
			dictionary.updateValue(hyperstone! as AnyObject, forKey: kDMFirstPurchaseTimeHyperstoneKey)
		}
		if abyssalBlade != nil {
			dictionary.updateValue(abyssalBlade! as AnyObject, forKey: kDMFirstPurchaseTimeAbyssalBladeKey)
		}
		if basher != nil {
			dictionary.updateValue(basher! as AnyObject, forKey: kDMFirstPurchaseTimeBasherKey)
		}
		if wardSentry != nil {
			dictionary.updateValue(wardSentry! as AnyObject, forKey: kDMFirstPurchaseTimeWardSentryKey)
		}
		if headdress != nil {
			dictionary.updateValue(headdress! as AnyObject, forKey: kDMFirstPurchaseTimeHeaddressKey)
		}
		if boots != nil {
			dictionary.updateValue(boots! as AnyObject, forKey: kDMFirstPurchaseTimeBootsKey)
		}
		if sange != nil {
			dictionary.updateValue(sange! as AnyObject, forKey: kDMFirstPurchaseTimeSangeKey)
		}
		if tpscroll != nil {
			dictionary.updateValue(tpscroll! as AnyObject, forKey: kDMFirstPurchaseTimeTpscrollKey)
		}
		if broadsword != nil {
			dictionary.updateValue(broadsword! as AnyObject, forKey: kDMFirstPurchaseTimeBroadswordKey)
		}
		if quellingBlade != nil {
			dictionary.updateValue(quellingBlade! as AnyObject, forKey: kDMFirstPurchaseTimeQuellingBladeKey)
		}
		if orbOfVenom != nil {
			dictionary.updateValue(orbOfVenom! as AnyObject, forKey: kDMFirstPurchaseTimeOrbOfVenomKey)
		}
		if gloves != nil {
			dictionary.updateValue(gloves! as AnyObject, forKey: kDMFirstPurchaseTimeGlovesKey)
		}
		if handOfMidas != nil {
			dictionary.updateValue(handOfMidas! as AnyObject, forKey: kDMFirstPurchaseTimeHandOfMidasKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet! as AnyObject, forKey: kDMFirstPurchaseTimeArmletKey)
		}
		if moonShard != nil {
			dictionary.updateValue(moonShard! as AnyObject, forKey: kDMFirstPurchaseTimeMoonShardKey)
		}
		if courier != nil {
			dictionary.updateValue(courier! as AnyObject, forKey: kDMFirstPurchaseTimeCourierKey)
		}
		if shadowAmulet != nil {
			dictionary.updateValue(shadowAmulet! as AnyObject, forKey: kDMFirstPurchaseTimeShadowAmuletKey)
		}
		if powerTreads != nil {
			dictionary.updateValue(powerTreads! as AnyObject, forKey: kDMFirstPurchaseTimePowerTreadsKey)
		}
		if pipe != nil {
			dictionary.updateValue(pipe! as AnyObject, forKey: kDMFirstPurchaseTimePipeKey)
		}
		if bootsOfElves != nil {
			dictionary.updateValue(bootsOfElves! as AnyObject, forKey: kDMFirstPurchaseTimeBootsOfElvesKey)
		}
		if invisSword != nil {
			dictionary.updateValue(invisSword! as AnyObject, forKey: kDMFirstPurchaseTimeInvisSwordKey)
		}
		if gauntlets != nil {
			dictionary.updateValue(gauntlets! as AnyObject, forKey: kDMFirstPurchaseTimeGauntletsKey)
		}
		if talismanOfEvasion != nil {
			dictionary.updateValue(talismanOfEvasion! as AnyObject, forKey: kDMFirstPurchaseTimeTalismanOfEvasionKey)
		}
		if helmOfIronWill != nil {
			dictionary.updateValue(helmOfIronWill! as AnyObject, forKey: kDMFirstPurchaseTimeHelmOfIronWillKey)
		}
		if voidStone != nil {
			dictionary.updateValue(voidStone! as AnyObject, forKey: kDMFirstPurchaseTimeVoidStoneKey)
		}
		if silverEdge != nil {
			dictionary.updateValue(silverEdge! as AnyObject, forKey: kDMFirstPurchaseTimeSilverEdgeKey)
		}
		if reaver != nil {
			dictionary.updateValue(reaver! as AnyObject, forKey: kDMFirstPurchaseTimeReaverKey)
		}
		if ringOfHealth != nil {
			dictionary.updateValue(ringOfHealth! as AnyObject, forKey: kDMFirstPurchaseTimeRingOfHealthKey)
		}
		if hoodOfDefiance != nil {
			dictionary.updateValue(hoodOfDefiance! as AnyObject, forKey: kDMFirstPurchaseTimeHoodOfDefianceKey)
		}
		if manta != nil {
			dictionary.updateValue(manta! as AnyObject, forKey: kDMFirstPurchaseTimeMantaKey)
		}
		if pointBooster != nil {
			dictionary.updateValue(pointBooster! as AnyObject, forKey: kDMFirstPurchaseTimePointBoosterKey)
		}
		if vanguard != nil {
			dictionary.updateValue(vanguard! as AnyObject, forKey: kDMFirstPurchaseTimeVanguardKey)
		}
		if bladeOfAlacrity != nil {
			dictionary.updateValue(bladeOfAlacrity! as AnyObject, forKey: kDMFirstPurchaseTimeBladeOfAlacrityKey)
		}
		if staffOfWizardry != nil {
			dictionary.updateValue(staffOfWizardry! as AnyObject, forKey: kDMFirstPurchaseTimeStaffOfWizardryKey)
		}
		if infusedRaindrop != nil {
			dictionary.updateValue(infusedRaindrop! as AnyObject, forKey: kDMFirstPurchaseTimeInfusedRaindropKey)
		}
		if wardObserver != nil {
			dictionary.updateValue(wardObserver! as AnyObject, forKey: kDMFirstPurchaseTimeWardObserverKey)
		}
		if travelBoots != nil {
			dictionary.updateValue(travelBoots! as AnyObject, forKey: kDMFirstPurchaseTimeTravelBootsKey)
		}
		if blackKingBar != nil {
			dictionary.updateValue(blackKingBar! as AnyObject, forKey: kDMFirstPurchaseTimeBlackKingBarKey)
		}
		if phaseBoots != nil {
			dictionary.updateValue(phaseBoots! as AnyObject, forKey: kDMFirstPurchaseTimePhaseBootsKey)
		}
		if faerieFire != nil {
			dictionary.updateValue(faerieFire! as AnyObject, forKey: kDMFirstPurchaseTimeFaerieFireKey)
		}
		if vladmir != nil {
			dictionary.updateValue(vladmir! as AnyObject, forKey: kDMFirstPurchaseTimeVladmirKey)
		}
		if sobiMask != nil {
			dictionary.updateValue(sobiMask! as AnyObject, forKey: kDMFirstPurchaseTimeSobiMaskKey)
		}
		if windLace != nil {
			dictionary.updateValue(windLace! as AnyObject, forKey: kDMFirstPurchaseTimeWindLaceKey)
		}
		if greaterCrit != nil {
			dictionary.updateValue(greaterCrit! as AnyObject, forKey: kDMFirstPurchaseTimeGreaterCritKey)
		}
		if solarCrest != nil {
			dictionary.updateValue(solarCrest! as AnyObject, forKey: kDMFirstPurchaseTimeSolarCrestKey)
		}
		if flyingCourier != nil {
			dictionary.updateValue(flyingCourier! as AnyObject, forKey: kDMFirstPurchaseTimeFlyingCourierKey)
		}
		if mithrilHammer != nil {
			dictionary.updateValue(mithrilHammer! as AnyObject, forKey: kDMFirstPurchaseTimeMithrilHammerKey)
		}
		if yasha != nil {
			dictionary.updateValue(yasha! as AnyObject, forKey: kDMFirstPurchaseTimeYashaKey)
		}
		if wraithBand != nil {
			dictionary.updateValue(wraithBand! as AnyObject, forKey: kDMFirstPurchaseTimeWraithBandKey)
		}
		if heart != nil {
			dictionary.updateValue(heart! as AnyObject, forKey: kDMFirstPurchaseTimeHeartKey)
		}
		if clarity != nil {
			dictionary.updateValue(clarity! as AnyObject, forKey: kDMFirstPurchaseTimeClarityKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn! as AnyObject, forKey: kDMFirstPurchaseTimeBloodthornKey)
		}
		if travelBoots2 != nil {
			dictionary.updateValue(travelBoots2! as AnyObject, forKey: kDMFirstPurchaseTimeTravelBoots2Key)
		}
		if quarterstaff != nil {
			dictionary.updateValue(quarterstaff! as AnyObject, forKey: kDMFirstPurchaseTimeQuarterstaffKey)
		}
		if oblivionStaff != nil {
			dictionary.updateValue(oblivionStaff! as AnyObject, forKey: kDMFirstPurchaseTimeOblivionStaffKey)
		}
		if magicWand != nil {
			dictionary.updateValue(magicWand! as AnyObject, forKey: kDMFirstPurchaseTimeMagicWandKey)
		}
		if glimmerCape != nil {
			dictionary.updateValue(glimmerCape! as AnyObject, forKey: kDMFirstPurchaseTimeGlimmerCapeKey)
		}
		if ringOfAquila != nil {
			dictionary.updateValue(ringOfAquila! as AnyObject, forKey: kDMFirstPurchaseTimeRingOfAquilaKey)
		}
		if slippers != nil {
			dictionary.updateValue(slippers! as AnyObject, forKey: kDMFirstPurchaseTimeSlippersKey)
		}
		if lesserCrit != nil {
			dictionary.updateValue(lesserCrit! as AnyObject, forKey: kDMFirstPurchaseTimeLesserCritKey)
		}
		if javelin != nil {
			dictionary.updateValue(javelin! as AnyObject, forKey: kDMFirstPurchaseTimeJavelinKey)
		}
		if helmOfTheDominator != nil {
			dictionary.updateValue(helmOfTheDominator! as AnyObject, forKey: kDMFirstPurchaseTimeHelmOfTheDominatorKey)
		}
		if cloak != nil {
			dictionary.updateValue(cloak! as AnyObject, forKey: kDMFirstPurchaseTimeCloakKey)
		}
		if gem != nil {
			dictionary.updateValue(gem! as AnyObject, forKey: kDMFirstPurchaseTimeGemKey)
		}
		if bracer != nil {
			dictionary.updateValue(bracer! as AnyObject, forKey: kDMFirstPurchaseTimeBracerKey)
		}
		if robe != nil {
			dictionary.updateValue(robe! as AnyObject, forKey: kDMFirstPurchaseTimeRobeKey)
		}
		if bottle != nil {
			dictionary.updateValue(bottle! as AnyObject, forKey: kDMFirstPurchaseTimeBottleKey)
		}
		if chainmail != nil {
			dictionary.updateValue(chainmail! as AnyObject, forKey: kDMFirstPurchaseTimeChainmailKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.energyBooster = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeEnergyBoosterKey) as? Int
		self.tango = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeTangoKey) as? Int
		self.aetherLens = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeAetherLensKey) as? Int
		self.enchantedMango = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeEnchantedMangoKey) as? Int
		self.riverPainter5 = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeRiverPainter5Key) as? Int
		self.skadi = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeSkadiKey) as? Int
		self.bfury = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBfuryKey) as? Int
		self.tranquilBoots = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeTranquilBootsKey) as? Int
		self.mjollnir = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeMjollnirKey) as? Int
		self.pers = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimePersKey) as? Int
		self.claymore = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeClaymoreKey) as? Int
		self.lifesteal = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeLifestealKey) as? Int
		self.blightStone = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBlightStoneKey) as? Int
		self.monkeyKingBar = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeMonkeyKingBarKey) as? Int
		self.ultimateOrb = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeUltimateOrbKey) as? Int
		self.flask = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeFlaskKey) as? Int
		self.desolator = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeDesolatorKey) as? Int
		self.stoutShield = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeStoutShieldKey) as? Int
		self.orchid = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeOrchidKey) as? Int
		self.ancientJanggo = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeAncientJanggoKey) as? Int
		self.magicStick = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeMagicStickKey) as? Int
		self.poorMansShield = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimePoorMansShieldKey) as? Int
		self.assault = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeAssaultKey) as? Int
		self.branches = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBranchesKey) as? Int
		self.bladesOfAttack = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBladesOfAttackKey) as? Int
		self.ringOfBasilius = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeRingOfBasiliusKey) as? Int
		self.maelstrom = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeMaelstromKey) as? Int
		self.beltOfStrength = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBeltOfStrengthKey) as? Int
		self.ringOfRegen = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeRingOfRegenKey) as? Int
		self.crimsonGuard = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeCrimsonGuardKey) as? Int
		self.medallionOfCourage = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeMedallionOfCourageKey) as? Int
		self.demonEdge = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeDemonEdgeKey) as? Int
		self.urnOfShadows = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeUrnOfShadowsKey) as? Int
		self.ogreAxe = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeOgreAxeKey) as? Int
		self.circlet = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeCircletKey) as? Int
		self.buckler = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBucklerKey) as? Int
		self.tomeOfKnowledge = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeTomeOfKnowledgeKey) as? Int
		self.dust = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeDustKey) as? Int
		self.ultimateScepter = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeUltimateScepterKey) as? Int
		self.vitalityBooster = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeVitalityBoosterKey) as? Int
		self.ringOfProtection = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeRingOfProtectionKey) as? Int
		self.platemail = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimePlatemailKey) as? Int
		self.sangeAndYasha = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeSangeAndYashaKey) as? Int
		self.hyperstone = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeHyperstoneKey) as? Int
		self.abyssalBlade = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeAbyssalBladeKey) as? Int
		self.basher = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBasherKey) as? Int
		self.wardSentry = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeWardSentryKey) as? Int
		self.headdress = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeHeaddressKey) as? Int
		self.boots = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBootsKey) as? Int
		self.sange = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeSangeKey) as? Int
		self.tpscroll = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeTpscrollKey) as? Int
		self.broadsword = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBroadswordKey) as? Int
		self.quellingBlade = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeQuellingBladeKey) as? Int
		self.orbOfVenom = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeOrbOfVenomKey) as? Int
		self.gloves = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeGlovesKey) as? Int
		self.handOfMidas = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeHandOfMidasKey) as? Int
		self.armlet = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeArmletKey) as? Int
		self.moonShard = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeMoonShardKey) as? Int
		self.courier = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeCourierKey) as? Int
		self.shadowAmulet = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeShadowAmuletKey) as? Int
		self.powerTreads = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimePowerTreadsKey) as? Int
		self.pipe = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimePipeKey) as? Int
		self.bootsOfElves = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBootsOfElvesKey) as? Int
		self.invisSword = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeInvisSwordKey) as? Int
		self.gauntlets = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeGauntletsKey) as? Int
		self.talismanOfEvasion = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeTalismanOfEvasionKey) as? Int
		self.helmOfIronWill = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeHelmOfIronWillKey) as? Int
		self.voidStone = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeVoidStoneKey) as? Int
		self.silverEdge = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeSilverEdgeKey) as? Int
		self.reaver = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeReaverKey) as? Int
		self.ringOfHealth = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeRingOfHealthKey) as? Int
		self.hoodOfDefiance = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeHoodOfDefianceKey) as? Int
		self.manta = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeMantaKey) as? Int
		self.pointBooster = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimePointBoosterKey) as? Int
		self.vanguard = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeVanguardKey) as? Int
		self.bladeOfAlacrity = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBladeOfAlacrityKey) as? Int
		self.staffOfWizardry = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeStaffOfWizardryKey) as? Int
		self.infusedRaindrop = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeInfusedRaindropKey) as? Int
		self.wardObserver = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeWardObserverKey) as? Int
		self.travelBoots = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeTravelBootsKey) as? Int
		self.blackKingBar = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBlackKingBarKey) as? Int
		self.phaseBoots = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimePhaseBootsKey) as? Int
		self.faerieFire = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeFaerieFireKey) as? Int
		self.vladmir = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeVladmirKey) as? Int
		self.sobiMask = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeSobiMaskKey) as? Int
		self.windLace = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeWindLaceKey) as? Int
		self.greaterCrit = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeGreaterCritKey) as? Int
		self.solarCrest = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeSolarCrestKey) as? Int
		self.flyingCourier = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeFlyingCourierKey) as? Int
		self.mithrilHammer = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeMithrilHammerKey) as? Int
		self.yasha = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeYashaKey) as? Int
		self.wraithBand = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeWraithBandKey) as? Int
		self.heart = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeHeartKey) as? Int
		self.clarity = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeClarityKey) as? Int
		self.bloodthorn = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBloodthornKey) as? Int
		self.travelBoots2 = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeTravelBoots2Key) as? Int
		self.quarterstaff = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeQuarterstaffKey) as? Int
		self.oblivionStaff = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeOblivionStaffKey) as? Int
		self.magicWand = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeMagicWandKey) as? Int
		self.glimmerCape = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeGlimmerCapeKey) as? Int
		self.ringOfAquila = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeRingOfAquilaKey) as? Int
		self.slippers = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeSlippersKey) as? Int
		self.lesserCrit = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeLesserCritKey) as? Int
		self.javelin = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeJavelinKey) as? Int
		self.helmOfTheDominator = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeHelmOfTheDominatorKey) as? Int
		self.cloak = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeCloakKey) as? Int
		self.gem = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeGemKey) as? Int
		self.bracer = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBracerKey) as? Int
		self.robe = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeRobeKey) as? Int
		self.bottle = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeBottleKey) as? Int
		self.chainmail = aDecoder.decodeObject(forKey: kDMFirstPurchaseTimeChainmailKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(energyBooster, forKey: kDMFirstPurchaseTimeEnergyBoosterKey)
		aCoder.encode(tango, forKey: kDMFirstPurchaseTimeTangoKey)
		aCoder.encode(aetherLens, forKey: kDMFirstPurchaseTimeAetherLensKey)
		aCoder.encode(enchantedMango, forKey: kDMFirstPurchaseTimeEnchantedMangoKey)
		aCoder.encode(riverPainter5, forKey: kDMFirstPurchaseTimeRiverPainter5Key)
		aCoder.encode(skadi, forKey: kDMFirstPurchaseTimeSkadiKey)
		aCoder.encode(bfury, forKey: kDMFirstPurchaseTimeBfuryKey)
		aCoder.encode(tranquilBoots, forKey: kDMFirstPurchaseTimeTranquilBootsKey)
		aCoder.encode(mjollnir, forKey: kDMFirstPurchaseTimeMjollnirKey)
		aCoder.encode(pers, forKey: kDMFirstPurchaseTimePersKey)
		aCoder.encode(claymore, forKey: kDMFirstPurchaseTimeClaymoreKey)
		aCoder.encode(lifesteal, forKey: kDMFirstPurchaseTimeLifestealKey)
		aCoder.encode(blightStone, forKey: kDMFirstPurchaseTimeBlightStoneKey)
		aCoder.encode(monkeyKingBar, forKey: kDMFirstPurchaseTimeMonkeyKingBarKey)
		aCoder.encode(ultimateOrb, forKey: kDMFirstPurchaseTimeUltimateOrbKey)
		aCoder.encode(flask, forKey: kDMFirstPurchaseTimeFlaskKey)
		aCoder.encode(desolator, forKey: kDMFirstPurchaseTimeDesolatorKey)
		aCoder.encode(stoutShield, forKey: kDMFirstPurchaseTimeStoutShieldKey)
		aCoder.encode(orchid, forKey: kDMFirstPurchaseTimeOrchidKey)
		aCoder.encode(ancientJanggo, forKey: kDMFirstPurchaseTimeAncientJanggoKey)
		aCoder.encode(magicStick, forKey: kDMFirstPurchaseTimeMagicStickKey)
		aCoder.encode(poorMansShield, forKey: kDMFirstPurchaseTimePoorMansShieldKey)
		aCoder.encode(assault, forKey: kDMFirstPurchaseTimeAssaultKey)
		aCoder.encode(branches, forKey: kDMFirstPurchaseTimeBranchesKey)
		aCoder.encode(bladesOfAttack, forKey: kDMFirstPurchaseTimeBladesOfAttackKey)
		aCoder.encode(ringOfBasilius, forKey: kDMFirstPurchaseTimeRingOfBasiliusKey)
		aCoder.encode(maelstrom, forKey: kDMFirstPurchaseTimeMaelstromKey)
		aCoder.encode(beltOfStrength, forKey: kDMFirstPurchaseTimeBeltOfStrengthKey)
		aCoder.encode(ringOfRegen, forKey: kDMFirstPurchaseTimeRingOfRegenKey)
		aCoder.encode(crimsonGuard, forKey: kDMFirstPurchaseTimeCrimsonGuardKey)
		aCoder.encode(medallionOfCourage, forKey: kDMFirstPurchaseTimeMedallionOfCourageKey)
		aCoder.encode(demonEdge, forKey: kDMFirstPurchaseTimeDemonEdgeKey)
		aCoder.encode(urnOfShadows, forKey: kDMFirstPurchaseTimeUrnOfShadowsKey)
		aCoder.encode(ogreAxe, forKey: kDMFirstPurchaseTimeOgreAxeKey)
		aCoder.encode(circlet, forKey: kDMFirstPurchaseTimeCircletKey)
		aCoder.encode(buckler, forKey: kDMFirstPurchaseTimeBucklerKey)
		aCoder.encode(tomeOfKnowledge, forKey: kDMFirstPurchaseTimeTomeOfKnowledgeKey)
		aCoder.encode(dust, forKey: kDMFirstPurchaseTimeDustKey)
		aCoder.encode(ultimateScepter, forKey: kDMFirstPurchaseTimeUltimateScepterKey)
		aCoder.encode(vitalityBooster, forKey: kDMFirstPurchaseTimeVitalityBoosterKey)
		aCoder.encode(ringOfProtection, forKey: kDMFirstPurchaseTimeRingOfProtectionKey)
		aCoder.encode(platemail, forKey: kDMFirstPurchaseTimePlatemailKey)
		aCoder.encode(sangeAndYasha, forKey: kDMFirstPurchaseTimeSangeAndYashaKey)
		aCoder.encode(hyperstone, forKey: kDMFirstPurchaseTimeHyperstoneKey)
		aCoder.encode(abyssalBlade, forKey: kDMFirstPurchaseTimeAbyssalBladeKey)
		aCoder.encode(basher, forKey: kDMFirstPurchaseTimeBasherKey)
		aCoder.encode(wardSentry, forKey: kDMFirstPurchaseTimeWardSentryKey)
		aCoder.encode(headdress, forKey: kDMFirstPurchaseTimeHeaddressKey)
		aCoder.encode(boots, forKey: kDMFirstPurchaseTimeBootsKey)
		aCoder.encode(sange, forKey: kDMFirstPurchaseTimeSangeKey)
		aCoder.encode(tpscroll, forKey: kDMFirstPurchaseTimeTpscrollKey)
		aCoder.encode(broadsword, forKey: kDMFirstPurchaseTimeBroadswordKey)
		aCoder.encode(quellingBlade, forKey: kDMFirstPurchaseTimeQuellingBladeKey)
		aCoder.encode(orbOfVenom, forKey: kDMFirstPurchaseTimeOrbOfVenomKey)
		aCoder.encode(gloves, forKey: kDMFirstPurchaseTimeGlovesKey)
		aCoder.encode(handOfMidas, forKey: kDMFirstPurchaseTimeHandOfMidasKey)
		aCoder.encode(armlet, forKey: kDMFirstPurchaseTimeArmletKey)
		aCoder.encode(moonShard, forKey: kDMFirstPurchaseTimeMoonShardKey)
		aCoder.encode(courier, forKey: kDMFirstPurchaseTimeCourierKey)
		aCoder.encode(shadowAmulet, forKey: kDMFirstPurchaseTimeShadowAmuletKey)
		aCoder.encode(powerTreads, forKey: kDMFirstPurchaseTimePowerTreadsKey)
		aCoder.encode(pipe, forKey: kDMFirstPurchaseTimePipeKey)
		aCoder.encode(bootsOfElves, forKey: kDMFirstPurchaseTimeBootsOfElvesKey)
		aCoder.encode(invisSword, forKey: kDMFirstPurchaseTimeInvisSwordKey)
		aCoder.encode(gauntlets, forKey: kDMFirstPurchaseTimeGauntletsKey)
		aCoder.encode(talismanOfEvasion, forKey: kDMFirstPurchaseTimeTalismanOfEvasionKey)
		aCoder.encode(helmOfIronWill, forKey: kDMFirstPurchaseTimeHelmOfIronWillKey)
		aCoder.encode(voidStone, forKey: kDMFirstPurchaseTimeVoidStoneKey)
		aCoder.encode(silverEdge, forKey: kDMFirstPurchaseTimeSilverEdgeKey)
		aCoder.encode(reaver, forKey: kDMFirstPurchaseTimeReaverKey)
		aCoder.encode(ringOfHealth, forKey: kDMFirstPurchaseTimeRingOfHealthKey)
		aCoder.encode(hoodOfDefiance, forKey: kDMFirstPurchaseTimeHoodOfDefianceKey)
		aCoder.encode(manta, forKey: kDMFirstPurchaseTimeMantaKey)
		aCoder.encode(pointBooster, forKey: kDMFirstPurchaseTimePointBoosterKey)
		aCoder.encode(vanguard, forKey: kDMFirstPurchaseTimeVanguardKey)
		aCoder.encode(bladeOfAlacrity, forKey: kDMFirstPurchaseTimeBladeOfAlacrityKey)
		aCoder.encode(staffOfWizardry, forKey: kDMFirstPurchaseTimeStaffOfWizardryKey)
		aCoder.encode(infusedRaindrop, forKey: kDMFirstPurchaseTimeInfusedRaindropKey)
		aCoder.encode(wardObserver, forKey: kDMFirstPurchaseTimeWardObserverKey)
		aCoder.encode(travelBoots, forKey: kDMFirstPurchaseTimeTravelBootsKey)
		aCoder.encode(blackKingBar, forKey: kDMFirstPurchaseTimeBlackKingBarKey)
		aCoder.encode(phaseBoots, forKey: kDMFirstPurchaseTimePhaseBootsKey)
		aCoder.encode(faerieFire, forKey: kDMFirstPurchaseTimeFaerieFireKey)
		aCoder.encode(vladmir, forKey: kDMFirstPurchaseTimeVladmirKey)
		aCoder.encode(sobiMask, forKey: kDMFirstPurchaseTimeSobiMaskKey)
		aCoder.encode(windLace, forKey: kDMFirstPurchaseTimeWindLaceKey)
		aCoder.encode(greaterCrit, forKey: kDMFirstPurchaseTimeGreaterCritKey)
		aCoder.encode(solarCrest, forKey: kDMFirstPurchaseTimeSolarCrestKey)
		aCoder.encode(flyingCourier, forKey: kDMFirstPurchaseTimeFlyingCourierKey)
		aCoder.encode(mithrilHammer, forKey: kDMFirstPurchaseTimeMithrilHammerKey)
		aCoder.encode(yasha, forKey: kDMFirstPurchaseTimeYashaKey)
		aCoder.encode(wraithBand, forKey: kDMFirstPurchaseTimeWraithBandKey)
		aCoder.encode(heart, forKey: kDMFirstPurchaseTimeHeartKey)
		aCoder.encode(clarity, forKey: kDMFirstPurchaseTimeClarityKey)
		aCoder.encode(bloodthorn, forKey: kDMFirstPurchaseTimeBloodthornKey)
		aCoder.encode(travelBoots2, forKey: kDMFirstPurchaseTimeTravelBoots2Key)
		aCoder.encode(quarterstaff, forKey: kDMFirstPurchaseTimeQuarterstaffKey)
		aCoder.encode(oblivionStaff, forKey: kDMFirstPurchaseTimeOblivionStaffKey)
		aCoder.encode(magicWand, forKey: kDMFirstPurchaseTimeMagicWandKey)
		aCoder.encode(glimmerCape, forKey: kDMFirstPurchaseTimeGlimmerCapeKey)
		aCoder.encode(ringOfAquila, forKey: kDMFirstPurchaseTimeRingOfAquilaKey)
		aCoder.encode(slippers, forKey: kDMFirstPurchaseTimeSlippersKey)
		aCoder.encode(lesserCrit, forKey: kDMFirstPurchaseTimeLesserCritKey)
		aCoder.encode(javelin, forKey: kDMFirstPurchaseTimeJavelinKey)
		aCoder.encode(helmOfTheDominator, forKey: kDMFirstPurchaseTimeHelmOfTheDominatorKey)
		aCoder.encode(cloak, forKey: kDMFirstPurchaseTimeCloakKey)
		aCoder.encode(gem, forKey: kDMFirstPurchaseTimeGemKey)
		aCoder.encode(bracer, forKey: kDMFirstPurchaseTimeBracerKey)
		aCoder.encode(robe, forKey: kDMFirstPurchaseTimeRobeKey)
		aCoder.encode(bottle, forKey: kDMFirstPurchaseTimeBottleKey)
		aCoder.encode(chainmail, forKey: kDMFirstPurchaseTimeChainmailKey)

    }

}
