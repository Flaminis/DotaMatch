//
//  DMItemWin.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMItemWin: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMItemWinEnergyBoosterKey: String = "energy_booster"
	internal let kDMItemWinTangoKey: String = "tango"
	internal let kDMItemWinAetherLensKey: String = "aether_lens"
	internal let kDMItemWinEnchantedMangoKey: String = "enchanted_mango"
	internal let kDMItemWinRiverPainter5Key: String = "river_painter5"
	internal let kDMItemWinSkadiKey: String = "skadi"
	internal let kDMItemWinBfuryKey: String = "bfury"
	internal let kDMItemWinTranquilBootsKey: String = "tranquil_boots"
	internal let kDMItemWinMjollnirKey: String = "mjollnir"
	internal let kDMItemWinPersKey: String = "pers"
	internal let kDMItemWinClaymoreKey: String = "claymore"
	internal let kDMItemWinLifestealKey: String = "lifesteal"
	internal let kDMItemWinBlightStoneKey: String = "blight_stone"
	internal let kDMItemWinMonkeyKingBarKey: String = "monkey_king_bar"
	internal let kDMItemWinUltimateOrbKey: String = "ultimate_orb"
	internal let kDMItemWinFlaskKey: String = "flask"
	internal let kDMItemWinDesolatorKey: String = "desolator"
	internal let kDMItemWinStoutShieldKey: String = "stout_shield"
	internal let kDMItemWinOrchidKey: String = "orchid"
	internal let kDMItemWinAncientJanggoKey: String = "ancient_janggo"
	internal let kDMItemWinMagicStickKey: String = "magic_stick"
	internal let kDMItemWinPoorMansShieldKey: String = "poor_mans_shield"
	internal let kDMItemWinAssaultKey: String = "assault"
	internal let kDMItemWinBranchesKey: String = "branches"
	internal let kDMItemWinBladesOfAttackKey: String = "blades_of_attack"
	internal let kDMItemWinRingOfBasiliusKey: String = "ring_of_basilius"
	internal let kDMItemWinMaelstromKey: String = "maelstrom"
	internal let kDMItemWinBeltOfStrengthKey: String = "belt_of_strength"
	internal let kDMItemWinRingOfRegenKey: String = "ring_of_regen"
	internal let kDMItemWinCrimsonGuardKey: String = "crimson_guard"
	internal let kDMItemWinMedallionOfCourageKey: String = "medallion_of_courage"
	internal let kDMItemWinDemonEdgeKey: String = "demon_edge"
	internal let kDMItemWinUrnOfShadowsKey: String = "urn_of_shadows"
	internal let kDMItemWinOgreAxeKey: String = "ogre_axe"
	internal let kDMItemWinCircletKey: String = "circlet"
	internal let kDMItemWinBucklerKey: String = "buckler"
	internal let kDMItemWinTomeOfKnowledgeKey: String = "tome_of_knowledge"
	internal let kDMItemWinDustKey: String = "dust"
	internal let kDMItemWinUltimateScepterKey: String = "ultimate_scepter"
	internal let kDMItemWinVitalityBoosterKey: String = "vitality_booster"
	internal let kDMItemWinRingOfProtectionKey: String = "ring_of_protection"
	internal let kDMItemWinPlatemailKey: String = "platemail"
	internal let kDMItemWinSangeAndYashaKey: String = "sange_and_yasha"
	internal let kDMItemWinHyperstoneKey: String = "hyperstone"
	internal let kDMItemWinAbyssalBladeKey: String = "abyssal_blade"
	internal let kDMItemWinBasherKey: String = "basher"
	internal let kDMItemWinWardSentryKey: String = "ward_sentry"
	internal let kDMItemWinHeaddressKey: String = "headdress"
	internal let kDMItemWinBootsKey: String = "boots"
	internal let kDMItemWinSangeKey: String = "sange"
	internal let kDMItemWinTpscrollKey: String = "tpscroll"
	internal let kDMItemWinBroadswordKey: String = "broadsword"
	internal let kDMItemWinQuellingBladeKey: String = "quelling_blade"
	internal let kDMItemWinOrbOfVenomKey: String = "orb_of_venom"
	internal let kDMItemWinGlovesKey: String = "gloves"
	internal let kDMItemWinHandOfMidasKey: String = "hand_of_midas"
	internal let kDMItemWinArmletKey: String = "armlet"
	internal let kDMItemWinMoonShardKey: String = "moon_shard"
	internal let kDMItemWinCourierKey: String = "courier"
	internal let kDMItemWinShadowAmuletKey: String = "shadow_amulet"
	internal let kDMItemWinPowerTreadsKey: String = "power_treads"
	internal let kDMItemWinPipeKey: String = "pipe"
	internal let kDMItemWinBootsOfElvesKey: String = "boots_of_elves"
	internal let kDMItemWinInvisSwordKey: String = "invis_sword"
	internal let kDMItemWinGauntletsKey: String = "gauntlets"
	internal let kDMItemWinTalismanOfEvasionKey: String = "talisman_of_evasion"
	internal let kDMItemWinHelmOfIronWillKey: String = "helm_of_iron_will"
	internal let kDMItemWinVoidStoneKey: String = "void_stone"
	internal let kDMItemWinSilverEdgeKey: String = "silver_edge"
	internal let kDMItemWinReaverKey: String = "reaver"
	internal let kDMItemWinRingOfHealthKey: String = "ring_of_health"
	internal let kDMItemWinHoodOfDefianceKey: String = "hood_of_defiance"
	internal let kDMItemWinMantaKey: String = "manta"
	internal let kDMItemWinPointBoosterKey: String = "point_booster"
	internal let kDMItemWinVanguardKey: String = "vanguard"
	internal let kDMItemWinBladeOfAlacrityKey: String = "blade_of_alacrity"
	internal let kDMItemWinStaffOfWizardryKey: String = "staff_of_wizardry"
	internal let kDMItemWinInfusedRaindropKey: String = "infused_raindrop"
	internal let kDMItemWinWardObserverKey: String = "ward_observer"
	internal let kDMItemWinTravelBootsKey: String = "travel_boots"
	internal let kDMItemWinBlackKingBarKey: String = "black_king_bar"
	internal let kDMItemWinPhaseBootsKey: String = "phase_boots"
	internal let kDMItemWinFaerieFireKey: String = "faerie_fire"
	internal let kDMItemWinVladmirKey: String = "vladmir"
	internal let kDMItemWinSobiMaskKey: String = "sobi_mask"
	internal let kDMItemWinWindLaceKey: String = "wind_lace"
	internal let kDMItemWinGreaterCritKey: String = "greater_crit"
	internal let kDMItemWinSolarCrestKey: String = "solar_crest"
	internal let kDMItemWinFlyingCourierKey: String = "flying_courier"
	internal let kDMItemWinMithrilHammerKey: String = "mithril_hammer"
	internal let kDMItemWinYashaKey: String = "yasha"
	internal let kDMItemWinWraithBandKey: String = "wraith_band"
	internal let kDMItemWinHeartKey: String = "heart"
	internal let kDMItemWinClarityKey: String = "clarity"
	internal let kDMItemWinBloodthornKey: String = "bloodthorn"
	internal let kDMItemWinTravelBoots2Key: String = "travel_boots_2"
	internal let kDMItemWinQuarterstaffKey: String = "quarterstaff"
	internal let kDMItemWinOblivionStaffKey: String = "oblivion_staff"
	internal let kDMItemWinMagicWandKey: String = "magic_wand"
	internal let kDMItemWinGlimmerCapeKey: String = "glimmer_cape"
	internal let kDMItemWinRingOfAquilaKey: String = "ring_of_aquila"
	internal let kDMItemWinSlippersKey: String = "slippers"
	internal let kDMItemWinLesserCritKey: String = "lesser_crit"
	internal let kDMItemWinJavelinKey: String = "javelin"
	internal let kDMItemWinHelmOfTheDominatorKey: String = "helm_of_the_dominator"
	internal let kDMItemWinCloakKey: String = "cloak"
	internal let kDMItemWinGemKey: String = "gem"
	internal let kDMItemWinBracerKey: String = "bracer"
	internal let kDMItemWinRobeKey: String = "robe"
	internal let kDMItemWinBottleKey: String = "bottle"
	internal let kDMItemWinChainmailKey: String = "chainmail"


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
		energyBooster = json[kDMItemWinEnergyBoosterKey].int
		tango = json[kDMItemWinTangoKey].int
		aetherLens = json[kDMItemWinAetherLensKey].int
		enchantedMango = json[kDMItemWinEnchantedMangoKey].int
		riverPainter5 = json[kDMItemWinRiverPainter5Key].int
		skadi = json[kDMItemWinSkadiKey].int
		bfury = json[kDMItemWinBfuryKey].int
		tranquilBoots = json[kDMItemWinTranquilBootsKey].int
		mjollnir = json[kDMItemWinMjollnirKey].int
		pers = json[kDMItemWinPersKey].int
		claymore = json[kDMItemWinClaymoreKey].int
		lifesteal = json[kDMItemWinLifestealKey].int
		blightStone = json[kDMItemWinBlightStoneKey].int
		monkeyKingBar = json[kDMItemWinMonkeyKingBarKey].int
		ultimateOrb = json[kDMItemWinUltimateOrbKey].int
		flask = json[kDMItemWinFlaskKey].int
		desolator = json[kDMItemWinDesolatorKey].int
		stoutShield = json[kDMItemWinStoutShieldKey].int
		orchid = json[kDMItemWinOrchidKey].int
		ancientJanggo = json[kDMItemWinAncientJanggoKey].int
		magicStick = json[kDMItemWinMagicStickKey].int
		poorMansShield = json[kDMItemWinPoorMansShieldKey].int
		assault = json[kDMItemWinAssaultKey].int
		branches = json[kDMItemWinBranchesKey].int
		bladesOfAttack = json[kDMItemWinBladesOfAttackKey].int
		ringOfBasilius = json[kDMItemWinRingOfBasiliusKey].int
		maelstrom = json[kDMItemWinMaelstromKey].int
		beltOfStrength = json[kDMItemWinBeltOfStrengthKey].int
		ringOfRegen = json[kDMItemWinRingOfRegenKey].int
		crimsonGuard = json[kDMItemWinCrimsonGuardKey].int
		medallionOfCourage = json[kDMItemWinMedallionOfCourageKey].int
		demonEdge = json[kDMItemWinDemonEdgeKey].int
		urnOfShadows = json[kDMItemWinUrnOfShadowsKey].int
		ogreAxe = json[kDMItemWinOgreAxeKey].int
		circlet = json[kDMItemWinCircletKey].int
		buckler = json[kDMItemWinBucklerKey].int
		tomeOfKnowledge = json[kDMItemWinTomeOfKnowledgeKey].int
		dust = json[kDMItemWinDustKey].int
		ultimateScepter = json[kDMItemWinUltimateScepterKey].int
		vitalityBooster = json[kDMItemWinVitalityBoosterKey].int
		ringOfProtection = json[kDMItemWinRingOfProtectionKey].int
		platemail = json[kDMItemWinPlatemailKey].int
		sangeAndYasha = json[kDMItemWinSangeAndYashaKey].int
		hyperstone = json[kDMItemWinHyperstoneKey].int
		abyssalBlade = json[kDMItemWinAbyssalBladeKey].int
		basher = json[kDMItemWinBasherKey].int
		wardSentry = json[kDMItemWinWardSentryKey].int
		headdress = json[kDMItemWinHeaddressKey].int
		boots = json[kDMItemWinBootsKey].int
		sange = json[kDMItemWinSangeKey].int
		tpscroll = json[kDMItemWinTpscrollKey].int
		broadsword = json[kDMItemWinBroadswordKey].int
		quellingBlade = json[kDMItemWinQuellingBladeKey].int
		orbOfVenom = json[kDMItemWinOrbOfVenomKey].int
		gloves = json[kDMItemWinGlovesKey].int
		handOfMidas = json[kDMItemWinHandOfMidasKey].int
		armlet = json[kDMItemWinArmletKey].int
		moonShard = json[kDMItemWinMoonShardKey].int
		courier = json[kDMItemWinCourierKey].int
		shadowAmulet = json[kDMItemWinShadowAmuletKey].int
		powerTreads = json[kDMItemWinPowerTreadsKey].int
		pipe = json[kDMItemWinPipeKey].int
		bootsOfElves = json[kDMItemWinBootsOfElvesKey].int
		invisSword = json[kDMItemWinInvisSwordKey].int
		gauntlets = json[kDMItemWinGauntletsKey].int
		talismanOfEvasion = json[kDMItemWinTalismanOfEvasionKey].int
		helmOfIronWill = json[kDMItemWinHelmOfIronWillKey].int
		voidStone = json[kDMItemWinVoidStoneKey].int
		silverEdge = json[kDMItemWinSilverEdgeKey].int
		reaver = json[kDMItemWinReaverKey].int
		ringOfHealth = json[kDMItemWinRingOfHealthKey].int
		hoodOfDefiance = json[kDMItemWinHoodOfDefianceKey].int
		manta = json[kDMItemWinMantaKey].int
		pointBooster = json[kDMItemWinPointBoosterKey].int
		vanguard = json[kDMItemWinVanguardKey].int
		bladeOfAlacrity = json[kDMItemWinBladeOfAlacrityKey].int
		staffOfWizardry = json[kDMItemWinStaffOfWizardryKey].int
		infusedRaindrop = json[kDMItemWinInfusedRaindropKey].int
		wardObserver = json[kDMItemWinWardObserverKey].int
		travelBoots = json[kDMItemWinTravelBootsKey].int
		blackKingBar = json[kDMItemWinBlackKingBarKey].int
		phaseBoots = json[kDMItemWinPhaseBootsKey].int
		faerieFire = json[kDMItemWinFaerieFireKey].int
		vladmir = json[kDMItemWinVladmirKey].int
		sobiMask = json[kDMItemWinSobiMaskKey].int
		windLace = json[kDMItemWinWindLaceKey].int
		greaterCrit = json[kDMItemWinGreaterCritKey].int
		solarCrest = json[kDMItemWinSolarCrestKey].int
		flyingCourier = json[kDMItemWinFlyingCourierKey].int
		mithrilHammer = json[kDMItemWinMithrilHammerKey].int
		yasha = json[kDMItemWinYashaKey].int
		wraithBand = json[kDMItemWinWraithBandKey].int
		heart = json[kDMItemWinHeartKey].int
		clarity = json[kDMItemWinClarityKey].int
		bloodthorn = json[kDMItemWinBloodthornKey].int
		travelBoots2 = json[kDMItemWinTravelBoots2Key].int
		quarterstaff = json[kDMItemWinQuarterstaffKey].int
		oblivionStaff = json[kDMItemWinOblivionStaffKey].int
		magicWand = json[kDMItemWinMagicWandKey].int
		glimmerCape = json[kDMItemWinGlimmerCapeKey].int
		ringOfAquila = json[kDMItemWinRingOfAquilaKey].int
		slippers = json[kDMItemWinSlippersKey].int
		lesserCrit = json[kDMItemWinLesserCritKey].int
		javelin = json[kDMItemWinJavelinKey].int
		helmOfTheDominator = json[kDMItemWinHelmOfTheDominatorKey].int
		cloak = json[kDMItemWinCloakKey].int
		gem = json[kDMItemWinGemKey].int
		bracer = json[kDMItemWinBracerKey].int
		robe = json[kDMItemWinRobeKey].int
		bottle = json[kDMItemWinBottleKey].int
		chainmail = json[kDMItemWinChainmailKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if energyBooster != nil {
			dictionary.updateValue(energyBooster! as AnyObject, forKey: kDMItemWinEnergyBoosterKey)
		}
		if tango != nil {
			dictionary.updateValue(tango! as AnyObject, forKey: kDMItemWinTangoKey)
		}
		if aetherLens != nil {
			dictionary.updateValue(aetherLens! as AnyObject, forKey: kDMItemWinAetherLensKey)
		}
		if enchantedMango != nil {
			dictionary.updateValue(enchantedMango! as AnyObject, forKey: kDMItemWinEnchantedMangoKey)
		}
		if riverPainter5 != nil {
			dictionary.updateValue(riverPainter5! as AnyObject, forKey: kDMItemWinRiverPainter5Key)
		}
		if skadi != nil {
			dictionary.updateValue(skadi! as AnyObject, forKey: kDMItemWinSkadiKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury! as AnyObject, forKey: kDMItemWinBfuryKey)
		}
		if tranquilBoots != nil {
			dictionary.updateValue(tranquilBoots! as AnyObject, forKey: kDMItemWinTranquilBootsKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir! as AnyObject, forKey: kDMItemWinMjollnirKey)
		}
		if pers != nil {
			dictionary.updateValue(pers! as AnyObject, forKey: kDMItemWinPersKey)
		}
		if claymore != nil {
			dictionary.updateValue(claymore! as AnyObject, forKey: kDMItemWinClaymoreKey)
		}
		if lifesteal != nil {
			dictionary.updateValue(lifesteal! as AnyObject, forKey: kDMItemWinLifestealKey)
		}
		if blightStone != nil {
			dictionary.updateValue(blightStone! as AnyObject, forKey: kDMItemWinBlightStoneKey)
		}
		if monkeyKingBar != nil {
			dictionary.updateValue(monkeyKingBar! as AnyObject, forKey: kDMItemWinMonkeyKingBarKey)
		}
		if ultimateOrb != nil {
			dictionary.updateValue(ultimateOrb! as AnyObject, forKey: kDMItemWinUltimateOrbKey)
		}
		if flask != nil {
			dictionary.updateValue(flask! as AnyObject, forKey: kDMItemWinFlaskKey)
		}
		if desolator != nil {
			dictionary.updateValue(desolator! as AnyObject, forKey: kDMItemWinDesolatorKey)
		}
		if stoutShield != nil {
			dictionary.updateValue(stoutShield! as AnyObject, forKey: kDMItemWinStoutShieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid! as AnyObject, forKey: kDMItemWinOrchidKey)
		}
		if ancientJanggo != nil {
			dictionary.updateValue(ancientJanggo! as AnyObject, forKey: kDMItemWinAncientJanggoKey)
		}
		if magicStick != nil {
			dictionary.updateValue(magicStick! as AnyObject, forKey: kDMItemWinMagicStickKey)
		}
		if poorMansShield != nil {
			dictionary.updateValue(poorMansShield! as AnyObject, forKey: kDMItemWinPoorMansShieldKey)
		}
		if assault != nil {
			dictionary.updateValue(assault! as AnyObject, forKey: kDMItemWinAssaultKey)
		}
		if branches != nil {
			dictionary.updateValue(branches! as AnyObject, forKey: kDMItemWinBranchesKey)
		}
		if bladesOfAttack != nil {
			dictionary.updateValue(bladesOfAttack! as AnyObject, forKey: kDMItemWinBladesOfAttackKey)
		}
		if ringOfBasilius != nil {
			dictionary.updateValue(ringOfBasilius! as AnyObject, forKey: kDMItemWinRingOfBasiliusKey)
		}
		if maelstrom != nil {
			dictionary.updateValue(maelstrom! as AnyObject, forKey: kDMItemWinMaelstromKey)
		}
		if beltOfStrength != nil {
			dictionary.updateValue(beltOfStrength! as AnyObject, forKey: kDMItemWinBeltOfStrengthKey)
		}
		if ringOfRegen != nil {
			dictionary.updateValue(ringOfRegen! as AnyObject, forKey: kDMItemWinRingOfRegenKey)
		}
		if crimsonGuard != nil {
			dictionary.updateValue(crimsonGuard! as AnyObject, forKey: kDMItemWinCrimsonGuardKey)
		}
		if medallionOfCourage != nil {
			dictionary.updateValue(medallionOfCourage! as AnyObject, forKey: kDMItemWinMedallionOfCourageKey)
		}
		if demonEdge != nil {
			dictionary.updateValue(demonEdge! as AnyObject, forKey: kDMItemWinDemonEdgeKey)
		}
		if urnOfShadows != nil {
			dictionary.updateValue(urnOfShadows! as AnyObject, forKey: kDMItemWinUrnOfShadowsKey)
		}
		if ogreAxe != nil {
			dictionary.updateValue(ogreAxe! as AnyObject, forKey: kDMItemWinOgreAxeKey)
		}
		if circlet != nil {
			dictionary.updateValue(circlet! as AnyObject, forKey: kDMItemWinCircletKey)
		}
		if buckler != nil {
			dictionary.updateValue(buckler! as AnyObject, forKey: kDMItemWinBucklerKey)
		}
		if tomeOfKnowledge != nil {
			dictionary.updateValue(tomeOfKnowledge! as AnyObject, forKey: kDMItemWinTomeOfKnowledgeKey)
		}
		if dust != nil {
			dictionary.updateValue(dust! as AnyObject, forKey: kDMItemWinDustKey)
		}
		if ultimateScepter != nil {
			dictionary.updateValue(ultimateScepter! as AnyObject, forKey: kDMItemWinUltimateScepterKey)
		}
		if vitalityBooster != nil {
			dictionary.updateValue(vitalityBooster! as AnyObject, forKey: kDMItemWinVitalityBoosterKey)
		}
		if ringOfProtection != nil {
			dictionary.updateValue(ringOfProtection! as AnyObject, forKey: kDMItemWinRingOfProtectionKey)
		}
		if platemail != nil {
			dictionary.updateValue(platemail! as AnyObject, forKey: kDMItemWinPlatemailKey)
		}
		if sangeAndYasha != nil {
			dictionary.updateValue(sangeAndYasha! as AnyObject, forKey: kDMItemWinSangeAndYashaKey)
		}
		if hyperstone != nil {
			dictionary.updateValue(hyperstone! as AnyObject, forKey: kDMItemWinHyperstoneKey)
		}
		if abyssalBlade != nil {
			dictionary.updateValue(abyssalBlade! as AnyObject, forKey: kDMItemWinAbyssalBladeKey)
		}
		if basher != nil {
			dictionary.updateValue(basher! as AnyObject, forKey: kDMItemWinBasherKey)
		}
		if wardSentry != nil {
			dictionary.updateValue(wardSentry! as AnyObject, forKey: kDMItemWinWardSentryKey)
		}
		if headdress != nil {
			dictionary.updateValue(headdress! as AnyObject, forKey: kDMItemWinHeaddressKey)
		}
		if boots != nil {
			dictionary.updateValue(boots! as AnyObject, forKey: kDMItemWinBootsKey)
		}
		if sange != nil {
			dictionary.updateValue(sange! as AnyObject, forKey: kDMItemWinSangeKey)
		}
		if tpscroll != nil {
			dictionary.updateValue(tpscroll! as AnyObject, forKey: kDMItemWinTpscrollKey)
		}
		if broadsword != nil {
			dictionary.updateValue(broadsword! as AnyObject, forKey: kDMItemWinBroadswordKey)
		}
		if quellingBlade != nil {
			dictionary.updateValue(quellingBlade! as AnyObject, forKey: kDMItemWinQuellingBladeKey)
		}
		if orbOfVenom != nil {
			dictionary.updateValue(orbOfVenom! as AnyObject, forKey: kDMItemWinOrbOfVenomKey)
		}
		if gloves != nil {
			dictionary.updateValue(gloves! as AnyObject, forKey: kDMItemWinGlovesKey)
		}
		if handOfMidas != nil {
			dictionary.updateValue(handOfMidas! as AnyObject, forKey: kDMItemWinHandOfMidasKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet! as AnyObject, forKey: kDMItemWinArmletKey)
		}
		if moonShard != nil {
			dictionary.updateValue(moonShard! as AnyObject, forKey: kDMItemWinMoonShardKey)
		}
		if courier != nil {
			dictionary.updateValue(courier! as AnyObject, forKey: kDMItemWinCourierKey)
		}
		if shadowAmulet != nil {
			dictionary.updateValue(shadowAmulet! as AnyObject, forKey: kDMItemWinShadowAmuletKey)
		}
		if powerTreads != nil {
			dictionary.updateValue(powerTreads! as AnyObject, forKey: kDMItemWinPowerTreadsKey)
		}
		if pipe != nil {
			dictionary.updateValue(pipe! as AnyObject, forKey: kDMItemWinPipeKey)
		}
		if bootsOfElves != nil {
			dictionary.updateValue(bootsOfElves! as AnyObject, forKey: kDMItemWinBootsOfElvesKey)
		}
		if invisSword != nil {
			dictionary.updateValue(invisSword! as AnyObject, forKey: kDMItemWinInvisSwordKey)
		}
		if gauntlets != nil {
			dictionary.updateValue(gauntlets! as AnyObject, forKey: kDMItemWinGauntletsKey)
		}
		if talismanOfEvasion != nil {
			dictionary.updateValue(talismanOfEvasion! as AnyObject, forKey: kDMItemWinTalismanOfEvasionKey)
		}
		if helmOfIronWill != nil {
			dictionary.updateValue(helmOfIronWill! as AnyObject, forKey: kDMItemWinHelmOfIronWillKey)
		}
		if voidStone != nil {
			dictionary.updateValue(voidStone! as AnyObject, forKey: kDMItemWinVoidStoneKey)
		}
		if silverEdge != nil {
			dictionary.updateValue(silverEdge! as AnyObject, forKey: kDMItemWinSilverEdgeKey)
		}
		if reaver != nil {
			dictionary.updateValue(reaver! as AnyObject, forKey: kDMItemWinReaverKey)
		}
		if ringOfHealth != nil {
			dictionary.updateValue(ringOfHealth! as AnyObject, forKey: kDMItemWinRingOfHealthKey)
		}
		if hoodOfDefiance != nil {
			dictionary.updateValue(hoodOfDefiance! as AnyObject, forKey: kDMItemWinHoodOfDefianceKey)
		}
		if manta != nil {
			dictionary.updateValue(manta! as AnyObject, forKey: kDMItemWinMantaKey)
		}
		if pointBooster != nil {
			dictionary.updateValue(pointBooster! as AnyObject, forKey: kDMItemWinPointBoosterKey)
		}
		if vanguard != nil {
			dictionary.updateValue(vanguard! as AnyObject, forKey: kDMItemWinVanguardKey)
		}
		if bladeOfAlacrity != nil {
			dictionary.updateValue(bladeOfAlacrity! as AnyObject, forKey: kDMItemWinBladeOfAlacrityKey)
		}
		if staffOfWizardry != nil {
			dictionary.updateValue(staffOfWizardry! as AnyObject, forKey: kDMItemWinStaffOfWizardryKey)
		}
		if infusedRaindrop != nil {
			dictionary.updateValue(infusedRaindrop! as AnyObject, forKey: kDMItemWinInfusedRaindropKey)
		}
		if wardObserver != nil {
			dictionary.updateValue(wardObserver! as AnyObject, forKey: kDMItemWinWardObserverKey)
		}
		if travelBoots != nil {
			dictionary.updateValue(travelBoots! as AnyObject, forKey: kDMItemWinTravelBootsKey)
		}
		if blackKingBar != nil {
			dictionary.updateValue(blackKingBar! as AnyObject, forKey: kDMItemWinBlackKingBarKey)
		}
		if phaseBoots != nil {
			dictionary.updateValue(phaseBoots! as AnyObject, forKey: kDMItemWinPhaseBootsKey)
		}
		if faerieFire != nil {
			dictionary.updateValue(faerieFire! as AnyObject, forKey: kDMItemWinFaerieFireKey)
		}
		if vladmir != nil {
			dictionary.updateValue(vladmir! as AnyObject, forKey: kDMItemWinVladmirKey)
		}
		if sobiMask != nil {
			dictionary.updateValue(sobiMask! as AnyObject, forKey: kDMItemWinSobiMaskKey)
		}
		if windLace != nil {
			dictionary.updateValue(windLace! as AnyObject, forKey: kDMItemWinWindLaceKey)
		}
		if greaterCrit != nil {
			dictionary.updateValue(greaterCrit! as AnyObject, forKey: kDMItemWinGreaterCritKey)
		}
		if solarCrest != nil {
			dictionary.updateValue(solarCrest! as AnyObject, forKey: kDMItemWinSolarCrestKey)
		}
		if flyingCourier != nil {
			dictionary.updateValue(flyingCourier! as AnyObject, forKey: kDMItemWinFlyingCourierKey)
		}
		if mithrilHammer != nil {
			dictionary.updateValue(mithrilHammer! as AnyObject, forKey: kDMItemWinMithrilHammerKey)
		}
		if yasha != nil {
			dictionary.updateValue(yasha! as AnyObject, forKey: kDMItemWinYashaKey)
		}
		if wraithBand != nil {
			dictionary.updateValue(wraithBand! as AnyObject, forKey: kDMItemWinWraithBandKey)
		}
		if heart != nil {
			dictionary.updateValue(heart! as AnyObject, forKey: kDMItemWinHeartKey)
		}
		if clarity != nil {
			dictionary.updateValue(clarity! as AnyObject, forKey: kDMItemWinClarityKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn! as AnyObject, forKey: kDMItemWinBloodthornKey)
		}
		if travelBoots2 != nil {
			dictionary.updateValue(travelBoots2! as AnyObject, forKey: kDMItemWinTravelBoots2Key)
		}
		if quarterstaff != nil {
			dictionary.updateValue(quarterstaff! as AnyObject, forKey: kDMItemWinQuarterstaffKey)
		}
		if oblivionStaff != nil {
			dictionary.updateValue(oblivionStaff! as AnyObject, forKey: kDMItemWinOblivionStaffKey)
		}
		if magicWand != nil {
			dictionary.updateValue(magicWand! as AnyObject, forKey: kDMItemWinMagicWandKey)
		}
		if glimmerCape != nil {
			dictionary.updateValue(glimmerCape! as AnyObject, forKey: kDMItemWinGlimmerCapeKey)
		}
		if ringOfAquila != nil {
			dictionary.updateValue(ringOfAquila! as AnyObject, forKey: kDMItemWinRingOfAquilaKey)
		}
		if slippers != nil {
			dictionary.updateValue(slippers! as AnyObject, forKey: kDMItemWinSlippersKey)
		}
		if lesserCrit != nil {
			dictionary.updateValue(lesserCrit! as AnyObject, forKey: kDMItemWinLesserCritKey)
		}
		if javelin != nil {
			dictionary.updateValue(javelin! as AnyObject, forKey: kDMItemWinJavelinKey)
		}
		if helmOfTheDominator != nil {
			dictionary.updateValue(helmOfTheDominator! as AnyObject, forKey: kDMItemWinHelmOfTheDominatorKey)
		}
		if cloak != nil {
			dictionary.updateValue(cloak! as AnyObject, forKey: kDMItemWinCloakKey)
		}
		if gem != nil {
			dictionary.updateValue(gem! as AnyObject, forKey: kDMItemWinGemKey)
		}
		if bracer != nil {
			dictionary.updateValue(bracer! as AnyObject, forKey: kDMItemWinBracerKey)
		}
		if robe != nil {
			dictionary.updateValue(robe! as AnyObject, forKey: kDMItemWinRobeKey)
		}
		if bottle != nil {
			dictionary.updateValue(bottle! as AnyObject, forKey: kDMItemWinBottleKey)
		}
		if chainmail != nil {
			dictionary.updateValue(chainmail! as AnyObject, forKey: kDMItemWinChainmailKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.energyBooster = aDecoder.decodeObject(forKey: kDMItemWinEnergyBoosterKey) as? Int
		self.tango = aDecoder.decodeObject(forKey: kDMItemWinTangoKey) as? Int
		self.aetherLens = aDecoder.decodeObject(forKey: kDMItemWinAetherLensKey) as? Int
		self.enchantedMango = aDecoder.decodeObject(forKey: kDMItemWinEnchantedMangoKey) as? Int
		self.riverPainter5 = aDecoder.decodeObject(forKey: kDMItemWinRiverPainter5Key) as? Int
		self.skadi = aDecoder.decodeObject(forKey: kDMItemWinSkadiKey) as? Int
		self.bfury = aDecoder.decodeObject(forKey: kDMItemWinBfuryKey) as? Int
		self.tranquilBoots = aDecoder.decodeObject(forKey: kDMItemWinTranquilBootsKey) as? Int
		self.mjollnir = aDecoder.decodeObject(forKey: kDMItemWinMjollnirKey) as? Int
		self.pers = aDecoder.decodeObject(forKey: kDMItemWinPersKey) as? Int
		self.claymore = aDecoder.decodeObject(forKey: kDMItemWinClaymoreKey) as? Int
		self.lifesteal = aDecoder.decodeObject(forKey: kDMItemWinLifestealKey) as? Int
		self.blightStone = aDecoder.decodeObject(forKey: kDMItemWinBlightStoneKey) as? Int
		self.monkeyKingBar = aDecoder.decodeObject(forKey: kDMItemWinMonkeyKingBarKey) as? Int
		self.ultimateOrb = aDecoder.decodeObject(forKey: kDMItemWinUltimateOrbKey) as? Int
		self.flask = aDecoder.decodeObject(forKey: kDMItemWinFlaskKey) as? Int
		self.desolator = aDecoder.decodeObject(forKey: kDMItemWinDesolatorKey) as? Int
		self.stoutShield = aDecoder.decodeObject(forKey: kDMItemWinStoutShieldKey) as? Int
		self.orchid = aDecoder.decodeObject(forKey: kDMItemWinOrchidKey) as? Int
		self.ancientJanggo = aDecoder.decodeObject(forKey: kDMItemWinAncientJanggoKey) as? Int
		self.magicStick = aDecoder.decodeObject(forKey: kDMItemWinMagicStickKey) as? Int
		self.poorMansShield = aDecoder.decodeObject(forKey: kDMItemWinPoorMansShieldKey) as? Int
		self.assault = aDecoder.decodeObject(forKey: kDMItemWinAssaultKey) as? Int
		self.branches = aDecoder.decodeObject(forKey: kDMItemWinBranchesKey) as? Int
		self.bladesOfAttack = aDecoder.decodeObject(forKey: kDMItemWinBladesOfAttackKey) as? Int
		self.ringOfBasilius = aDecoder.decodeObject(forKey: kDMItemWinRingOfBasiliusKey) as? Int
		self.maelstrom = aDecoder.decodeObject(forKey: kDMItemWinMaelstromKey) as? Int
		self.beltOfStrength = aDecoder.decodeObject(forKey: kDMItemWinBeltOfStrengthKey) as? Int
		self.ringOfRegen = aDecoder.decodeObject(forKey: kDMItemWinRingOfRegenKey) as? Int
		self.crimsonGuard = aDecoder.decodeObject(forKey: kDMItemWinCrimsonGuardKey) as? Int
		self.medallionOfCourage = aDecoder.decodeObject(forKey: kDMItemWinMedallionOfCourageKey) as? Int
		self.demonEdge = aDecoder.decodeObject(forKey: kDMItemWinDemonEdgeKey) as? Int
		self.urnOfShadows = aDecoder.decodeObject(forKey: kDMItemWinUrnOfShadowsKey) as? Int
		self.ogreAxe = aDecoder.decodeObject(forKey: kDMItemWinOgreAxeKey) as? Int
		self.circlet = aDecoder.decodeObject(forKey: kDMItemWinCircletKey) as? Int
		self.buckler = aDecoder.decodeObject(forKey: kDMItemWinBucklerKey) as? Int
		self.tomeOfKnowledge = aDecoder.decodeObject(forKey: kDMItemWinTomeOfKnowledgeKey) as? Int
		self.dust = aDecoder.decodeObject(forKey: kDMItemWinDustKey) as? Int
		self.ultimateScepter = aDecoder.decodeObject(forKey: kDMItemWinUltimateScepterKey) as? Int
		self.vitalityBooster = aDecoder.decodeObject(forKey: kDMItemWinVitalityBoosterKey) as? Int
		self.ringOfProtection = aDecoder.decodeObject(forKey: kDMItemWinRingOfProtectionKey) as? Int
		self.platemail = aDecoder.decodeObject(forKey: kDMItemWinPlatemailKey) as? Int
		self.sangeAndYasha = aDecoder.decodeObject(forKey: kDMItemWinSangeAndYashaKey) as? Int
		self.hyperstone = aDecoder.decodeObject(forKey: kDMItemWinHyperstoneKey) as? Int
		self.abyssalBlade = aDecoder.decodeObject(forKey: kDMItemWinAbyssalBladeKey) as? Int
		self.basher = aDecoder.decodeObject(forKey: kDMItemWinBasherKey) as? Int
		self.wardSentry = aDecoder.decodeObject(forKey: kDMItemWinWardSentryKey) as? Int
		self.headdress = aDecoder.decodeObject(forKey: kDMItemWinHeaddressKey) as? Int
		self.boots = aDecoder.decodeObject(forKey: kDMItemWinBootsKey) as? Int
		self.sange = aDecoder.decodeObject(forKey: kDMItemWinSangeKey) as? Int
		self.tpscroll = aDecoder.decodeObject(forKey: kDMItemWinTpscrollKey) as? Int
		self.broadsword = aDecoder.decodeObject(forKey: kDMItemWinBroadswordKey) as? Int
		self.quellingBlade = aDecoder.decodeObject(forKey: kDMItemWinQuellingBladeKey) as? Int
		self.orbOfVenom = aDecoder.decodeObject(forKey: kDMItemWinOrbOfVenomKey) as? Int
		self.gloves = aDecoder.decodeObject(forKey: kDMItemWinGlovesKey) as? Int
		self.handOfMidas = aDecoder.decodeObject(forKey: kDMItemWinHandOfMidasKey) as? Int
		self.armlet = aDecoder.decodeObject(forKey: kDMItemWinArmletKey) as? Int
		self.moonShard = aDecoder.decodeObject(forKey: kDMItemWinMoonShardKey) as? Int
		self.courier = aDecoder.decodeObject(forKey: kDMItemWinCourierKey) as? Int
		self.shadowAmulet = aDecoder.decodeObject(forKey: kDMItemWinShadowAmuletKey) as? Int
		self.powerTreads = aDecoder.decodeObject(forKey: kDMItemWinPowerTreadsKey) as? Int
		self.pipe = aDecoder.decodeObject(forKey: kDMItemWinPipeKey) as? Int
		self.bootsOfElves = aDecoder.decodeObject(forKey: kDMItemWinBootsOfElvesKey) as? Int
		self.invisSword = aDecoder.decodeObject(forKey: kDMItemWinInvisSwordKey) as? Int
		self.gauntlets = aDecoder.decodeObject(forKey: kDMItemWinGauntletsKey) as? Int
		self.talismanOfEvasion = aDecoder.decodeObject(forKey: kDMItemWinTalismanOfEvasionKey) as? Int
		self.helmOfIronWill = aDecoder.decodeObject(forKey: kDMItemWinHelmOfIronWillKey) as? Int
		self.voidStone = aDecoder.decodeObject(forKey: kDMItemWinVoidStoneKey) as? Int
		self.silverEdge = aDecoder.decodeObject(forKey: kDMItemWinSilverEdgeKey) as? Int
		self.reaver = aDecoder.decodeObject(forKey: kDMItemWinReaverKey) as? Int
		self.ringOfHealth = aDecoder.decodeObject(forKey: kDMItemWinRingOfHealthKey) as? Int
		self.hoodOfDefiance = aDecoder.decodeObject(forKey: kDMItemWinHoodOfDefianceKey) as? Int
		self.manta = aDecoder.decodeObject(forKey: kDMItemWinMantaKey) as? Int
		self.pointBooster = aDecoder.decodeObject(forKey: kDMItemWinPointBoosterKey) as? Int
		self.vanguard = aDecoder.decodeObject(forKey: kDMItemWinVanguardKey) as? Int
		self.bladeOfAlacrity = aDecoder.decodeObject(forKey: kDMItemWinBladeOfAlacrityKey) as? Int
		self.staffOfWizardry = aDecoder.decodeObject(forKey: kDMItemWinStaffOfWizardryKey) as? Int
		self.infusedRaindrop = aDecoder.decodeObject(forKey: kDMItemWinInfusedRaindropKey) as? Int
		self.wardObserver = aDecoder.decodeObject(forKey: kDMItemWinWardObserverKey) as? Int
		self.travelBoots = aDecoder.decodeObject(forKey: kDMItemWinTravelBootsKey) as? Int
		self.blackKingBar = aDecoder.decodeObject(forKey: kDMItemWinBlackKingBarKey) as? Int
		self.phaseBoots = aDecoder.decodeObject(forKey: kDMItemWinPhaseBootsKey) as? Int
		self.faerieFire = aDecoder.decodeObject(forKey: kDMItemWinFaerieFireKey) as? Int
		self.vladmir = aDecoder.decodeObject(forKey: kDMItemWinVladmirKey) as? Int
		self.sobiMask = aDecoder.decodeObject(forKey: kDMItemWinSobiMaskKey) as? Int
		self.windLace = aDecoder.decodeObject(forKey: kDMItemWinWindLaceKey) as? Int
		self.greaterCrit = aDecoder.decodeObject(forKey: kDMItemWinGreaterCritKey) as? Int
		self.solarCrest = aDecoder.decodeObject(forKey: kDMItemWinSolarCrestKey) as? Int
		self.flyingCourier = aDecoder.decodeObject(forKey: kDMItemWinFlyingCourierKey) as? Int
		self.mithrilHammer = aDecoder.decodeObject(forKey: kDMItemWinMithrilHammerKey) as? Int
		self.yasha = aDecoder.decodeObject(forKey: kDMItemWinYashaKey) as? Int
		self.wraithBand = aDecoder.decodeObject(forKey: kDMItemWinWraithBandKey) as? Int
		self.heart = aDecoder.decodeObject(forKey: kDMItemWinHeartKey) as? Int
		self.clarity = aDecoder.decodeObject(forKey: kDMItemWinClarityKey) as? Int
		self.bloodthorn = aDecoder.decodeObject(forKey: kDMItemWinBloodthornKey) as? Int
		self.travelBoots2 = aDecoder.decodeObject(forKey: kDMItemWinTravelBoots2Key) as? Int
		self.quarterstaff = aDecoder.decodeObject(forKey: kDMItemWinQuarterstaffKey) as? Int
		self.oblivionStaff = aDecoder.decodeObject(forKey: kDMItemWinOblivionStaffKey) as? Int
		self.magicWand = aDecoder.decodeObject(forKey: kDMItemWinMagicWandKey) as? Int
		self.glimmerCape = aDecoder.decodeObject(forKey: kDMItemWinGlimmerCapeKey) as? Int
		self.ringOfAquila = aDecoder.decodeObject(forKey: kDMItemWinRingOfAquilaKey) as? Int
		self.slippers = aDecoder.decodeObject(forKey: kDMItemWinSlippersKey) as? Int
		self.lesserCrit = aDecoder.decodeObject(forKey: kDMItemWinLesserCritKey) as? Int
		self.javelin = aDecoder.decodeObject(forKey: kDMItemWinJavelinKey) as? Int
		self.helmOfTheDominator = aDecoder.decodeObject(forKey: kDMItemWinHelmOfTheDominatorKey) as? Int
		self.cloak = aDecoder.decodeObject(forKey: kDMItemWinCloakKey) as? Int
		self.gem = aDecoder.decodeObject(forKey: kDMItemWinGemKey) as? Int
		self.bracer = aDecoder.decodeObject(forKey: kDMItemWinBracerKey) as? Int
		self.robe = aDecoder.decodeObject(forKey: kDMItemWinRobeKey) as? Int
		self.bottle = aDecoder.decodeObject(forKey: kDMItemWinBottleKey) as? Int
		self.chainmail = aDecoder.decodeObject(forKey: kDMItemWinChainmailKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(energyBooster, forKey: kDMItemWinEnergyBoosterKey)
		aCoder.encode(tango, forKey: kDMItemWinTangoKey)
		aCoder.encode(aetherLens, forKey: kDMItemWinAetherLensKey)
		aCoder.encode(enchantedMango, forKey: kDMItemWinEnchantedMangoKey)
		aCoder.encode(riverPainter5, forKey: kDMItemWinRiverPainter5Key)
		aCoder.encode(skadi, forKey: kDMItemWinSkadiKey)
		aCoder.encode(bfury, forKey: kDMItemWinBfuryKey)
		aCoder.encode(tranquilBoots, forKey: kDMItemWinTranquilBootsKey)
		aCoder.encode(mjollnir, forKey: kDMItemWinMjollnirKey)
		aCoder.encode(pers, forKey: kDMItemWinPersKey)
		aCoder.encode(claymore, forKey: kDMItemWinClaymoreKey)
		aCoder.encode(lifesteal, forKey: kDMItemWinLifestealKey)
		aCoder.encode(blightStone, forKey: kDMItemWinBlightStoneKey)
		aCoder.encode(monkeyKingBar, forKey: kDMItemWinMonkeyKingBarKey)
		aCoder.encode(ultimateOrb, forKey: kDMItemWinUltimateOrbKey)
		aCoder.encode(flask, forKey: kDMItemWinFlaskKey)
		aCoder.encode(desolator, forKey: kDMItemWinDesolatorKey)
		aCoder.encode(stoutShield, forKey: kDMItemWinStoutShieldKey)
		aCoder.encode(orchid, forKey: kDMItemWinOrchidKey)
		aCoder.encode(ancientJanggo, forKey: kDMItemWinAncientJanggoKey)
		aCoder.encode(magicStick, forKey: kDMItemWinMagicStickKey)
		aCoder.encode(poorMansShield, forKey: kDMItemWinPoorMansShieldKey)
		aCoder.encode(assault, forKey: kDMItemWinAssaultKey)
		aCoder.encode(branches, forKey: kDMItemWinBranchesKey)
		aCoder.encode(bladesOfAttack, forKey: kDMItemWinBladesOfAttackKey)
		aCoder.encode(ringOfBasilius, forKey: kDMItemWinRingOfBasiliusKey)
		aCoder.encode(maelstrom, forKey: kDMItemWinMaelstromKey)
		aCoder.encode(beltOfStrength, forKey: kDMItemWinBeltOfStrengthKey)
		aCoder.encode(ringOfRegen, forKey: kDMItemWinRingOfRegenKey)
		aCoder.encode(crimsonGuard, forKey: kDMItemWinCrimsonGuardKey)
		aCoder.encode(medallionOfCourage, forKey: kDMItemWinMedallionOfCourageKey)
		aCoder.encode(demonEdge, forKey: kDMItemWinDemonEdgeKey)
		aCoder.encode(urnOfShadows, forKey: kDMItemWinUrnOfShadowsKey)
		aCoder.encode(ogreAxe, forKey: kDMItemWinOgreAxeKey)
		aCoder.encode(circlet, forKey: kDMItemWinCircletKey)
		aCoder.encode(buckler, forKey: kDMItemWinBucklerKey)
		aCoder.encode(tomeOfKnowledge, forKey: kDMItemWinTomeOfKnowledgeKey)
		aCoder.encode(dust, forKey: kDMItemWinDustKey)
		aCoder.encode(ultimateScepter, forKey: kDMItemWinUltimateScepterKey)
		aCoder.encode(vitalityBooster, forKey: kDMItemWinVitalityBoosterKey)
		aCoder.encode(ringOfProtection, forKey: kDMItemWinRingOfProtectionKey)
		aCoder.encode(platemail, forKey: kDMItemWinPlatemailKey)
		aCoder.encode(sangeAndYasha, forKey: kDMItemWinSangeAndYashaKey)
		aCoder.encode(hyperstone, forKey: kDMItemWinHyperstoneKey)
		aCoder.encode(abyssalBlade, forKey: kDMItemWinAbyssalBladeKey)
		aCoder.encode(basher, forKey: kDMItemWinBasherKey)
		aCoder.encode(wardSentry, forKey: kDMItemWinWardSentryKey)
		aCoder.encode(headdress, forKey: kDMItemWinHeaddressKey)
		aCoder.encode(boots, forKey: kDMItemWinBootsKey)
		aCoder.encode(sange, forKey: kDMItemWinSangeKey)
		aCoder.encode(tpscroll, forKey: kDMItemWinTpscrollKey)
		aCoder.encode(broadsword, forKey: kDMItemWinBroadswordKey)
		aCoder.encode(quellingBlade, forKey: kDMItemWinQuellingBladeKey)
		aCoder.encode(orbOfVenom, forKey: kDMItemWinOrbOfVenomKey)
		aCoder.encode(gloves, forKey: kDMItemWinGlovesKey)
		aCoder.encode(handOfMidas, forKey: kDMItemWinHandOfMidasKey)
		aCoder.encode(armlet, forKey: kDMItemWinArmletKey)
		aCoder.encode(moonShard, forKey: kDMItemWinMoonShardKey)
		aCoder.encode(courier, forKey: kDMItemWinCourierKey)
		aCoder.encode(shadowAmulet, forKey: kDMItemWinShadowAmuletKey)
		aCoder.encode(powerTreads, forKey: kDMItemWinPowerTreadsKey)
		aCoder.encode(pipe, forKey: kDMItemWinPipeKey)
		aCoder.encode(bootsOfElves, forKey: kDMItemWinBootsOfElvesKey)
		aCoder.encode(invisSword, forKey: kDMItemWinInvisSwordKey)
		aCoder.encode(gauntlets, forKey: kDMItemWinGauntletsKey)
		aCoder.encode(talismanOfEvasion, forKey: kDMItemWinTalismanOfEvasionKey)
		aCoder.encode(helmOfIronWill, forKey: kDMItemWinHelmOfIronWillKey)
		aCoder.encode(voidStone, forKey: kDMItemWinVoidStoneKey)
		aCoder.encode(silverEdge, forKey: kDMItemWinSilverEdgeKey)
		aCoder.encode(reaver, forKey: kDMItemWinReaverKey)
		aCoder.encode(ringOfHealth, forKey: kDMItemWinRingOfHealthKey)
		aCoder.encode(hoodOfDefiance, forKey: kDMItemWinHoodOfDefianceKey)
		aCoder.encode(manta, forKey: kDMItemWinMantaKey)
		aCoder.encode(pointBooster, forKey: kDMItemWinPointBoosterKey)
		aCoder.encode(vanguard, forKey: kDMItemWinVanguardKey)
		aCoder.encode(bladeOfAlacrity, forKey: kDMItemWinBladeOfAlacrityKey)
		aCoder.encode(staffOfWizardry, forKey: kDMItemWinStaffOfWizardryKey)
		aCoder.encode(infusedRaindrop, forKey: kDMItemWinInfusedRaindropKey)
		aCoder.encode(wardObserver, forKey: kDMItemWinWardObserverKey)
		aCoder.encode(travelBoots, forKey: kDMItemWinTravelBootsKey)
		aCoder.encode(blackKingBar, forKey: kDMItemWinBlackKingBarKey)
		aCoder.encode(phaseBoots, forKey: kDMItemWinPhaseBootsKey)
		aCoder.encode(faerieFire, forKey: kDMItemWinFaerieFireKey)
		aCoder.encode(vladmir, forKey: kDMItemWinVladmirKey)
		aCoder.encode(sobiMask, forKey: kDMItemWinSobiMaskKey)
		aCoder.encode(windLace, forKey: kDMItemWinWindLaceKey)
		aCoder.encode(greaterCrit, forKey: kDMItemWinGreaterCritKey)
		aCoder.encode(solarCrest, forKey: kDMItemWinSolarCrestKey)
		aCoder.encode(flyingCourier, forKey: kDMItemWinFlyingCourierKey)
		aCoder.encode(mithrilHammer, forKey: kDMItemWinMithrilHammerKey)
		aCoder.encode(yasha, forKey: kDMItemWinYashaKey)
		aCoder.encode(wraithBand, forKey: kDMItemWinWraithBandKey)
		aCoder.encode(heart, forKey: kDMItemWinHeartKey)
		aCoder.encode(clarity, forKey: kDMItemWinClarityKey)
		aCoder.encode(bloodthorn, forKey: kDMItemWinBloodthornKey)
		aCoder.encode(travelBoots2, forKey: kDMItemWinTravelBoots2Key)
		aCoder.encode(quarterstaff, forKey: kDMItemWinQuarterstaffKey)
		aCoder.encode(oblivionStaff, forKey: kDMItemWinOblivionStaffKey)
		aCoder.encode(magicWand, forKey: kDMItemWinMagicWandKey)
		aCoder.encode(glimmerCape, forKey: kDMItemWinGlimmerCapeKey)
		aCoder.encode(ringOfAquila, forKey: kDMItemWinRingOfAquilaKey)
		aCoder.encode(slippers, forKey: kDMItemWinSlippersKey)
		aCoder.encode(lesserCrit, forKey: kDMItemWinLesserCritKey)
		aCoder.encode(javelin, forKey: kDMItemWinJavelinKey)
		aCoder.encode(helmOfTheDominator, forKey: kDMItemWinHelmOfTheDominatorKey)
		aCoder.encode(cloak, forKey: kDMItemWinCloakKey)
		aCoder.encode(gem, forKey: kDMItemWinGemKey)
		aCoder.encode(bracer, forKey: kDMItemWinBracerKey)
		aCoder.encode(robe, forKey: kDMItemWinRobeKey)
		aCoder.encode(bottle, forKey: kDMItemWinBottleKey)
		aCoder.encode(chainmail, forKey: kDMItemWinChainmailKey)

    }

}
