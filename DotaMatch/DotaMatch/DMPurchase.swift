//
//  DMPurchase.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMPurchase: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMPurchaseEnergyBoosterKey: String = "energy_booster"
	internal let kDMPurchaseTangoKey: String = "tango"
	internal let kDMPurchaseRecipePipeKey: String = "recipe_pipe"
	internal let kDMPurchaseRecipeAncientJanggoKey: String = "recipe_ancient_janggo"
	internal let kDMPurchaseAetherLensKey: String = "aether_lens"
	internal let kDMPurchaseEnchantedMangoKey: String = "enchanted_mango"
	internal let kDMPurchaseRiverPainter5Key: String = "river_painter5"
	internal let kDMPurchaseRecipeVladmirKey: String = "recipe_vladmir"
	internal let kDMPurchaseRecipeYashaKey: String = "recipe_yasha"
	internal let kDMPurchaseRecipeHeartKey: String = "recipe_heart"
	internal let kDMPurchaseRecipeCrimsonGuardKey: String = "recipe_crimson_guard"
	internal let kDMPurchaseSkadiKey: String = "skadi"
	internal let kDMPurchaseBfuryKey: String = "bfury"
	internal let kDMPurchaseTranquilBootsKey: String = "tranquil_boots"
	internal let kDMPurchaseMjollnirKey: String = "mjollnir"
	internal let kDMPurchasePersKey: String = "pers"
	internal let kDMPurchaseClaymoreKey: String = "claymore"
	internal let kDMPurchaseLifestealKey: String = "lifesteal"
	internal let kDMPurchaseBlightStoneKey: String = "blight_stone"
	internal let kDMPurchaseMonkeyKingBarKey: String = "monkey_king_bar"
	internal let kDMPurchaseUltimateOrbKey: String = "ultimate_orb"
	internal let kDMPurchaseFlaskKey: String = "flask"
	internal let kDMPurchaseDesolatorKey: String = "desolator"
	internal let kDMPurchaseStoutShieldKey: String = "stout_shield"
	internal let kDMPurchaseOrchidKey: String = "orchid"
	internal let kDMPurchaseAncientJanggoKey: String = "ancient_janggo"
	internal let kDMPurchaseMagicStickKey: String = "magic_stick"
	internal let kDMPurchasePoorMansShieldKey: String = "poor_mans_shield"
	internal let kDMPurchaseAssaultKey: String = "assault"
	internal let kDMPurchaseBranchesKey: String = "branches"
	internal let kDMPurchaseBladesOfAttackKey: String = "blades_of_attack"
	internal let kDMPurchaseRingOfBasiliusKey: String = "ring_of_basilius"
	internal let kDMPurchaseMaelstromKey: String = "maelstrom"
	internal let kDMPurchaseBeltOfStrengthKey: String = "belt_of_strength"
	internal let kDMPurchaseRecipeTravelBootsKey: String = "recipe_travel_boots"
	internal let kDMPurchaseRecipeBucklerKey: String = "recipe_buckler"
	internal let kDMPurchaseRingOfRegenKey: String = "ring_of_regen"
	internal let kDMPurchaseCrimsonGuardKey: String = "crimson_guard"
	internal let kDMPurchaseMedallionOfCourageKey: String = "medallion_of_courage"
	internal let kDMPurchaseDemonEdgeKey: String = "demon_edge"
	internal let kDMPurchaseUrnOfShadowsKey: String = "urn_of_shadows"
	internal let kDMPurchaseRecipeBasherKey: String = "recipe_basher"
	internal let kDMPurchaseOgreAxeKey: String = "ogre_axe"
	internal let kDMPurchaseRecipeSilverEdgeKey: String = "recipe_silver_edge"
	internal let kDMPurchaseRecipeGreaterCritKey: String = "recipe_greater_crit"
	internal let kDMPurchaseCircletKey: String = "circlet"
	internal let kDMPurchaseBucklerKey: String = "buckler"
	internal let kDMPurchaseTomeOfKnowledgeKey: String = "tome_of_knowledge"
	internal let kDMPurchaseDustKey: String = "dust"
	internal let kDMPurchaseRecipeAetherLensKey: String = "recipe_aether_lens"
	internal let kDMPurchaseUltimateScepterKey: String = "ultimate_scepter"
	internal let kDMPurchaseVitalityBoosterKey: String = "vitality_booster"
	internal let kDMPurchaseRingOfProtectionKey: String = "ring_of_protection"
	internal let kDMPurchasePlatemailKey: String = "platemail"
	internal let kDMPurchaseRecipeWraithBandKey: String = "recipe_wraith_band"
	internal let kDMPurchaseSangeAndYashaKey: String = "sange_and_yasha"
	internal let kDMPurchaseHyperstoneKey: String = "hyperstone"
	internal let kDMPurchaseBasherKey: String = "basher"
	internal let kDMPurchaseWardSentryKey: String = "ward_sentry"
	internal let kDMPurchaseHeaddressKey: String = "headdress"
	internal let kDMPurchaseBootsKey: String = "boots"
	internal let kDMPurchaseSangeKey: String = "sange"
	internal let kDMPurchaseGlovesKey: String = "gloves"
	internal let kDMPurchaseTpscrollKey: String = "tpscroll"
	internal let kDMPurchaseMoonShardKey: String = "moon_shard"
	internal let kDMPurchaseBroadswordKey: String = "broadsword"
	internal let kDMPurchaseQuellingBladeKey: String = "quelling_blade"
	internal let kDMPurchaseAbyssalBladeKey: String = "abyssal_blade"
	internal let kDMPurchaseArmletKey: String = "armlet"
	internal let kDMPurchaseHandOfMidasKey: String = "hand_of_midas"
	internal let kDMPurchaseOrbOfVenomKey: String = "orb_of_venom"
	internal let kDMPurchaseCourierKey: String = "courier"
	internal let kDMPurchaseShadowAmuletKey: String = "shadow_amulet"
	internal let kDMPurchasePowerTreadsKey: String = "power_treads"
	internal let kDMPurchasePipeKey: String = "pipe"
	internal let kDMPurchaseWardDispenserKey: String = "ward_dispenser"
	internal let kDMPurchaseBootsOfElvesKey: String = "boots_of_elves"
	internal let kDMPurchaseInvisSwordKey: String = "invis_sword"
	internal let kDMPurchaseGauntletsKey: String = "gauntlets"
	internal let kDMPurchaseRecipeMantaKey: String = "recipe_manta"
	internal let kDMPurchaseHelmOfIronWillKey: String = "helm_of_iron_will"
	internal let kDMPurchaseTalismanOfEvasionKey: String = "talisman_of_evasion"
	internal let kDMPurchaseVoidStoneKey: String = "void_stone"
	internal let kDMPurchaseRecipeHandOfMidasKey: String = "recipe_hand_of_midas"
	internal let kDMPurchaseSilverEdgeKey: String = "silver_edge"
	internal let kDMPurchaseReaverKey: String = "reaver"
	internal let kDMPurchaseRingOfHealthKey: String = "ring_of_health"
	internal let kDMPurchasePointBoosterKey: String = "point_booster"
	internal let kDMPurchaseMantaKey: String = "manta"
	internal let kDMPurchaseHoodOfDefianceKey: String = "hood_of_defiance"
	internal let kDMPurchaseRecipeUrnOfShadowsKey: String = "recipe_urn_of_shadows"
	internal let kDMPurchaseRecipeHeaddressKey: String = "recipe_headdress"
	internal let kDMPurchaseVanguardKey: String = "vanguard"
	internal let kDMPurchaseRecipeArmletKey: String = "recipe_armlet"
	internal let kDMPurchaseBladeOfAlacrityKey: String = "blade_of_alacrity"
	internal let kDMPurchaseStaffOfWizardryKey: String = "staff_of_wizardry"
	internal let kDMPurchaseInfusedRaindropKey: String = "infused_raindrop"
	internal let kDMPurchaseRecipeAssaultKey: String = "recipe_assault"
	internal let kDMPurchaseRecipeBloodthornKey: String = "recipe_bloodthorn"
	internal let kDMPurchaseWardObserverKey: String = "ward_observer"
	internal let kDMPurchaseRecipeBlackKingBarKey: String = "recipe_black_king_bar"
	internal let kDMPurchaseTravelBootsKey: String = "travel_boots"
	internal let kDMPurchaseBlackKingBarKey: String = "black_king_bar"
	internal let kDMPurchasePhaseBootsKey: String = "phase_boots"
	internal let kDMPurchaseFaerieFireKey: String = "faerie_fire"
	internal let kDMPurchaseVladmirKey: String = "vladmir"
	internal let kDMPurchaseSobiMaskKey: String = "sobi_mask"
	internal let kDMPurchaseWindLaceKey: String = "wind_lace"
	internal let kDMPurchaseGreaterCritKey: String = "greater_crit"
	internal let kDMPurchaseSolarCrestKey: String = "solar_crest"
	internal let kDMPurchaseFlyingCourierKey: String = "flying_courier"
	internal let kDMPurchaseMithrilHammerKey: String = "mithril_hammer"
	internal let kDMPurchaseYashaKey: String = "yasha"
	internal let kDMPurchaseWraithBandKey: String = "wraith_band"
	internal let kDMPurchaseHeartKey: String = "heart"
	internal let kDMPurchaseClarityKey: String = "clarity"
	internal let kDMPurchaseBloodthornKey: String = "bloodthorn"
	internal let kDMPurchaseTravelBoots2Key: String = "travel_boots_2"
	internal let kDMPurchaseQuarterstaffKey: String = "quarterstaff"
	internal let kDMPurchaseRecipeMaelstromKey: String = "recipe_maelstrom"
	internal let kDMPurchaseOblivionStaffKey: String = "oblivion_staff"
	internal let kDMPurchaseMagicWandKey: String = "magic_wand"
	internal let kDMPurchaseRecipeBracerKey: String = "recipe_bracer"
	internal let kDMPurchaseGlimmerCapeKey: String = "glimmer_cape"
	internal let kDMPurchaseRingOfAquilaKey: String = "ring_of_aquila"
	internal let kDMPurchaseSlippersKey: String = "slippers"
	internal let kDMPurchaseLesserCritKey: String = "lesser_crit"
	internal let kDMPurchaseRecipeSangeKey: String = "recipe_sange"
	internal let kDMPurchaseJavelinKey: String = "javelin"
	internal let kDMPurchaseHelmOfTheDominatorKey: String = "helm_of_the_dominator"
	internal let kDMPurchaseCloakKey: String = "cloak"
	internal let kDMPurchaseRecipeAbyssalBladeKey: String = "recipe_abyssal_blade"
	internal let kDMPurchaseGemKey: String = "gem"
	internal let kDMPurchaseBracerKey: String = "bracer"
	internal let kDMPurchaseRobeKey: String = "robe"
	internal let kDMPurchaseRecipeOrchidKey: String = "recipe_orchid"
	internal let kDMPurchaseRecipeLesserCritKey: String = "recipe_lesser_crit"
	internal let kDMPurchaseBottleKey: String = "bottle"
	internal let kDMPurchaseChainmailKey: String = "chainmail"
	internal let kDMPurchaseRecipeMjollnirKey: String = "recipe_mjollnir"


    // MARK: Properties
	open var energyBooster: Int?
	open var tango: Int?
	open var recipePipe: Int?
	open var recipeAncientJanggo: Int?
	open var aetherLens: Int?
	open var enchantedMango: Int?
	open var riverPainter5: Int?
	open var recipeVladmir: Int?
	open var recipeYasha: Int?
	open var recipeHeart: Int?
	open var recipeCrimsonGuard: Int?
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
	open var recipeTravelBoots: Int?
	open var recipeBuckler: Int?
	open var ringOfRegen: Int?
	open var crimsonGuard: Int?
	open var medallionOfCourage: Int?
	open var demonEdge: Int?
	open var urnOfShadows: Int?
	open var recipeBasher: Int?
	open var ogreAxe: Int?
	open var recipeSilverEdge: Int?
	open var recipeGreaterCrit: Int?
	open var circlet: Int?
	open var buckler: Int?
	open var tomeOfKnowledge: Int?
	open var dust: Int?
	open var recipeAetherLens: Int?
	open var ultimateScepter: Int?
	open var vitalityBooster: Int?
	open var ringOfProtection: Int?
	open var platemail: Int?
	open var recipeWraithBand: Int?
	open var sangeAndYasha: Int?
	open var hyperstone: Int?
	open var basher: Int?
	open var wardSentry: Int?
	open var headdress: Int?
	open var boots: Int?
	open var sange: Int?
	open var gloves: Int?
	open var tpscroll: Int?
	open var moonShard: Int?
	open var broadsword: Int?
	open var quellingBlade: Int?
	open var abyssalBlade: Int?
	open var armlet: Int?
	open var handOfMidas: Int?
	open var orbOfVenom: Int?
	open var courier: Int?
	open var shadowAmulet: Int?
	open var powerTreads: Int?
	open var pipe: Int?
	open var wardDispenser: Int?
	open var bootsOfElves: Int?
	open var invisSword: Int?
	open var gauntlets: Int?
	open var recipeManta: Int?
	open var helmOfIronWill: Int?
	open var talismanOfEvasion: Int?
	open var voidStone: Int?
	open var recipeHandOfMidas: Int?
	open var silverEdge: Int?
	open var reaver: Int?
	open var ringOfHealth: Int?
	open var pointBooster: Int?
	open var manta: Int?
	open var hoodOfDefiance: Int?
	open var recipeUrnOfShadows: Int?
	open var recipeHeaddress: Int?
	open var vanguard: Int?
	open var recipeArmlet: Int?
	open var bladeOfAlacrity: Int?
	open var staffOfWizardry: Int?
	open var infusedRaindrop: Int?
	open var recipeAssault: Int?
	open var recipeBloodthorn: Int?
	open var wardObserver: Int?
	open var recipeBlackKingBar: Int?
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
	open var recipeMaelstrom: Int?
	open var oblivionStaff: Int?
	open var magicWand: Int?
	open var recipeBracer: Int?
	open var glimmerCape: Int?
	open var ringOfAquila: Int?
	open var slippers: Int?
	open var lesserCrit: Int?
	open var recipeSange: Int?
	open var javelin: Int?
	open var helmOfTheDominator: Int?
	open var cloak: Int?
	open var recipeAbyssalBlade: Int?
	open var gem: Int?
	open var bracer: Int?
	open var robe: Int?
	open var recipeOrchid: Int?
	open var recipeLesserCrit: Int?
	open var bottle: Int?
	open var chainmail: Int?
	open var recipeMjollnir: Int?


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
		energyBooster = json[kDMPurchaseEnergyBoosterKey].int
		tango = json[kDMPurchaseTangoKey].int
		recipePipe = json[kDMPurchaseRecipePipeKey].int
		recipeAncientJanggo = json[kDMPurchaseRecipeAncientJanggoKey].int
		aetherLens = json[kDMPurchaseAetherLensKey].int
		enchantedMango = json[kDMPurchaseEnchantedMangoKey].int
		riverPainter5 = json[kDMPurchaseRiverPainter5Key].int
		recipeVladmir = json[kDMPurchaseRecipeVladmirKey].int
		recipeYasha = json[kDMPurchaseRecipeYashaKey].int
		recipeHeart = json[kDMPurchaseRecipeHeartKey].int
		recipeCrimsonGuard = json[kDMPurchaseRecipeCrimsonGuardKey].int
		skadi = json[kDMPurchaseSkadiKey].int
		bfury = json[kDMPurchaseBfuryKey].int
		tranquilBoots = json[kDMPurchaseTranquilBootsKey].int
		mjollnir = json[kDMPurchaseMjollnirKey].int
		pers = json[kDMPurchasePersKey].int
		claymore = json[kDMPurchaseClaymoreKey].int
		lifesteal = json[kDMPurchaseLifestealKey].int
		blightStone = json[kDMPurchaseBlightStoneKey].int
		monkeyKingBar = json[kDMPurchaseMonkeyKingBarKey].int
		ultimateOrb = json[kDMPurchaseUltimateOrbKey].int
		flask = json[kDMPurchaseFlaskKey].int
		desolator = json[kDMPurchaseDesolatorKey].int
		stoutShield = json[kDMPurchaseStoutShieldKey].int
		orchid = json[kDMPurchaseOrchidKey].int
		ancientJanggo = json[kDMPurchaseAncientJanggoKey].int
		magicStick = json[kDMPurchaseMagicStickKey].int
		poorMansShield = json[kDMPurchasePoorMansShieldKey].int
		assault = json[kDMPurchaseAssaultKey].int
		branches = json[kDMPurchaseBranchesKey].int
		bladesOfAttack = json[kDMPurchaseBladesOfAttackKey].int
		ringOfBasilius = json[kDMPurchaseRingOfBasiliusKey].int
		maelstrom = json[kDMPurchaseMaelstromKey].int
		beltOfStrength = json[kDMPurchaseBeltOfStrengthKey].int
		recipeTravelBoots = json[kDMPurchaseRecipeTravelBootsKey].int
		recipeBuckler = json[kDMPurchaseRecipeBucklerKey].int
		ringOfRegen = json[kDMPurchaseRingOfRegenKey].int
		crimsonGuard = json[kDMPurchaseCrimsonGuardKey].int
		medallionOfCourage = json[kDMPurchaseMedallionOfCourageKey].int
		demonEdge = json[kDMPurchaseDemonEdgeKey].int
		urnOfShadows = json[kDMPurchaseUrnOfShadowsKey].int
		recipeBasher = json[kDMPurchaseRecipeBasherKey].int
		ogreAxe = json[kDMPurchaseOgreAxeKey].int
		recipeSilverEdge = json[kDMPurchaseRecipeSilverEdgeKey].int
		recipeGreaterCrit = json[kDMPurchaseRecipeGreaterCritKey].int
		circlet = json[kDMPurchaseCircletKey].int
		buckler = json[kDMPurchaseBucklerKey].int
		tomeOfKnowledge = json[kDMPurchaseTomeOfKnowledgeKey].int
		dust = json[kDMPurchaseDustKey].int
		recipeAetherLens = json[kDMPurchaseRecipeAetherLensKey].int
		ultimateScepter = json[kDMPurchaseUltimateScepterKey].int
		vitalityBooster = json[kDMPurchaseVitalityBoosterKey].int
		ringOfProtection = json[kDMPurchaseRingOfProtectionKey].int
		platemail = json[kDMPurchasePlatemailKey].int
		recipeWraithBand = json[kDMPurchaseRecipeWraithBandKey].int
		sangeAndYasha = json[kDMPurchaseSangeAndYashaKey].int
		hyperstone = json[kDMPurchaseHyperstoneKey].int
		basher = json[kDMPurchaseBasherKey].int
		wardSentry = json[kDMPurchaseWardSentryKey].int
		headdress = json[kDMPurchaseHeaddressKey].int
		boots = json[kDMPurchaseBootsKey].int
		sange = json[kDMPurchaseSangeKey].int
		gloves = json[kDMPurchaseGlovesKey].int
		tpscroll = json[kDMPurchaseTpscrollKey].int
		moonShard = json[kDMPurchaseMoonShardKey].int
		broadsword = json[kDMPurchaseBroadswordKey].int
		quellingBlade = json[kDMPurchaseQuellingBladeKey].int
		abyssalBlade = json[kDMPurchaseAbyssalBladeKey].int
		armlet = json[kDMPurchaseArmletKey].int
		handOfMidas = json[kDMPurchaseHandOfMidasKey].int
		orbOfVenom = json[kDMPurchaseOrbOfVenomKey].int
		courier = json[kDMPurchaseCourierKey].int
		shadowAmulet = json[kDMPurchaseShadowAmuletKey].int
		powerTreads = json[kDMPurchasePowerTreadsKey].int
		pipe = json[kDMPurchasePipeKey].int
		wardDispenser = json[kDMPurchaseWardDispenserKey].int
		bootsOfElves = json[kDMPurchaseBootsOfElvesKey].int
		invisSword = json[kDMPurchaseInvisSwordKey].int
		gauntlets = json[kDMPurchaseGauntletsKey].int
		recipeManta = json[kDMPurchaseRecipeMantaKey].int
		helmOfIronWill = json[kDMPurchaseHelmOfIronWillKey].int
		talismanOfEvasion = json[kDMPurchaseTalismanOfEvasionKey].int
		voidStone = json[kDMPurchaseVoidStoneKey].int
		recipeHandOfMidas = json[kDMPurchaseRecipeHandOfMidasKey].int
		silverEdge = json[kDMPurchaseSilverEdgeKey].int
		reaver = json[kDMPurchaseReaverKey].int
		ringOfHealth = json[kDMPurchaseRingOfHealthKey].int
		pointBooster = json[kDMPurchasePointBoosterKey].int
		manta = json[kDMPurchaseMantaKey].int
		hoodOfDefiance = json[kDMPurchaseHoodOfDefianceKey].int
		recipeUrnOfShadows = json[kDMPurchaseRecipeUrnOfShadowsKey].int
		recipeHeaddress = json[kDMPurchaseRecipeHeaddressKey].int
		vanguard = json[kDMPurchaseVanguardKey].int
		recipeArmlet = json[kDMPurchaseRecipeArmletKey].int
		bladeOfAlacrity = json[kDMPurchaseBladeOfAlacrityKey].int
		staffOfWizardry = json[kDMPurchaseStaffOfWizardryKey].int
		infusedRaindrop = json[kDMPurchaseInfusedRaindropKey].int
		recipeAssault = json[kDMPurchaseRecipeAssaultKey].int
		recipeBloodthorn = json[kDMPurchaseRecipeBloodthornKey].int
		wardObserver = json[kDMPurchaseWardObserverKey].int
		recipeBlackKingBar = json[kDMPurchaseRecipeBlackKingBarKey].int
		travelBoots = json[kDMPurchaseTravelBootsKey].int
		blackKingBar = json[kDMPurchaseBlackKingBarKey].int
		phaseBoots = json[kDMPurchasePhaseBootsKey].int
		faerieFire = json[kDMPurchaseFaerieFireKey].int
		vladmir = json[kDMPurchaseVladmirKey].int
		sobiMask = json[kDMPurchaseSobiMaskKey].int
		windLace = json[kDMPurchaseWindLaceKey].int
		greaterCrit = json[kDMPurchaseGreaterCritKey].int
		solarCrest = json[kDMPurchaseSolarCrestKey].int
		flyingCourier = json[kDMPurchaseFlyingCourierKey].int
		mithrilHammer = json[kDMPurchaseMithrilHammerKey].int
		yasha = json[kDMPurchaseYashaKey].int
		wraithBand = json[kDMPurchaseWraithBandKey].int
		heart = json[kDMPurchaseHeartKey].int
		clarity = json[kDMPurchaseClarityKey].int
		bloodthorn = json[kDMPurchaseBloodthornKey].int
		travelBoots2 = json[kDMPurchaseTravelBoots2Key].int
		quarterstaff = json[kDMPurchaseQuarterstaffKey].int
		recipeMaelstrom = json[kDMPurchaseRecipeMaelstromKey].int
		oblivionStaff = json[kDMPurchaseOblivionStaffKey].int
		magicWand = json[kDMPurchaseMagicWandKey].int
		recipeBracer = json[kDMPurchaseRecipeBracerKey].int
		glimmerCape = json[kDMPurchaseGlimmerCapeKey].int
		ringOfAquila = json[kDMPurchaseRingOfAquilaKey].int
		slippers = json[kDMPurchaseSlippersKey].int
		lesserCrit = json[kDMPurchaseLesserCritKey].int
		recipeSange = json[kDMPurchaseRecipeSangeKey].int
		javelin = json[kDMPurchaseJavelinKey].int
		helmOfTheDominator = json[kDMPurchaseHelmOfTheDominatorKey].int
		cloak = json[kDMPurchaseCloakKey].int
		recipeAbyssalBlade = json[kDMPurchaseRecipeAbyssalBladeKey].int
		gem = json[kDMPurchaseGemKey].int
		bracer = json[kDMPurchaseBracerKey].int
		robe = json[kDMPurchaseRobeKey].int
		recipeOrchid = json[kDMPurchaseRecipeOrchidKey].int
		recipeLesserCrit = json[kDMPurchaseRecipeLesserCritKey].int
		bottle = json[kDMPurchaseBottleKey].int
		chainmail = json[kDMPurchaseChainmailKey].int
		recipeMjollnir = json[kDMPurchaseRecipeMjollnirKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if energyBooster != nil {
			dictionary.updateValue(energyBooster! as AnyObject, forKey: kDMPurchaseEnergyBoosterKey)
		}
		if tango != nil {
			dictionary.updateValue(tango! as AnyObject, forKey: kDMPurchaseTangoKey)
		}
		if recipePipe != nil {
			dictionary.updateValue(recipePipe! as AnyObject, forKey: kDMPurchaseRecipePipeKey)
		}
		if recipeAncientJanggo != nil {
			dictionary.updateValue(recipeAncientJanggo! as AnyObject, forKey: kDMPurchaseRecipeAncientJanggoKey)
		}
		if aetherLens != nil {
			dictionary.updateValue(aetherLens! as AnyObject, forKey: kDMPurchaseAetherLensKey)
		}
		if enchantedMango != nil {
			dictionary.updateValue(enchantedMango! as AnyObject, forKey: kDMPurchaseEnchantedMangoKey)
		}
		if riverPainter5 != nil {
			dictionary.updateValue(riverPainter5! as AnyObject, forKey: kDMPurchaseRiverPainter5Key)
		}
		if recipeVladmir != nil {
			dictionary.updateValue(recipeVladmir! as AnyObject, forKey: kDMPurchaseRecipeVladmirKey)
		}
		if recipeYasha != nil {
			dictionary.updateValue(recipeYasha! as AnyObject, forKey: kDMPurchaseRecipeYashaKey)
		}
		if recipeHeart != nil {
			dictionary.updateValue(recipeHeart! as AnyObject, forKey: kDMPurchaseRecipeHeartKey)
		}
		if recipeCrimsonGuard != nil {
			dictionary.updateValue(recipeCrimsonGuard! as AnyObject, forKey: kDMPurchaseRecipeCrimsonGuardKey)
		}
		if skadi != nil {
			dictionary.updateValue(skadi! as AnyObject, forKey: kDMPurchaseSkadiKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury! as AnyObject, forKey: kDMPurchaseBfuryKey)
		}
		if tranquilBoots != nil {
			dictionary.updateValue(tranquilBoots! as AnyObject, forKey: kDMPurchaseTranquilBootsKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir! as AnyObject, forKey: kDMPurchaseMjollnirKey)
		}
		if pers != nil {
			dictionary.updateValue(pers! as AnyObject, forKey: kDMPurchasePersKey)
		}
		if claymore != nil {
			dictionary.updateValue(claymore! as AnyObject, forKey: kDMPurchaseClaymoreKey)
		}
		if lifesteal != nil {
			dictionary.updateValue(lifesteal! as AnyObject, forKey: kDMPurchaseLifestealKey)
		}
		if blightStone != nil {
			dictionary.updateValue(blightStone! as AnyObject, forKey: kDMPurchaseBlightStoneKey)
		}
		if monkeyKingBar != nil {
			dictionary.updateValue(monkeyKingBar! as AnyObject, forKey: kDMPurchaseMonkeyKingBarKey)
		}
		if ultimateOrb != nil {
			dictionary.updateValue(ultimateOrb! as AnyObject, forKey: kDMPurchaseUltimateOrbKey)
		}
		if flask != nil {
			dictionary.updateValue(flask! as AnyObject, forKey: kDMPurchaseFlaskKey)
		}
		if desolator != nil {
			dictionary.updateValue(desolator! as AnyObject, forKey: kDMPurchaseDesolatorKey)
		}
		if stoutShield != nil {
			dictionary.updateValue(stoutShield! as AnyObject, forKey: kDMPurchaseStoutShieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid! as AnyObject, forKey: kDMPurchaseOrchidKey)
		}
		if ancientJanggo != nil {
			dictionary.updateValue(ancientJanggo! as AnyObject, forKey: kDMPurchaseAncientJanggoKey)
		}
		if magicStick != nil {
			dictionary.updateValue(magicStick! as AnyObject, forKey: kDMPurchaseMagicStickKey)
		}
		if poorMansShield != nil {
			dictionary.updateValue(poorMansShield! as AnyObject, forKey: kDMPurchasePoorMansShieldKey)
		}
		if assault != nil {
			dictionary.updateValue(assault! as AnyObject, forKey: kDMPurchaseAssaultKey)
		}
		if branches != nil {
			dictionary.updateValue(branches! as AnyObject, forKey: kDMPurchaseBranchesKey)
		}
		if bladesOfAttack != nil {
			dictionary.updateValue(bladesOfAttack! as AnyObject, forKey: kDMPurchaseBladesOfAttackKey)
		}
		if ringOfBasilius != nil {
			dictionary.updateValue(ringOfBasilius! as AnyObject, forKey: kDMPurchaseRingOfBasiliusKey)
		}
		if maelstrom != nil {
			dictionary.updateValue(maelstrom! as AnyObject, forKey: kDMPurchaseMaelstromKey)
		}
		if beltOfStrength != nil {
			dictionary.updateValue(beltOfStrength! as AnyObject, forKey: kDMPurchaseBeltOfStrengthKey)
		}
		if recipeTravelBoots != nil {
			dictionary.updateValue(recipeTravelBoots! as AnyObject, forKey: kDMPurchaseRecipeTravelBootsKey)
		}
		if recipeBuckler != nil {
			dictionary.updateValue(recipeBuckler! as AnyObject, forKey: kDMPurchaseRecipeBucklerKey)
		}
		if ringOfRegen != nil {
			dictionary.updateValue(ringOfRegen! as AnyObject, forKey: kDMPurchaseRingOfRegenKey)
		}
		if crimsonGuard != nil {
			dictionary.updateValue(crimsonGuard! as AnyObject, forKey: kDMPurchaseCrimsonGuardKey)
		}
		if medallionOfCourage != nil {
			dictionary.updateValue(medallionOfCourage! as AnyObject, forKey: kDMPurchaseMedallionOfCourageKey)
		}
		if demonEdge != nil {
			dictionary.updateValue(demonEdge! as AnyObject, forKey: kDMPurchaseDemonEdgeKey)
		}
		if urnOfShadows != nil {
			dictionary.updateValue(urnOfShadows! as AnyObject, forKey: kDMPurchaseUrnOfShadowsKey)
		}
		if recipeBasher != nil {
			dictionary.updateValue(recipeBasher! as AnyObject, forKey: kDMPurchaseRecipeBasherKey)
		}
		if ogreAxe != nil {
			dictionary.updateValue(ogreAxe! as AnyObject, forKey: kDMPurchaseOgreAxeKey)
		}
		if recipeSilverEdge != nil {
			dictionary.updateValue(recipeSilverEdge! as AnyObject, forKey: kDMPurchaseRecipeSilverEdgeKey)
		}
		if recipeGreaterCrit != nil {
			dictionary.updateValue(recipeGreaterCrit! as AnyObject, forKey: kDMPurchaseRecipeGreaterCritKey)
		}
		if circlet != nil {
			dictionary.updateValue(circlet! as AnyObject, forKey: kDMPurchaseCircletKey)
		}
		if buckler != nil {
			dictionary.updateValue(buckler! as AnyObject, forKey: kDMPurchaseBucklerKey)
		}
		if tomeOfKnowledge != nil {
			dictionary.updateValue(tomeOfKnowledge! as AnyObject, forKey: kDMPurchaseTomeOfKnowledgeKey)
		}
		if dust != nil {
			dictionary.updateValue(dust! as AnyObject, forKey: kDMPurchaseDustKey)
		}
		if recipeAetherLens != nil {
			dictionary.updateValue(recipeAetherLens! as AnyObject, forKey: kDMPurchaseRecipeAetherLensKey)
		}
		if ultimateScepter != nil {
			dictionary.updateValue(ultimateScepter! as AnyObject, forKey: kDMPurchaseUltimateScepterKey)
		}
		if vitalityBooster != nil {
			dictionary.updateValue(vitalityBooster! as AnyObject, forKey: kDMPurchaseVitalityBoosterKey)
		}
		if ringOfProtection != nil {
			dictionary.updateValue(ringOfProtection! as AnyObject, forKey: kDMPurchaseRingOfProtectionKey)
		}
		if platemail != nil {
			dictionary.updateValue(platemail! as AnyObject, forKey: kDMPurchasePlatemailKey)
		}
		if recipeWraithBand != nil {
			dictionary.updateValue(recipeWraithBand! as AnyObject, forKey: kDMPurchaseRecipeWraithBandKey)
		}
		if sangeAndYasha != nil {
			dictionary.updateValue(sangeAndYasha! as AnyObject, forKey: kDMPurchaseSangeAndYashaKey)
		}
		if hyperstone != nil {
			dictionary.updateValue(hyperstone! as AnyObject, forKey: kDMPurchaseHyperstoneKey)
		}
		if basher != nil {
			dictionary.updateValue(basher! as AnyObject, forKey: kDMPurchaseBasherKey)
		}
		if wardSentry != nil {
			dictionary.updateValue(wardSentry! as AnyObject, forKey: kDMPurchaseWardSentryKey)
		}
		if headdress != nil {
			dictionary.updateValue(headdress! as AnyObject, forKey: kDMPurchaseHeaddressKey)
		}
		if boots != nil {
			dictionary.updateValue(boots! as AnyObject, forKey: kDMPurchaseBootsKey)
		}
		if sange != nil {
			dictionary.updateValue(sange! as AnyObject, forKey: kDMPurchaseSangeKey)
		}
		if gloves != nil {
			dictionary.updateValue(gloves! as AnyObject, forKey: kDMPurchaseGlovesKey)
		}
		if tpscroll != nil {
			dictionary.updateValue(tpscroll! as AnyObject, forKey: kDMPurchaseTpscrollKey)
		}
		if moonShard != nil {
			dictionary.updateValue(moonShard! as AnyObject, forKey: kDMPurchaseMoonShardKey)
		}
		if broadsword != nil {
			dictionary.updateValue(broadsword! as AnyObject, forKey: kDMPurchaseBroadswordKey)
		}
		if quellingBlade != nil {
			dictionary.updateValue(quellingBlade! as AnyObject, forKey: kDMPurchaseQuellingBladeKey)
		}
		if abyssalBlade != nil {
			dictionary.updateValue(abyssalBlade! as AnyObject, forKey: kDMPurchaseAbyssalBladeKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet! as AnyObject, forKey: kDMPurchaseArmletKey)
		}
		if handOfMidas != nil {
			dictionary.updateValue(handOfMidas! as AnyObject, forKey: kDMPurchaseHandOfMidasKey)
		}
		if orbOfVenom != nil {
			dictionary.updateValue(orbOfVenom! as AnyObject, forKey: kDMPurchaseOrbOfVenomKey)
		}
		if courier != nil {
			dictionary.updateValue(courier! as AnyObject, forKey: kDMPurchaseCourierKey)
		}
		if shadowAmulet != nil {
			dictionary.updateValue(shadowAmulet! as AnyObject, forKey: kDMPurchaseShadowAmuletKey)
		}
		if powerTreads != nil {
			dictionary.updateValue(powerTreads! as AnyObject, forKey: kDMPurchasePowerTreadsKey)
		}
		if pipe != nil {
			dictionary.updateValue(pipe! as AnyObject, forKey: kDMPurchasePipeKey)
		}
		if wardDispenser != nil {
			dictionary.updateValue(wardDispenser! as AnyObject, forKey: kDMPurchaseWardDispenserKey)
		}
		if bootsOfElves != nil {
			dictionary.updateValue(bootsOfElves! as AnyObject, forKey: kDMPurchaseBootsOfElvesKey)
		}
		if invisSword != nil {
			dictionary.updateValue(invisSword! as AnyObject, forKey: kDMPurchaseInvisSwordKey)
		}
		if gauntlets != nil {
			dictionary.updateValue(gauntlets! as AnyObject, forKey: kDMPurchaseGauntletsKey)
		}
		if recipeManta != nil {
			dictionary.updateValue(recipeManta! as AnyObject, forKey: kDMPurchaseRecipeMantaKey)
		}
		if helmOfIronWill != nil {
			dictionary.updateValue(helmOfIronWill! as AnyObject, forKey: kDMPurchaseHelmOfIronWillKey)
		}
		if talismanOfEvasion != nil {
			dictionary.updateValue(talismanOfEvasion! as AnyObject, forKey: kDMPurchaseTalismanOfEvasionKey)
		}
		if voidStone != nil {
			dictionary.updateValue(voidStone! as AnyObject, forKey: kDMPurchaseVoidStoneKey)
		}
		if recipeHandOfMidas != nil {
			dictionary.updateValue(recipeHandOfMidas! as AnyObject, forKey: kDMPurchaseRecipeHandOfMidasKey)
		}
		if silverEdge != nil {
			dictionary.updateValue(silverEdge! as AnyObject, forKey: kDMPurchaseSilverEdgeKey)
		}
		if reaver != nil {
			dictionary.updateValue(reaver! as AnyObject, forKey: kDMPurchaseReaverKey)
		}
		if ringOfHealth != nil {
			dictionary.updateValue(ringOfHealth! as AnyObject, forKey: kDMPurchaseRingOfHealthKey)
		}
		if pointBooster != nil {
			dictionary.updateValue(pointBooster! as AnyObject, forKey: kDMPurchasePointBoosterKey)
		}
		if manta != nil {
			dictionary.updateValue(manta! as AnyObject, forKey: kDMPurchaseMantaKey)
		}
		if hoodOfDefiance != nil {
			dictionary.updateValue(hoodOfDefiance! as AnyObject, forKey: kDMPurchaseHoodOfDefianceKey)
		}
		if recipeUrnOfShadows != nil {
			dictionary.updateValue(recipeUrnOfShadows! as AnyObject, forKey: kDMPurchaseRecipeUrnOfShadowsKey)
		}
		if recipeHeaddress != nil {
			dictionary.updateValue(recipeHeaddress! as AnyObject, forKey: kDMPurchaseRecipeHeaddressKey)
		}
		if vanguard != nil {
			dictionary.updateValue(vanguard! as AnyObject, forKey: kDMPurchaseVanguardKey)
		}
		if recipeArmlet != nil {
			dictionary.updateValue(recipeArmlet! as AnyObject, forKey: kDMPurchaseRecipeArmletKey)
		}
		if bladeOfAlacrity != nil {
			dictionary.updateValue(bladeOfAlacrity! as AnyObject, forKey: kDMPurchaseBladeOfAlacrityKey)
		}
		if staffOfWizardry != nil {
			dictionary.updateValue(staffOfWizardry! as AnyObject, forKey: kDMPurchaseStaffOfWizardryKey)
		}
		if infusedRaindrop != nil {
			dictionary.updateValue(infusedRaindrop! as AnyObject, forKey: kDMPurchaseInfusedRaindropKey)
		}
		if recipeAssault != nil {
			dictionary.updateValue(recipeAssault! as AnyObject, forKey: kDMPurchaseRecipeAssaultKey)
		}
		if recipeBloodthorn != nil {
			dictionary.updateValue(recipeBloodthorn! as AnyObject, forKey: kDMPurchaseRecipeBloodthornKey)
		}
		if wardObserver != nil {
			dictionary.updateValue(wardObserver! as AnyObject, forKey: kDMPurchaseWardObserverKey)
		}
		if recipeBlackKingBar != nil {
			dictionary.updateValue(recipeBlackKingBar! as AnyObject, forKey: kDMPurchaseRecipeBlackKingBarKey)
		}
		if travelBoots != nil {
			dictionary.updateValue(travelBoots! as AnyObject, forKey: kDMPurchaseTravelBootsKey)
		}
		if blackKingBar != nil {
			dictionary.updateValue(blackKingBar! as AnyObject, forKey: kDMPurchaseBlackKingBarKey)
		}
		if phaseBoots != nil {
			dictionary.updateValue(phaseBoots! as AnyObject, forKey: kDMPurchasePhaseBootsKey)
		}
		if faerieFire != nil {
			dictionary.updateValue(faerieFire! as AnyObject, forKey: kDMPurchaseFaerieFireKey)
		}
		if vladmir != nil {
			dictionary.updateValue(vladmir! as AnyObject, forKey: kDMPurchaseVladmirKey)
		}
		if sobiMask != nil {
			dictionary.updateValue(sobiMask! as AnyObject, forKey: kDMPurchaseSobiMaskKey)
		}
		if windLace != nil {
			dictionary.updateValue(windLace! as AnyObject, forKey: kDMPurchaseWindLaceKey)
		}
		if greaterCrit != nil {
			dictionary.updateValue(greaterCrit! as AnyObject, forKey: kDMPurchaseGreaterCritKey)
		}
		if solarCrest != nil {
			dictionary.updateValue(solarCrest! as AnyObject, forKey: kDMPurchaseSolarCrestKey)
		}
		if flyingCourier != nil {
			dictionary.updateValue(flyingCourier! as AnyObject, forKey: kDMPurchaseFlyingCourierKey)
		}
		if mithrilHammer != nil {
			dictionary.updateValue(mithrilHammer! as AnyObject, forKey: kDMPurchaseMithrilHammerKey)
		}
		if yasha != nil {
			dictionary.updateValue(yasha! as AnyObject, forKey: kDMPurchaseYashaKey)
		}
		if wraithBand != nil {
			dictionary.updateValue(wraithBand! as AnyObject, forKey: kDMPurchaseWraithBandKey)
		}
		if heart != nil {
			dictionary.updateValue(heart! as AnyObject, forKey: kDMPurchaseHeartKey)
		}
		if clarity != nil {
			dictionary.updateValue(clarity! as AnyObject, forKey: kDMPurchaseClarityKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn! as AnyObject, forKey: kDMPurchaseBloodthornKey)
		}
		if travelBoots2 != nil {
			dictionary.updateValue(travelBoots2! as AnyObject, forKey: kDMPurchaseTravelBoots2Key)
		}
		if quarterstaff != nil {
			dictionary.updateValue(quarterstaff! as AnyObject, forKey: kDMPurchaseQuarterstaffKey)
		}
		if recipeMaelstrom != nil {
			dictionary.updateValue(recipeMaelstrom! as AnyObject, forKey: kDMPurchaseRecipeMaelstromKey)
		}
		if oblivionStaff != nil {
			dictionary.updateValue(oblivionStaff! as AnyObject, forKey: kDMPurchaseOblivionStaffKey)
		}
		if magicWand != nil {
			dictionary.updateValue(magicWand! as AnyObject, forKey: kDMPurchaseMagicWandKey)
		}
		if recipeBracer != nil {
			dictionary.updateValue(recipeBracer! as AnyObject, forKey: kDMPurchaseRecipeBracerKey)
		}
		if glimmerCape != nil {
			dictionary.updateValue(glimmerCape! as AnyObject, forKey: kDMPurchaseGlimmerCapeKey)
		}
		if ringOfAquila != nil {
			dictionary.updateValue(ringOfAquila! as AnyObject, forKey: kDMPurchaseRingOfAquilaKey)
		}
		if slippers != nil {
			dictionary.updateValue(slippers! as AnyObject, forKey: kDMPurchaseSlippersKey)
		}
		if lesserCrit != nil {
			dictionary.updateValue(lesserCrit! as AnyObject, forKey: kDMPurchaseLesserCritKey)
		}
		if recipeSange != nil {
			dictionary.updateValue(recipeSange! as AnyObject, forKey: kDMPurchaseRecipeSangeKey)
		}
		if javelin != nil {
			dictionary.updateValue(javelin! as AnyObject, forKey: kDMPurchaseJavelinKey)
		}
		if helmOfTheDominator != nil {
			dictionary.updateValue(helmOfTheDominator! as AnyObject, forKey: kDMPurchaseHelmOfTheDominatorKey)
		}
		if cloak != nil {
			dictionary.updateValue(cloak! as AnyObject, forKey: kDMPurchaseCloakKey)
		}
		if recipeAbyssalBlade != nil {
			dictionary.updateValue(recipeAbyssalBlade! as AnyObject, forKey: kDMPurchaseRecipeAbyssalBladeKey)
		}
		if gem != nil {
			dictionary.updateValue(gem! as AnyObject, forKey: kDMPurchaseGemKey)
		}
		if bracer != nil {
			dictionary.updateValue(bracer! as AnyObject, forKey: kDMPurchaseBracerKey)
		}
		if robe != nil {
			dictionary.updateValue(robe! as AnyObject, forKey: kDMPurchaseRobeKey)
		}
		if recipeOrchid != nil {
			dictionary.updateValue(recipeOrchid! as AnyObject, forKey: kDMPurchaseRecipeOrchidKey)
		}
		if recipeLesserCrit != nil {
			dictionary.updateValue(recipeLesserCrit! as AnyObject, forKey: kDMPurchaseRecipeLesserCritKey)
		}
		if bottle != nil {
			dictionary.updateValue(bottle! as AnyObject, forKey: kDMPurchaseBottleKey)
		}
		if chainmail != nil {
			dictionary.updateValue(chainmail! as AnyObject, forKey: kDMPurchaseChainmailKey)
		}
		if recipeMjollnir != nil {
			dictionary.updateValue(recipeMjollnir! as AnyObject, forKey: kDMPurchaseRecipeMjollnirKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.energyBooster = aDecoder.decodeObject(forKey: kDMPurchaseEnergyBoosterKey) as? Int
		self.tango = aDecoder.decodeObject(forKey: kDMPurchaseTangoKey) as? Int
		self.recipePipe = aDecoder.decodeObject(forKey: kDMPurchaseRecipePipeKey) as? Int
		self.recipeAncientJanggo = aDecoder.decodeObject(forKey: kDMPurchaseRecipeAncientJanggoKey) as? Int
		self.aetherLens = aDecoder.decodeObject(forKey: kDMPurchaseAetherLensKey) as? Int
		self.enchantedMango = aDecoder.decodeObject(forKey: kDMPurchaseEnchantedMangoKey) as? Int
		self.riverPainter5 = aDecoder.decodeObject(forKey: kDMPurchaseRiverPainter5Key) as? Int
		self.recipeVladmir = aDecoder.decodeObject(forKey: kDMPurchaseRecipeVladmirKey) as? Int
		self.recipeYasha = aDecoder.decodeObject(forKey: kDMPurchaseRecipeYashaKey) as? Int
		self.recipeHeart = aDecoder.decodeObject(forKey: kDMPurchaseRecipeHeartKey) as? Int
		self.recipeCrimsonGuard = aDecoder.decodeObject(forKey: kDMPurchaseRecipeCrimsonGuardKey) as? Int
		self.skadi = aDecoder.decodeObject(forKey: kDMPurchaseSkadiKey) as? Int
		self.bfury = aDecoder.decodeObject(forKey: kDMPurchaseBfuryKey) as? Int
		self.tranquilBoots = aDecoder.decodeObject(forKey: kDMPurchaseTranquilBootsKey) as? Int
		self.mjollnir = aDecoder.decodeObject(forKey: kDMPurchaseMjollnirKey) as? Int
		self.pers = aDecoder.decodeObject(forKey: kDMPurchasePersKey) as? Int
		self.claymore = aDecoder.decodeObject(forKey: kDMPurchaseClaymoreKey) as? Int
		self.lifesteal = aDecoder.decodeObject(forKey: kDMPurchaseLifestealKey) as? Int
		self.blightStone = aDecoder.decodeObject(forKey: kDMPurchaseBlightStoneKey) as? Int
		self.monkeyKingBar = aDecoder.decodeObject(forKey: kDMPurchaseMonkeyKingBarKey) as? Int
		self.ultimateOrb = aDecoder.decodeObject(forKey: kDMPurchaseUltimateOrbKey) as? Int
		self.flask = aDecoder.decodeObject(forKey: kDMPurchaseFlaskKey) as? Int
		self.desolator = aDecoder.decodeObject(forKey: kDMPurchaseDesolatorKey) as? Int
		self.stoutShield = aDecoder.decodeObject(forKey: kDMPurchaseStoutShieldKey) as? Int
		self.orchid = aDecoder.decodeObject(forKey: kDMPurchaseOrchidKey) as? Int
		self.ancientJanggo = aDecoder.decodeObject(forKey: kDMPurchaseAncientJanggoKey) as? Int
		self.magicStick = aDecoder.decodeObject(forKey: kDMPurchaseMagicStickKey) as? Int
		self.poorMansShield = aDecoder.decodeObject(forKey: kDMPurchasePoorMansShieldKey) as? Int
		self.assault = aDecoder.decodeObject(forKey: kDMPurchaseAssaultKey) as? Int
		self.branches = aDecoder.decodeObject(forKey: kDMPurchaseBranchesKey) as? Int
		self.bladesOfAttack = aDecoder.decodeObject(forKey: kDMPurchaseBladesOfAttackKey) as? Int
		self.ringOfBasilius = aDecoder.decodeObject(forKey: kDMPurchaseRingOfBasiliusKey) as? Int
		self.maelstrom = aDecoder.decodeObject(forKey: kDMPurchaseMaelstromKey) as? Int
		self.beltOfStrength = aDecoder.decodeObject(forKey: kDMPurchaseBeltOfStrengthKey) as? Int
		self.recipeTravelBoots = aDecoder.decodeObject(forKey: kDMPurchaseRecipeTravelBootsKey) as? Int
		self.recipeBuckler = aDecoder.decodeObject(forKey: kDMPurchaseRecipeBucklerKey) as? Int
		self.ringOfRegen = aDecoder.decodeObject(forKey: kDMPurchaseRingOfRegenKey) as? Int
		self.crimsonGuard = aDecoder.decodeObject(forKey: kDMPurchaseCrimsonGuardKey) as? Int
		self.medallionOfCourage = aDecoder.decodeObject(forKey: kDMPurchaseMedallionOfCourageKey) as? Int
		self.demonEdge = aDecoder.decodeObject(forKey: kDMPurchaseDemonEdgeKey) as? Int
		self.urnOfShadows = aDecoder.decodeObject(forKey: kDMPurchaseUrnOfShadowsKey) as? Int
		self.recipeBasher = aDecoder.decodeObject(forKey: kDMPurchaseRecipeBasherKey) as? Int
		self.ogreAxe = aDecoder.decodeObject(forKey: kDMPurchaseOgreAxeKey) as? Int
		self.recipeSilverEdge = aDecoder.decodeObject(forKey: kDMPurchaseRecipeSilverEdgeKey) as? Int
		self.recipeGreaterCrit = aDecoder.decodeObject(forKey: kDMPurchaseRecipeGreaterCritKey) as? Int
		self.circlet = aDecoder.decodeObject(forKey: kDMPurchaseCircletKey) as? Int
		self.buckler = aDecoder.decodeObject(forKey: kDMPurchaseBucklerKey) as? Int
		self.tomeOfKnowledge = aDecoder.decodeObject(forKey: kDMPurchaseTomeOfKnowledgeKey) as? Int
		self.dust = aDecoder.decodeObject(forKey: kDMPurchaseDustKey) as? Int
		self.recipeAetherLens = aDecoder.decodeObject(forKey: kDMPurchaseRecipeAetherLensKey) as? Int
		self.ultimateScepter = aDecoder.decodeObject(forKey: kDMPurchaseUltimateScepterKey) as? Int
		self.vitalityBooster = aDecoder.decodeObject(forKey: kDMPurchaseVitalityBoosterKey) as? Int
		self.ringOfProtection = aDecoder.decodeObject(forKey: kDMPurchaseRingOfProtectionKey) as? Int
		self.platemail = aDecoder.decodeObject(forKey: kDMPurchasePlatemailKey) as? Int
		self.recipeWraithBand = aDecoder.decodeObject(forKey: kDMPurchaseRecipeWraithBandKey) as? Int
		self.sangeAndYasha = aDecoder.decodeObject(forKey: kDMPurchaseSangeAndYashaKey) as? Int
		self.hyperstone = aDecoder.decodeObject(forKey: kDMPurchaseHyperstoneKey) as? Int
		self.basher = aDecoder.decodeObject(forKey: kDMPurchaseBasherKey) as? Int
		self.wardSentry = aDecoder.decodeObject(forKey: kDMPurchaseWardSentryKey) as? Int
		self.headdress = aDecoder.decodeObject(forKey: kDMPurchaseHeaddressKey) as? Int
		self.boots = aDecoder.decodeObject(forKey: kDMPurchaseBootsKey) as? Int
		self.sange = aDecoder.decodeObject(forKey: kDMPurchaseSangeKey) as? Int
		self.gloves = aDecoder.decodeObject(forKey: kDMPurchaseGlovesKey) as? Int
		self.tpscroll = aDecoder.decodeObject(forKey: kDMPurchaseTpscrollKey) as? Int
		self.moonShard = aDecoder.decodeObject(forKey: kDMPurchaseMoonShardKey) as? Int
		self.broadsword = aDecoder.decodeObject(forKey: kDMPurchaseBroadswordKey) as? Int
		self.quellingBlade = aDecoder.decodeObject(forKey: kDMPurchaseQuellingBladeKey) as? Int
		self.abyssalBlade = aDecoder.decodeObject(forKey: kDMPurchaseAbyssalBladeKey) as? Int
		self.armlet = aDecoder.decodeObject(forKey: kDMPurchaseArmletKey) as? Int
		self.handOfMidas = aDecoder.decodeObject(forKey: kDMPurchaseHandOfMidasKey) as? Int
		self.orbOfVenom = aDecoder.decodeObject(forKey: kDMPurchaseOrbOfVenomKey) as? Int
		self.courier = aDecoder.decodeObject(forKey: kDMPurchaseCourierKey) as? Int
		self.shadowAmulet = aDecoder.decodeObject(forKey: kDMPurchaseShadowAmuletKey) as? Int
		self.powerTreads = aDecoder.decodeObject(forKey: kDMPurchasePowerTreadsKey) as? Int
		self.pipe = aDecoder.decodeObject(forKey: kDMPurchasePipeKey) as? Int
		self.wardDispenser = aDecoder.decodeObject(forKey: kDMPurchaseWardDispenserKey) as? Int
		self.bootsOfElves = aDecoder.decodeObject(forKey: kDMPurchaseBootsOfElvesKey) as? Int
		self.invisSword = aDecoder.decodeObject(forKey: kDMPurchaseInvisSwordKey) as? Int
		self.gauntlets = aDecoder.decodeObject(forKey: kDMPurchaseGauntletsKey) as? Int
		self.recipeManta = aDecoder.decodeObject(forKey: kDMPurchaseRecipeMantaKey) as? Int
		self.helmOfIronWill = aDecoder.decodeObject(forKey: kDMPurchaseHelmOfIronWillKey) as? Int
		self.talismanOfEvasion = aDecoder.decodeObject(forKey: kDMPurchaseTalismanOfEvasionKey) as? Int
		self.voidStone = aDecoder.decodeObject(forKey: kDMPurchaseVoidStoneKey) as? Int
		self.recipeHandOfMidas = aDecoder.decodeObject(forKey: kDMPurchaseRecipeHandOfMidasKey) as? Int
		self.silverEdge = aDecoder.decodeObject(forKey: kDMPurchaseSilverEdgeKey) as? Int
		self.reaver = aDecoder.decodeObject(forKey: kDMPurchaseReaverKey) as? Int
		self.ringOfHealth = aDecoder.decodeObject(forKey: kDMPurchaseRingOfHealthKey) as? Int
		self.pointBooster = aDecoder.decodeObject(forKey: kDMPurchasePointBoosterKey) as? Int
		self.manta = aDecoder.decodeObject(forKey: kDMPurchaseMantaKey) as? Int
		self.hoodOfDefiance = aDecoder.decodeObject(forKey: kDMPurchaseHoodOfDefianceKey) as? Int
		self.recipeUrnOfShadows = aDecoder.decodeObject(forKey: kDMPurchaseRecipeUrnOfShadowsKey) as? Int
		self.recipeHeaddress = aDecoder.decodeObject(forKey: kDMPurchaseRecipeHeaddressKey) as? Int
		self.vanguard = aDecoder.decodeObject(forKey: kDMPurchaseVanguardKey) as? Int
		self.recipeArmlet = aDecoder.decodeObject(forKey: kDMPurchaseRecipeArmletKey) as? Int
		self.bladeOfAlacrity = aDecoder.decodeObject(forKey: kDMPurchaseBladeOfAlacrityKey) as? Int
		self.staffOfWizardry = aDecoder.decodeObject(forKey: kDMPurchaseStaffOfWizardryKey) as? Int
		self.infusedRaindrop = aDecoder.decodeObject(forKey: kDMPurchaseInfusedRaindropKey) as? Int
		self.recipeAssault = aDecoder.decodeObject(forKey: kDMPurchaseRecipeAssaultKey) as? Int
		self.recipeBloodthorn = aDecoder.decodeObject(forKey: kDMPurchaseRecipeBloodthornKey) as? Int
		self.wardObserver = aDecoder.decodeObject(forKey: kDMPurchaseWardObserverKey) as? Int
		self.recipeBlackKingBar = aDecoder.decodeObject(forKey: kDMPurchaseRecipeBlackKingBarKey) as? Int
		self.travelBoots = aDecoder.decodeObject(forKey: kDMPurchaseTravelBootsKey) as? Int
		self.blackKingBar = aDecoder.decodeObject(forKey: kDMPurchaseBlackKingBarKey) as? Int
		self.phaseBoots = aDecoder.decodeObject(forKey: kDMPurchasePhaseBootsKey) as? Int
		self.faerieFire = aDecoder.decodeObject(forKey: kDMPurchaseFaerieFireKey) as? Int
		self.vladmir = aDecoder.decodeObject(forKey: kDMPurchaseVladmirKey) as? Int
		self.sobiMask = aDecoder.decodeObject(forKey: kDMPurchaseSobiMaskKey) as? Int
		self.windLace = aDecoder.decodeObject(forKey: kDMPurchaseWindLaceKey) as? Int
		self.greaterCrit = aDecoder.decodeObject(forKey: kDMPurchaseGreaterCritKey) as? Int
		self.solarCrest = aDecoder.decodeObject(forKey: kDMPurchaseSolarCrestKey) as? Int
		self.flyingCourier = aDecoder.decodeObject(forKey: kDMPurchaseFlyingCourierKey) as? Int
		self.mithrilHammer = aDecoder.decodeObject(forKey: kDMPurchaseMithrilHammerKey) as? Int
		self.yasha = aDecoder.decodeObject(forKey: kDMPurchaseYashaKey) as? Int
		self.wraithBand = aDecoder.decodeObject(forKey: kDMPurchaseWraithBandKey) as? Int
		self.heart = aDecoder.decodeObject(forKey: kDMPurchaseHeartKey) as? Int
		self.clarity = aDecoder.decodeObject(forKey: kDMPurchaseClarityKey) as? Int
		self.bloodthorn = aDecoder.decodeObject(forKey: kDMPurchaseBloodthornKey) as? Int
		self.travelBoots2 = aDecoder.decodeObject(forKey: kDMPurchaseTravelBoots2Key) as? Int
		self.quarterstaff = aDecoder.decodeObject(forKey: kDMPurchaseQuarterstaffKey) as? Int
		self.recipeMaelstrom = aDecoder.decodeObject(forKey: kDMPurchaseRecipeMaelstromKey) as? Int
		self.oblivionStaff = aDecoder.decodeObject(forKey: kDMPurchaseOblivionStaffKey) as? Int
		self.magicWand = aDecoder.decodeObject(forKey: kDMPurchaseMagicWandKey) as? Int
		self.recipeBracer = aDecoder.decodeObject(forKey: kDMPurchaseRecipeBracerKey) as? Int
		self.glimmerCape = aDecoder.decodeObject(forKey: kDMPurchaseGlimmerCapeKey) as? Int
		self.ringOfAquila = aDecoder.decodeObject(forKey: kDMPurchaseRingOfAquilaKey) as? Int
		self.slippers = aDecoder.decodeObject(forKey: kDMPurchaseSlippersKey) as? Int
		self.lesserCrit = aDecoder.decodeObject(forKey: kDMPurchaseLesserCritKey) as? Int
		self.recipeSange = aDecoder.decodeObject(forKey: kDMPurchaseRecipeSangeKey) as? Int
		self.javelin = aDecoder.decodeObject(forKey: kDMPurchaseJavelinKey) as? Int
		self.helmOfTheDominator = aDecoder.decodeObject(forKey: kDMPurchaseHelmOfTheDominatorKey) as? Int
		self.cloak = aDecoder.decodeObject(forKey: kDMPurchaseCloakKey) as? Int
		self.recipeAbyssalBlade = aDecoder.decodeObject(forKey: kDMPurchaseRecipeAbyssalBladeKey) as? Int
		self.gem = aDecoder.decodeObject(forKey: kDMPurchaseGemKey) as? Int
		self.bracer = aDecoder.decodeObject(forKey: kDMPurchaseBracerKey) as? Int
		self.robe = aDecoder.decodeObject(forKey: kDMPurchaseRobeKey) as? Int
		self.recipeOrchid = aDecoder.decodeObject(forKey: kDMPurchaseRecipeOrchidKey) as? Int
		self.recipeLesserCrit = aDecoder.decodeObject(forKey: kDMPurchaseRecipeLesserCritKey) as? Int
		self.bottle = aDecoder.decodeObject(forKey: kDMPurchaseBottleKey) as? Int
		self.chainmail = aDecoder.decodeObject(forKey: kDMPurchaseChainmailKey) as? Int
		self.recipeMjollnir = aDecoder.decodeObject(forKey: kDMPurchaseRecipeMjollnirKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(energyBooster, forKey: kDMPurchaseEnergyBoosterKey)
		aCoder.encode(tango, forKey: kDMPurchaseTangoKey)
		aCoder.encode(recipePipe, forKey: kDMPurchaseRecipePipeKey)
		aCoder.encode(recipeAncientJanggo, forKey: kDMPurchaseRecipeAncientJanggoKey)
		aCoder.encode(aetherLens, forKey: kDMPurchaseAetherLensKey)
		aCoder.encode(enchantedMango, forKey: kDMPurchaseEnchantedMangoKey)
		aCoder.encode(riverPainter5, forKey: kDMPurchaseRiverPainter5Key)
		aCoder.encode(recipeVladmir, forKey: kDMPurchaseRecipeVladmirKey)
		aCoder.encode(recipeYasha, forKey: kDMPurchaseRecipeYashaKey)
		aCoder.encode(recipeHeart, forKey: kDMPurchaseRecipeHeartKey)
		aCoder.encode(recipeCrimsonGuard, forKey: kDMPurchaseRecipeCrimsonGuardKey)
		aCoder.encode(skadi, forKey: kDMPurchaseSkadiKey)
		aCoder.encode(bfury, forKey: kDMPurchaseBfuryKey)
		aCoder.encode(tranquilBoots, forKey: kDMPurchaseTranquilBootsKey)
		aCoder.encode(mjollnir, forKey: kDMPurchaseMjollnirKey)
		aCoder.encode(pers, forKey: kDMPurchasePersKey)
		aCoder.encode(claymore, forKey: kDMPurchaseClaymoreKey)
		aCoder.encode(lifesteal, forKey: kDMPurchaseLifestealKey)
		aCoder.encode(blightStone, forKey: kDMPurchaseBlightStoneKey)
		aCoder.encode(monkeyKingBar, forKey: kDMPurchaseMonkeyKingBarKey)
		aCoder.encode(ultimateOrb, forKey: kDMPurchaseUltimateOrbKey)
		aCoder.encode(flask, forKey: kDMPurchaseFlaskKey)
		aCoder.encode(desolator, forKey: kDMPurchaseDesolatorKey)
		aCoder.encode(stoutShield, forKey: kDMPurchaseStoutShieldKey)
		aCoder.encode(orchid, forKey: kDMPurchaseOrchidKey)
		aCoder.encode(ancientJanggo, forKey: kDMPurchaseAncientJanggoKey)
		aCoder.encode(magicStick, forKey: kDMPurchaseMagicStickKey)
		aCoder.encode(poorMansShield, forKey: kDMPurchasePoorMansShieldKey)
		aCoder.encode(assault, forKey: kDMPurchaseAssaultKey)
		aCoder.encode(branches, forKey: kDMPurchaseBranchesKey)
		aCoder.encode(bladesOfAttack, forKey: kDMPurchaseBladesOfAttackKey)
		aCoder.encode(ringOfBasilius, forKey: kDMPurchaseRingOfBasiliusKey)
		aCoder.encode(maelstrom, forKey: kDMPurchaseMaelstromKey)
		aCoder.encode(beltOfStrength, forKey: kDMPurchaseBeltOfStrengthKey)
		aCoder.encode(recipeTravelBoots, forKey: kDMPurchaseRecipeTravelBootsKey)
		aCoder.encode(recipeBuckler, forKey: kDMPurchaseRecipeBucklerKey)
		aCoder.encode(ringOfRegen, forKey: kDMPurchaseRingOfRegenKey)
		aCoder.encode(crimsonGuard, forKey: kDMPurchaseCrimsonGuardKey)
		aCoder.encode(medallionOfCourage, forKey: kDMPurchaseMedallionOfCourageKey)
		aCoder.encode(demonEdge, forKey: kDMPurchaseDemonEdgeKey)
		aCoder.encode(urnOfShadows, forKey: kDMPurchaseUrnOfShadowsKey)
		aCoder.encode(recipeBasher, forKey: kDMPurchaseRecipeBasherKey)
		aCoder.encode(ogreAxe, forKey: kDMPurchaseOgreAxeKey)
		aCoder.encode(recipeSilverEdge, forKey: kDMPurchaseRecipeSilverEdgeKey)
		aCoder.encode(recipeGreaterCrit, forKey: kDMPurchaseRecipeGreaterCritKey)
		aCoder.encode(circlet, forKey: kDMPurchaseCircletKey)
		aCoder.encode(buckler, forKey: kDMPurchaseBucklerKey)
		aCoder.encode(tomeOfKnowledge, forKey: kDMPurchaseTomeOfKnowledgeKey)
		aCoder.encode(dust, forKey: kDMPurchaseDustKey)
		aCoder.encode(recipeAetherLens, forKey: kDMPurchaseRecipeAetherLensKey)
		aCoder.encode(ultimateScepter, forKey: kDMPurchaseUltimateScepterKey)
		aCoder.encode(vitalityBooster, forKey: kDMPurchaseVitalityBoosterKey)
		aCoder.encode(ringOfProtection, forKey: kDMPurchaseRingOfProtectionKey)
		aCoder.encode(platemail, forKey: kDMPurchasePlatemailKey)
		aCoder.encode(recipeWraithBand, forKey: kDMPurchaseRecipeWraithBandKey)
		aCoder.encode(sangeAndYasha, forKey: kDMPurchaseSangeAndYashaKey)
		aCoder.encode(hyperstone, forKey: kDMPurchaseHyperstoneKey)
		aCoder.encode(basher, forKey: kDMPurchaseBasherKey)
		aCoder.encode(wardSentry, forKey: kDMPurchaseWardSentryKey)
		aCoder.encode(headdress, forKey: kDMPurchaseHeaddressKey)
		aCoder.encode(boots, forKey: kDMPurchaseBootsKey)
		aCoder.encode(sange, forKey: kDMPurchaseSangeKey)
		aCoder.encode(gloves, forKey: kDMPurchaseGlovesKey)
		aCoder.encode(tpscroll, forKey: kDMPurchaseTpscrollKey)
		aCoder.encode(moonShard, forKey: kDMPurchaseMoonShardKey)
		aCoder.encode(broadsword, forKey: kDMPurchaseBroadswordKey)
		aCoder.encode(quellingBlade, forKey: kDMPurchaseQuellingBladeKey)
		aCoder.encode(abyssalBlade, forKey: kDMPurchaseAbyssalBladeKey)
		aCoder.encode(armlet, forKey: kDMPurchaseArmletKey)
		aCoder.encode(handOfMidas, forKey: kDMPurchaseHandOfMidasKey)
		aCoder.encode(orbOfVenom, forKey: kDMPurchaseOrbOfVenomKey)
		aCoder.encode(courier, forKey: kDMPurchaseCourierKey)
		aCoder.encode(shadowAmulet, forKey: kDMPurchaseShadowAmuletKey)
		aCoder.encode(powerTreads, forKey: kDMPurchasePowerTreadsKey)
		aCoder.encode(pipe, forKey: kDMPurchasePipeKey)
		aCoder.encode(wardDispenser, forKey: kDMPurchaseWardDispenserKey)
		aCoder.encode(bootsOfElves, forKey: kDMPurchaseBootsOfElvesKey)
		aCoder.encode(invisSword, forKey: kDMPurchaseInvisSwordKey)
		aCoder.encode(gauntlets, forKey: kDMPurchaseGauntletsKey)
		aCoder.encode(recipeManta, forKey: kDMPurchaseRecipeMantaKey)
		aCoder.encode(helmOfIronWill, forKey: kDMPurchaseHelmOfIronWillKey)
		aCoder.encode(talismanOfEvasion, forKey: kDMPurchaseTalismanOfEvasionKey)
		aCoder.encode(voidStone, forKey: kDMPurchaseVoidStoneKey)
		aCoder.encode(recipeHandOfMidas, forKey: kDMPurchaseRecipeHandOfMidasKey)
		aCoder.encode(silverEdge, forKey: kDMPurchaseSilverEdgeKey)
		aCoder.encode(reaver, forKey: kDMPurchaseReaverKey)
		aCoder.encode(ringOfHealth, forKey: kDMPurchaseRingOfHealthKey)
		aCoder.encode(pointBooster, forKey: kDMPurchasePointBoosterKey)
		aCoder.encode(manta, forKey: kDMPurchaseMantaKey)
		aCoder.encode(hoodOfDefiance, forKey: kDMPurchaseHoodOfDefianceKey)
		aCoder.encode(recipeUrnOfShadows, forKey: kDMPurchaseRecipeUrnOfShadowsKey)
		aCoder.encode(recipeHeaddress, forKey: kDMPurchaseRecipeHeaddressKey)
		aCoder.encode(vanguard, forKey: kDMPurchaseVanguardKey)
		aCoder.encode(recipeArmlet, forKey: kDMPurchaseRecipeArmletKey)
		aCoder.encode(bladeOfAlacrity, forKey: kDMPurchaseBladeOfAlacrityKey)
		aCoder.encode(staffOfWizardry, forKey: kDMPurchaseStaffOfWizardryKey)
		aCoder.encode(infusedRaindrop, forKey: kDMPurchaseInfusedRaindropKey)
		aCoder.encode(recipeAssault, forKey: kDMPurchaseRecipeAssaultKey)
		aCoder.encode(recipeBloodthorn, forKey: kDMPurchaseRecipeBloodthornKey)
		aCoder.encode(wardObserver, forKey: kDMPurchaseWardObserverKey)
		aCoder.encode(recipeBlackKingBar, forKey: kDMPurchaseRecipeBlackKingBarKey)
		aCoder.encode(travelBoots, forKey: kDMPurchaseTravelBootsKey)
		aCoder.encode(blackKingBar, forKey: kDMPurchaseBlackKingBarKey)
		aCoder.encode(phaseBoots, forKey: kDMPurchasePhaseBootsKey)
		aCoder.encode(faerieFire, forKey: kDMPurchaseFaerieFireKey)
		aCoder.encode(vladmir, forKey: kDMPurchaseVladmirKey)
		aCoder.encode(sobiMask, forKey: kDMPurchaseSobiMaskKey)
		aCoder.encode(windLace, forKey: kDMPurchaseWindLaceKey)
		aCoder.encode(greaterCrit, forKey: kDMPurchaseGreaterCritKey)
		aCoder.encode(solarCrest, forKey: kDMPurchaseSolarCrestKey)
		aCoder.encode(flyingCourier, forKey: kDMPurchaseFlyingCourierKey)
		aCoder.encode(mithrilHammer, forKey: kDMPurchaseMithrilHammerKey)
		aCoder.encode(yasha, forKey: kDMPurchaseYashaKey)
		aCoder.encode(wraithBand, forKey: kDMPurchaseWraithBandKey)
		aCoder.encode(heart, forKey: kDMPurchaseHeartKey)
		aCoder.encode(clarity, forKey: kDMPurchaseClarityKey)
		aCoder.encode(bloodthorn, forKey: kDMPurchaseBloodthornKey)
		aCoder.encode(travelBoots2, forKey: kDMPurchaseTravelBoots2Key)
		aCoder.encode(quarterstaff, forKey: kDMPurchaseQuarterstaffKey)
		aCoder.encode(recipeMaelstrom, forKey: kDMPurchaseRecipeMaelstromKey)
		aCoder.encode(oblivionStaff, forKey: kDMPurchaseOblivionStaffKey)
		aCoder.encode(magicWand, forKey: kDMPurchaseMagicWandKey)
		aCoder.encode(recipeBracer, forKey: kDMPurchaseRecipeBracerKey)
		aCoder.encode(glimmerCape, forKey: kDMPurchaseGlimmerCapeKey)
		aCoder.encode(ringOfAquila, forKey: kDMPurchaseRingOfAquilaKey)
		aCoder.encode(slippers, forKey: kDMPurchaseSlippersKey)
		aCoder.encode(lesserCrit, forKey: kDMPurchaseLesserCritKey)
		aCoder.encode(recipeSange, forKey: kDMPurchaseRecipeSangeKey)
		aCoder.encode(javelin, forKey: kDMPurchaseJavelinKey)
		aCoder.encode(helmOfTheDominator, forKey: kDMPurchaseHelmOfTheDominatorKey)
		aCoder.encode(cloak, forKey: kDMPurchaseCloakKey)
		aCoder.encode(recipeAbyssalBlade, forKey: kDMPurchaseRecipeAbyssalBladeKey)
		aCoder.encode(gem, forKey: kDMPurchaseGemKey)
		aCoder.encode(bracer, forKey: kDMPurchaseBracerKey)
		aCoder.encode(robe, forKey: kDMPurchaseRobeKey)
		aCoder.encode(recipeOrchid, forKey: kDMPurchaseRecipeOrchidKey)
		aCoder.encode(recipeLesserCrit, forKey: kDMPurchaseRecipeLesserCritKey)
		aCoder.encode(bottle, forKey: kDMPurchaseBottleKey)
		aCoder.encode(chainmail, forKey: kDMPurchaseChainmailKey)
		aCoder.encode(recipeMjollnir, forKey: kDMPurchaseRecipeMjollnirKey)

    }

}
