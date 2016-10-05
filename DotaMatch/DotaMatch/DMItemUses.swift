//
//  DMItemUses.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMItemUses: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMItemUsesCourierKey: String = "courier"
	internal let kDMItemUsesTangoKey: String = "tango"
	internal let kDMItemUsesPowerTreadsKey: String = "power_treads"
	internal let kDMItemUsesTangoSingleKey: String = "tango_single"
	internal let kDMItemUsesRingOfBasiliusKey: String = "ring_of_basilius"
	internal let kDMItemUsesShadowAmuletKey: String = "shadow_amulet"
	internal let kDMItemUsesBloodthornKey: String = "bloodthorn"
	internal let kDMItemUsesClarityKey: String = "clarity"
	internal let kDMItemUsesPipeKey: String = "pipe"
	internal let kDMItemUsesInvisSwordKey: String = "invis_sword"
	internal let kDMItemUsesTravelBoots2Key: String = "travel_boots_2"
	internal let kDMItemUsesWardDispenserKey: String = "ward_dispenser"
	internal let kDMItemUsesMagicWandKey: String = "magic_wand"
	internal let kDMItemUsesEnchantedMangoKey: String = "enchanted_mango"
	internal let kDMItemUsesRiverPainter5Key: String = "river_painter5"
	internal let kDMItemUsesCrimsonGuardKey: String = "crimson_guard"
	internal let kDMItemUsesGlimmerCapeKey: String = "glimmer_cape"
	internal let kDMItemUsesSilverEdgeKey: String = "silver_edge"
	internal let kDMItemUsesUrnOfShadowsKey: String = "urn_of_shadows"
	internal let kDMItemUsesHoodOfDefianceKey: String = "hood_of_defiance"
	internal let kDMItemUsesMantaKey: String = "manta"
	internal let kDMItemUsesTomeOfKnowledgeKey: String = "tome_of_knowledge"
	internal let kDMItemUsesBfuryKey: String = "bfury"
	internal let kDMItemUsesMjollnirKey: String = "mjollnir"
	internal let kDMItemUsesDustKey: String = "dust"
	internal let kDMItemUsesFlaskKey: String = "flask"
	internal let kDMItemUsesWardObserverKey: String = "ward_observer"
	internal let kDMItemUsesOrchidKey: String = "orchid"
	internal let kDMItemUsesAncientJanggoKey: String = "ancient_janggo"
	internal let kDMItemUsesAbyssalBladeKey: String = "abyssal_blade"
	internal let kDMItemUsesMagicStickKey: String = "magic_stick"
	internal let kDMItemUsesTravelBootsKey: String = "travel_boots"
	internal let kDMItemUsesBottleKey: String = "bottle"
	internal let kDMItemUsesBlackKingBarKey: String = "black_king_bar"
	internal let kDMItemUsesTpscrollKey: String = "tpscroll"
	internal let kDMItemUsesFaerieFireKey: String = "faerie_fire"
	internal let kDMItemUsesPhaseBootsKey: String = "phase_boots"
	internal let kDMItemUsesMoonShardKey: String = "moon_shard"
	internal let kDMItemUsesSolarCrestKey: String = "solar_crest"
	internal let kDMItemUsesWardSentryKey: String = "ward_sentry"
	internal let kDMItemUsesArmletKey: String = "armlet"
	internal let kDMItemUsesBranchesKey: String = "branches"
	internal let kDMItemUsesHandOfMidasKey: String = "hand_of_midas"


    // MARK: Properties
	open var courier: Int?
	open var tango: Int?
	open var powerTreads: Int?
	open var tangoSingle: Int?
	open var ringOfBasilius: Int?
	open var shadowAmulet: Int?
	open var bloodthorn: Int?
	open var clarity: Int?
	open var pipe: Int?
	open var invisSword: Int?
	open var travelBoots2: Int?
	open var wardDispenser: Int?
	open var magicWand: Int?
	open var enchantedMango: Int?
	open var riverPainter5: Int?
	open var crimsonGuard: Int?
	open var glimmerCape: Int?
	open var silverEdge: Int?
	open var urnOfShadows: Int?
	open var hoodOfDefiance: Int?
	open var manta: Int?
	open var tomeOfKnowledge: Int?
	open var bfury: Int?
	open var mjollnir: Int?
	open var dust: Int?
	open var flask: Int?
	open var wardObserver: Int?
	open var orchid: Int?
	open var ancientJanggo: Int?
	open var abyssalBlade: Int?
	open var magicStick: Int?
	open var travelBoots: Int?
	open var bottle: Int?
	open var blackKingBar: Int?
	open var tpscroll: Int?
	open var faerieFire: Int?
	open var phaseBoots: Int?
	open var moonShard: Int?
	open var solarCrest: Int?
	open var wardSentry: Int?
	open var armlet: Int?
	open var branches: Int?
	open var handOfMidas: Int?


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
		courier = json[kDMItemUsesCourierKey].int
		tango = json[kDMItemUsesTangoKey].int
		powerTreads = json[kDMItemUsesPowerTreadsKey].int
		tangoSingle = json[kDMItemUsesTangoSingleKey].int
		ringOfBasilius = json[kDMItemUsesRingOfBasiliusKey].int
		shadowAmulet = json[kDMItemUsesShadowAmuletKey].int
		bloodthorn = json[kDMItemUsesBloodthornKey].int
		clarity = json[kDMItemUsesClarityKey].int
		pipe = json[kDMItemUsesPipeKey].int
		invisSword = json[kDMItemUsesInvisSwordKey].int
		travelBoots2 = json[kDMItemUsesTravelBoots2Key].int
		wardDispenser = json[kDMItemUsesWardDispenserKey].int
		magicWand = json[kDMItemUsesMagicWandKey].int
		enchantedMango = json[kDMItemUsesEnchantedMangoKey].int
		riverPainter5 = json[kDMItemUsesRiverPainter5Key].int
		crimsonGuard = json[kDMItemUsesCrimsonGuardKey].int
		glimmerCape = json[kDMItemUsesGlimmerCapeKey].int
		silverEdge = json[kDMItemUsesSilverEdgeKey].int
		urnOfShadows = json[kDMItemUsesUrnOfShadowsKey].int
		hoodOfDefiance = json[kDMItemUsesHoodOfDefianceKey].int
		manta = json[kDMItemUsesMantaKey].int
		tomeOfKnowledge = json[kDMItemUsesTomeOfKnowledgeKey].int
		bfury = json[kDMItemUsesBfuryKey].int
		mjollnir = json[kDMItemUsesMjollnirKey].int
		dust = json[kDMItemUsesDustKey].int
		flask = json[kDMItemUsesFlaskKey].int
		wardObserver = json[kDMItemUsesWardObserverKey].int
		orchid = json[kDMItemUsesOrchidKey].int
		ancientJanggo = json[kDMItemUsesAncientJanggoKey].int
		abyssalBlade = json[kDMItemUsesAbyssalBladeKey].int
		magicStick = json[kDMItemUsesMagicStickKey].int
		travelBoots = json[kDMItemUsesTravelBootsKey].int
		bottle = json[kDMItemUsesBottleKey].int
		blackKingBar = json[kDMItemUsesBlackKingBarKey].int
		tpscroll = json[kDMItemUsesTpscrollKey].int
		faerieFire = json[kDMItemUsesFaerieFireKey].int
		phaseBoots = json[kDMItemUsesPhaseBootsKey].int
		moonShard = json[kDMItemUsesMoonShardKey].int
		solarCrest = json[kDMItemUsesSolarCrestKey].int
		wardSentry = json[kDMItemUsesWardSentryKey].int
		armlet = json[kDMItemUsesArmletKey].int
		branches = json[kDMItemUsesBranchesKey].int
		handOfMidas = json[kDMItemUsesHandOfMidasKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if courier != nil {
			dictionary.updateValue(courier! as AnyObject, forKey: kDMItemUsesCourierKey)
		}
		if tango != nil {
			dictionary.updateValue(tango! as AnyObject, forKey: kDMItemUsesTangoKey)
		}
		if powerTreads != nil {
			dictionary.updateValue(powerTreads! as AnyObject, forKey: kDMItemUsesPowerTreadsKey)
		}
		if tangoSingle != nil {
			dictionary.updateValue(tangoSingle! as AnyObject, forKey: kDMItemUsesTangoSingleKey)
		}
		if ringOfBasilius != nil {
			dictionary.updateValue(ringOfBasilius! as AnyObject, forKey: kDMItemUsesRingOfBasiliusKey)
		}
		if shadowAmulet != nil {
			dictionary.updateValue(shadowAmulet! as AnyObject, forKey: kDMItemUsesShadowAmuletKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn! as AnyObject, forKey: kDMItemUsesBloodthornKey)
		}
		if clarity != nil {
			dictionary.updateValue(clarity! as AnyObject, forKey: kDMItemUsesClarityKey)
		}
		if pipe != nil {
			dictionary.updateValue(pipe! as AnyObject, forKey: kDMItemUsesPipeKey)
		}
		if invisSword != nil {
			dictionary.updateValue(invisSword! as AnyObject, forKey: kDMItemUsesInvisSwordKey)
		}
		if travelBoots2 != nil {
			dictionary.updateValue(travelBoots2! as AnyObject, forKey: kDMItemUsesTravelBoots2Key)
		}
		if wardDispenser != nil {
			dictionary.updateValue(wardDispenser! as AnyObject, forKey: kDMItemUsesWardDispenserKey)
		}
		if magicWand != nil {
			dictionary.updateValue(magicWand! as AnyObject, forKey: kDMItemUsesMagicWandKey)
		}
		if enchantedMango != nil {
			dictionary.updateValue(enchantedMango! as AnyObject, forKey: kDMItemUsesEnchantedMangoKey)
		}
		if riverPainter5 != nil {
			dictionary.updateValue(riverPainter5! as AnyObject, forKey: kDMItemUsesRiverPainter5Key)
		}
		if crimsonGuard != nil {
			dictionary.updateValue(crimsonGuard! as AnyObject, forKey: kDMItemUsesCrimsonGuardKey)
		}
		if glimmerCape != nil {
			dictionary.updateValue(glimmerCape! as AnyObject, forKey: kDMItemUsesGlimmerCapeKey)
		}
		if silverEdge != nil {
			dictionary.updateValue(silverEdge! as AnyObject, forKey: kDMItemUsesSilverEdgeKey)
		}
		if urnOfShadows != nil {
			dictionary.updateValue(urnOfShadows! as AnyObject, forKey: kDMItemUsesUrnOfShadowsKey)
		}
		if hoodOfDefiance != nil {
			dictionary.updateValue(hoodOfDefiance! as AnyObject, forKey: kDMItemUsesHoodOfDefianceKey)
		}
		if manta != nil {
			dictionary.updateValue(manta! as AnyObject, forKey: kDMItemUsesMantaKey)
		}
		if tomeOfKnowledge != nil {
			dictionary.updateValue(tomeOfKnowledge! as AnyObject, forKey: kDMItemUsesTomeOfKnowledgeKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury! as AnyObject, forKey: kDMItemUsesBfuryKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir! as AnyObject, forKey: kDMItemUsesMjollnirKey)
		}
		if dust != nil {
			dictionary.updateValue(dust! as AnyObject, forKey: kDMItemUsesDustKey)
		}
		if flask != nil {
			dictionary.updateValue(flask! as AnyObject, forKey: kDMItemUsesFlaskKey)
		}
		if wardObserver != nil {
			dictionary.updateValue(wardObserver! as AnyObject, forKey: kDMItemUsesWardObserverKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid! as AnyObject, forKey: kDMItemUsesOrchidKey)
		}
		if ancientJanggo != nil {
			dictionary.updateValue(ancientJanggo! as AnyObject, forKey: kDMItemUsesAncientJanggoKey)
		}
		if abyssalBlade != nil {
			dictionary.updateValue(abyssalBlade! as AnyObject, forKey: kDMItemUsesAbyssalBladeKey)
		}
		if magicStick != nil {
			dictionary.updateValue(magicStick! as AnyObject, forKey: kDMItemUsesMagicStickKey)
		}
		if travelBoots != nil {
			dictionary.updateValue(travelBoots! as AnyObject, forKey: kDMItemUsesTravelBootsKey)
		}
		if bottle != nil {
			dictionary.updateValue(bottle! as AnyObject, forKey: kDMItemUsesBottleKey)
		}
		if blackKingBar != nil {
			dictionary.updateValue(blackKingBar! as AnyObject, forKey: kDMItemUsesBlackKingBarKey)
		}
		if tpscroll != nil {
			dictionary.updateValue(tpscroll! as AnyObject, forKey: kDMItemUsesTpscrollKey)
		}
		if faerieFire != nil {
			dictionary.updateValue(faerieFire! as AnyObject, forKey: kDMItemUsesFaerieFireKey)
		}
		if phaseBoots != nil {
			dictionary.updateValue(phaseBoots! as AnyObject, forKey: kDMItemUsesPhaseBootsKey)
		}
		if moonShard != nil {
			dictionary.updateValue(moonShard! as AnyObject, forKey: kDMItemUsesMoonShardKey)
		}
		if solarCrest != nil {
			dictionary.updateValue(solarCrest! as AnyObject, forKey: kDMItemUsesSolarCrestKey)
		}
		if wardSentry != nil {
			dictionary.updateValue(wardSentry! as AnyObject, forKey: kDMItemUsesWardSentryKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet! as AnyObject, forKey: kDMItemUsesArmletKey)
		}
		if branches != nil {
			dictionary.updateValue(branches! as AnyObject, forKey: kDMItemUsesBranchesKey)
		}
		if handOfMidas != nil {
			dictionary.updateValue(handOfMidas! as AnyObject, forKey: kDMItemUsesHandOfMidasKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.courier = aDecoder.decodeObject(forKey: kDMItemUsesCourierKey) as? Int
		self.tango = aDecoder.decodeObject(forKey: kDMItemUsesTangoKey) as? Int
		self.powerTreads = aDecoder.decodeObject(forKey: kDMItemUsesPowerTreadsKey) as? Int
		self.tangoSingle = aDecoder.decodeObject(forKey: kDMItemUsesTangoSingleKey) as? Int
		self.ringOfBasilius = aDecoder.decodeObject(forKey: kDMItemUsesRingOfBasiliusKey) as? Int
		self.shadowAmulet = aDecoder.decodeObject(forKey: kDMItemUsesShadowAmuletKey) as? Int
		self.bloodthorn = aDecoder.decodeObject(forKey: kDMItemUsesBloodthornKey) as? Int
		self.clarity = aDecoder.decodeObject(forKey: kDMItemUsesClarityKey) as? Int
		self.pipe = aDecoder.decodeObject(forKey: kDMItemUsesPipeKey) as? Int
		self.invisSword = aDecoder.decodeObject(forKey: kDMItemUsesInvisSwordKey) as? Int
		self.travelBoots2 = aDecoder.decodeObject(forKey: kDMItemUsesTravelBoots2Key) as? Int
		self.wardDispenser = aDecoder.decodeObject(forKey: kDMItemUsesWardDispenserKey) as? Int
		self.magicWand = aDecoder.decodeObject(forKey: kDMItemUsesMagicWandKey) as? Int
		self.enchantedMango = aDecoder.decodeObject(forKey: kDMItemUsesEnchantedMangoKey) as? Int
		self.riverPainter5 = aDecoder.decodeObject(forKey: kDMItemUsesRiverPainter5Key) as? Int
		self.crimsonGuard = aDecoder.decodeObject(forKey: kDMItemUsesCrimsonGuardKey) as? Int
		self.glimmerCape = aDecoder.decodeObject(forKey: kDMItemUsesGlimmerCapeKey) as? Int
		self.silverEdge = aDecoder.decodeObject(forKey: kDMItemUsesSilverEdgeKey) as? Int
		self.urnOfShadows = aDecoder.decodeObject(forKey: kDMItemUsesUrnOfShadowsKey) as? Int
		self.hoodOfDefiance = aDecoder.decodeObject(forKey: kDMItemUsesHoodOfDefianceKey) as? Int
		self.manta = aDecoder.decodeObject(forKey: kDMItemUsesMantaKey) as? Int
		self.tomeOfKnowledge = aDecoder.decodeObject(forKey: kDMItemUsesTomeOfKnowledgeKey) as? Int
		self.bfury = aDecoder.decodeObject(forKey: kDMItemUsesBfuryKey) as? Int
		self.mjollnir = aDecoder.decodeObject(forKey: kDMItemUsesMjollnirKey) as? Int
		self.dust = aDecoder.decodeObject(forKey: kDMItemUsesDustKey) as? Int
		self.flask = aDecoder.decodeObject(forKey: kDMItemUsesFlaskKey) as? Int
		self.wardObserver = aDecoder.decodeObject(forKey: kDMItemUsesWardObserverKey) as? Int
		self.orchid = aDecoder.decodeObject(forKey: kDMItemUsesOrchidKey) as? Int
		self.ancientJanggo = aDecoder.decodeObject(forKey: kDMItemUsesAncientJanggoKey) as? Int
		self.abyssalBlade = aDecoder.decodeObject(forKey: kDMItemUsesAbyssalBladeKey) as? Int
		self.magicStick = aDecoder.decodeObject(forKey: kDMItemUsesMagicStickKey) as? Int
		self.travelBoots = aDecoder.decodeObject(forKey: kDMItemUsesTravelBootsKey) as? Int
		self.bottle = aDecoder.decodeObject(forKey: kDMItemUsesBottleKey) as? Int
		self.blackKingBar = aDecoder.decodeObject(forKey: kDMItemUsesBlackKingBarKey) as? Int
		self.tpscroll = aDecoder.decodeObject(forKey: kDMItemUsesTpscrollKey) as? Int
		self.faerieFire = aDecoder.decodeObject(forKey: kDMItemUsesFaerieFireKey) as? Int
		self.phaseBoots = aDecoder.decodeObject(forKey: kDMItemUsesPhaseBootsKey) as? Int
		self.moonShard = aDecoder.decodeObject(forKey: kDMItemUsesMoonShardKey) as? Int
		self.solarCrest = aDecoder.decodeObject(forKey: kDMItemUsesSolarCrestKey) as? Int
		self.wardSentry = aDecoder.decodeObject(forKey: kDMItemUsesWardSentryKey) as? Int
		self.armlet = aDecoder.decodeObject(forKey: kDMItemUsesArmletKey) as? Int
		self.branches = aDecoder.decodeObject(forKey: kDMItemUsesBranchesKey) as? Int
		self.handOfMidas = aDecoder.decodeObject(forKey: kDMItemUsesHandOfMidasKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(courier, forKey: kDMItemUsesCourierKey)
		aCoder.encode(tango, forKey: kDMItemUsesTangoKey)
		aCoder.encode(powerTreads, forKey: kDMItemUsesPowerTreadsKey)
		aCoder.encode(tangoSingle, forKey: kDMItemUsesTangoSingleKey)
		aCoder.encode(ringOfBasilius, forKey: kDMItemUsesRingOfBasiliusKey)
		aCoder.encode(shadowAmulet, forKey: kDMItemUsesShadowAmuletKey)
		aCoder.encode(bloodthorn, forKey: kDMItemUsesBloodthornKey)
		aCoder.encode(clarity, forKey: kDMItemUsesClarityKey)
		aCoder.encode(pipe, forKey: kDMItemUsesPipeKey)
		aCoder.encode(invisSword, forKey: kDMItemUsesInvisSwordKey)
		aCoder.encode(travelBoots2, forKey: kDMItemUsesTravelBoots2Key)
		aCoder.encode(wardDispenser, forKey: kDMItemUsesWardDispenserKey)
		aCoder.encode(magicWand, forKey: kDMItemUsesMagicWandKey)
		aCoder.encode(enchantedMango, forKey: kDMItemUsesEnchantedMangoKey)
		aCoder.encode(riverPainter5, forKey: kDMItemUsesRiverPainter5Key)
		aCoder.encode(crimsonGuard, forKey: kDMItemUsesCrimsonGuardKey)
		aCoder.encode(glimmerCape, forKey: kDMItemUsesGlimmerCapeKey)
		aCoder.encode(silverEdge, forKey: kDMItemUsesSilverEdgeKey)
		aCoder.encode(urnOfShadows, forKey: kDMItemUsesUrnOfShadowsKey)
		aCoder.encode(hoodOfDefiance, forKey: kDMItemUsesHoodOfDefianceKey)
		aCoder.encode(manta, forKey: kDMItemUsesMantaKey)
		aCoder.encode(tomeOfKnowledge, forKey: kDMItemUsesTomeOfKnowledgeKey)
		aCoder.encode(bfury, forKey: kDMItemUsesBfuryKey)
		aCoder.encode(mjollnir, forKey: kDMItemUsesMjollnirKey)
		aCoder.encode(dust, forKey: kDMItemUsesDustKey)
		aCoder.encode(flask, forKey: kDMItemUsesFlaskKey)
		aCoder.encode(wardObserver, forKey: kDMItemUsesWardObserverKey)
		aCoder.encode(orchid, forKey: kDMItemUsesOrchidKey)
		aCoder.encode(ancientJanggo, forKey: kDMItemUsesAncientJanggoKey)
		aCoder.encode(abyssalBlade, forKey: kDMItemUsesAbyssalBladeKey)
		aCoder.encode(magicStick, forKey: kDMItemUsesMagicStickKey)
		aCoder.encode(travelBoots, forKey: kDMItemUsesTravelBootsKey)
		aCoder.encode(bottle, forKey: kDMItemUsesBottleKey)
		aCoder.encode(blackKingBar, forKey: kDMItemUsesBlackKingBarKey)
		aCoder.encode(tpscroll, forKey: kDMItemUsesTpscrollKey)
		aCoder.encode(faerieFire, forKey: kDMItemUsesFaerieFireKey)
		aCoder.encode(phaseBoots, forKey: kDMItemUsesPhaseBootsKey)
		aCoder.encode(moonShard, forKey: kDMItemUsesMoonShardKey)
		aCoder.encode(solarCrest, forKey: kDMItemUsesSolarCrestKey)
		aCoder.encode(wardSentry, forKey: kDMItemUsesWardSentryKey)
		aCoder.encode(armlet, forKey: kDMItemUsesArmletKey)
		aCoder.encode(branches, forKey: kDMItemUsesBranchesKey)
		aCoder.encode(handOfMidas, forKey: kDMItemUsesHandOfMidasKey)

    }

}
