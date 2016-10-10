//
//  DMHeroHits.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMHeroHits: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMHeroHitsMaelstromKey: String = "maelstrom"
	internal let kDMHeroHitsBloodthornKey: String = "bloodthorn"
	internal let kDMHeroHitsAbaddonAphoticShieldKey: String = "abaddon_aphotic_shield"
	internal let kDMHeroHitsJuggernautBladeFuryKey: String = "juggernaut_blade_fury"
	internal let kDMHeroHitsVengefulspiritWaveOfTerrorKey: String = "vengefulspirit_wave_of_terror"
	internal let kDMHeroHitsViperCorrosiveSkinKey: String = "viper_corrosive_skin"
	internal let kDMHeroHitsEmberSpiritFlameGuardKey: String = "ember_spirit_flame_guard"
	internal let kDMHeroHitsNevermoreShadowraze2Key: String = "nevermore_shadowraze2"
	internal let kDMHeroHitsNevermoreRequiemKey: String = "nevermore_requiem"
	internal let kDMHeroHitsCrystalMaidenCrystalNovaKey: String = "crystal_maiden_crystal_nova"
	internal let kDMHeroHitsNullKey: String = "null"
	internal let kDMHeroHitsVengefulspiritMagicMissileKey: String = "vengefulspirit_magic_missile"
	internal let kDMHeroHitsViperPoisonAttackKey: String = "viper_poison_attack"
	internal let kDMHeroHitsEmberSpiritActivateFireRemnantKey: String = "ember_spirit_activate_fire_remnant"
	internal let kDMHeroHitsNevermoreShadowraze3Key: String = "nevermore_shadowraze3"
	internal let kDMHeroHitsArcWardenTempestDoubleKey: String = "arc_warden_tempest_double"
	internal let kDMHeroHitsBfuryKey: String = "bfury"
	internal let kDMHeroHitsMjollnirKey: String = "mjollnir"
	internal let kDMHeroHitsBristlebackQuillSprayKey: String = "bristleback_quill_spray"
	internal let kDMHeroHitsArcWardenFluxKey: String = "arc_warden_flux"
	internal let kDMHeroHitsAbaddonDeathCoilKey: String = "abaddon_death_coil"
	internal let kDMHeroHitsCrystalMaidenFrostbiteKey: String = "crystal_maiden_frostbite"
	internal let kDMHeroHitsArcWardenSparkWraithKey: String = "arc_warden_spark_wraith"
	internal let kDMHeroHitsNevermoreShadowraze1Key: String = "nevermore_shadowraze1"
	internal let kDMHeroHitsKunkkaGhostshipKey: String = "kunkka_ghostship"
	internal let kDMHeroHitsJuggernautOmniSlashKey: String = "juggernaut_omni_slash"
	internal let kDMHeroHitsCrystalMaidenFreezingFieldKey: String = "crystal_maiden_freezing_field"
	internal let kDMHeroHitsOrchidKey: String = "orchid"
	internal let kDMHeroHitsEmberSpiritSearingChainsKey: String = "ember_spirit_searing_chains"
	internal let kDMHeroHitsKunkkaTorrentKey: String = "kunkka_torrent"
	internal let kDMHeroHitsKunkkaTidebringerKey: String = "kunkka_tidebringer"
	internal let kDMHeroHitsArmletKey: String = "armlet"
	internal let kDMHeroHitsViperViperStrikeKey: String = "viper_viper_strike"


    // MARK: Properties
	open var maelstrom: Int?
	open var bloodthorn: Int?
	open var abaddonAphoticShield: Int?
	open var juggernautBladeFury: Int?
	open var vengefulspiritWaveOfTerror: Int?
	open var viperCorrosiveSkin: Int?
	open var emberSpiritFlameGuard: Int?
	open var nevermoreShadowraze2: Int?
	open var nevermoreRequiem: Int?
	open var crystalMaidenCrystalNova: Int?
	open var null: Int?
	open var vengefulspiritMagicMissile: Int?
	open var viperPoisonAttack: Int?
	open var emberSpiritActivateFireRemnant: Int?
	open var nevermoreShadowraze3: Int?
	open var arcWardenTempestDouble: Int?
	open var bfury: Int?
	open var mjollnir: Int?
	open var bristlebackQuillSpray: Int?
	open var arcWardenFlux: Int?
	open var abaddonDeathCoil: Int?
	open var crystalMaidenFrostbite: Int?
	open var arcWardenSparkWraith: Int?
	open var nevermoreShadowraze1: Int?
	open var kunkkaGhostship: Int?
	open var juggernautOmniSlash: Int?
	open var crystalMaidenFreezingField: Int?
	open var orchid: Int?
	open var emberSpiritSearingChains: Int?
	open var kunkkaTorrent: Int?
	open var kunkkaTidebringer: Int?
	open var armlet: Int?
	open var viperViperStrike: Int?


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
		maelstrom = json[kDMHeroHitsMaelstromKey].int
		bloodthorn = json[kDMHeroHitsBloodthornKey].int
		abaddonAphoticShield = json[kDMHeroHitsAbaddonAphoticShieldKey].int
		juggernautBladeFury = json[kDMHeroHitsJuggernautBladeFuryKey].int
		vengefulspiritWaveOfTerror = json[kDMHeroHitsVengefulspiritWaveOfTerrorKey].int
		viperCorrosiveSkin = json[kDMHeroHitsViperCorrosiveSkinKey].int
		emberSpiritFlameGuard = json[kDMHeroHitsEmberSpiritFlameGuardKey].int
		nevermoreShadowraze2 = json[kDMHeroHitsNevermoreShadowraze2Key].int
		nevermoreRequiem = json[kDMHeroHitsNevermoreRequiemKey].int
		crystalMaidenCrystalNova = json[kDMHeroHitsCrystalMaidenCrystalNovaKey].int
		null = json[kDMHeroHitsNullKey].int
		vengefulspiritMagicMissile = json[kDMHeroHitsVengefulspiritMagicMissileKey].int
		viperPoisonAttack = json[kDMHeroHitsViperPoisonAttackKey].int
		emberSpiritActivateFireRemnant = json[kDMHeroHitsEmberSpiritActivateFireRemnantKey].int
		nevermoreShadowraze3 = json[kDMHeroHitsNevermoreShadowraze3Key].int
		arcWardenTempestDouble = json[kDMHeroHitsArcWardenTempestDoubleKey].int
		bfury = json[kDMHeroHitsBfuryKey].int
		mjollnir = json[kDMHeroHitsMjollnirKey].int
		bristlebackQuillSpray = json[kDMHeroHitsBristlebackQuillSprayKey].int
		arcWardenFlux = json[kDMHeroHitsArcWardenFluxKey].int
		abaddonDeathCoil = json[kDMHeroHitsAbaddonDeathCoilKey].int
		crystalMaidenFrostbite = json[kDMHeroHitsCrystalMaidenFrostbiteKey].int
		arcWardenSparkWraith = json[kDMHeroHitsArcWardenSparkWraithKey].int
		nevermoreShadowraze1 = json[kDMHeroHitsNevermoreShadowraze1Key].int
		kunkkaGhostship = json[kDMHeroHitsKunkkaGhostshipKey].int
		juggernautOmniSlash = json[kDMHeroHitsJuggernautOmniSlashKey].int
		crystalMaidenFreezingField = json[kDMHeroHitsCrystalMaidenFreezingFieldKey].int
		orchid = json[kDMHeroHitsOrchidKey].int
		emberSpiritSearingChains = json[kDMHeroHitsEmberSpiritSearingChainsKey].int
		kunkkaTorrent = json[kDMHeroHitsKunkkaTorrentKey].int
		kunkkaTidebringer = json[kDMHeroHitsKunkkaTidebringerKey].int
		armlet = json[kDMHeroHitsArmletKey].int
		viperViperStrike = json[kDMHeroHitsViperViperStrikeKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if maelstrom != nil {
			dictionary.updateValue(maelstrom! as AnyObject, forKey: kDMHeroHitsMaelstromKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn! as AnyObject, forKey: kDMHeroHitsBloodthornKey)
		}
		if abaddonAphoticShield != nil {
			dictionary.updateValue(abaddonAphoticShield! as AnyObject, forKey: kDMHeroHitsAbaddonAphoticShieldKey)
		}
		if juggernautBladeFury != nil {
			dictionary.updateValue(juggernautBladeFury! as AnyObject, forKey: kDMHeroHitsJuggernautBladeFuryKey)
		}
		if vengefulspiritWaveOfTerror != nil {
			dictionary.updateValue(vengefulspiritWaveOfTerror! as AnyObject, forKey: kDMHeroHitsVengefulspiritWaveOfTerrorKey)
		}
		if viperCorrosiveSkin != nil {
			dictionary.updateValue(viperCorrosiveSkin! as AnyObject, forKey: kDMHeroHitsViperCorrosiveSkinKey)
		}
		if emberSpiritFlameGuard != nil {
			dictionary.updateValue(emberSpiritFlameGuard! as AnyObject, forKey: kDMHeroHitsEmberSpiritFlameGuardKey)
		}
		if nevermoreShadowraze2 != nil {
			dictionary.updateValue(nevermoreShadowraze2! as AnyObject, forKey: kDMHeroHitsNevermoreShadowraze2Key)
		}
		if nevermoreRequiem != nil {
			dictionary.updateValue(nevermoreRequiem! as AnyObject, forKey: kDMHeroHitsNevermoreRequiemKey)
		}
		if crystalMaidenCrystalNova != nil {
			dictionary.updateValue(crystalMaidenCrystalNova! as AnyObject, forKey: kDMHeroHitsCrystalMaidenCrystalNovaKey)
		}
		if null != nil {
			dictionary.updateValue(null! as AnyObject, forKey: kDMHeroHitsNullKey)
		}
		if vengefulspiritMagicMissile != nil {
			dictionary.updateValue(vengefulspiritMagicMissile! as AnyObject, forKey: kDMHeroHitsVengefulspiritMagicMissileKey)
		}
		if viperPoisonAttack != nil {
			dictionary.updateValue(viperPoisonAttack! as AnyObject, forKey: kDMHeroHitsViperPoisonAttackKey)
		}
		if emberSpiritActivateFireRemnant != nil {
			dictionary.updateValue(emberSpiritActivateFireRemnant! as AnyObject, forKey: kDMHeroHitsEmberSpiritActivateFireRemnantKey)
		}
		if nevermoreShadowraze3 != nil {
			dictionary.updateValue(nevermoreShadowraze3! as AnyObject, forKey: kDMHeroHitsNevermoreShadowraze3Key)
		}
		if arcWardenTempestDouble != nil {
			dictionary.updateValue(arcWardenTempestDouble! as AnyObject, forKey: kDMHeroHitsArcWardenTempestDoubleKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury! as AnyObject, forKey: kDMHeroHitsBfuryKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir! as AnyObject, forKey: kDMHeroHitsMjollnirKey)
		}
		if bristlebackQuillSpray != nil {
			dictionary.updateValue(bristlebackQuillSpray! as AnyObject, forKey: kDMHeroHitsBristlebackQuillSprayKey)
		}
		if arcWardenFlux != nil {
			dictionary.updateValue(arcWardenFlux! as AnyObject, forKey: kDMHeroHitsArcWardenFluxKey)
		}
		if abaddonDeathCoil != nil {
			dictionary.updateValue(abaddonDeathCoil! as AnyObject, forKey: kDMHeroHitsAbaddonDeathCoilKey)
		}
		if crystalMaidenFrostbite != nil {
			dictionary.updateValue(crystalMaidenFrostbite! as AnyObject, forKey: kDMHeroHitsCrystalMaidenFrostbiteKey)
		}
		if arcWardenSparkWraith != nil {
			dictionary.updateValue(arcWardenSparkWraith! as AnyObject, forKey: kDMHeroHitsArcWardenSparkWraithKey)
		}
		if nevermoreShadowraze1 != nil {
			dictionary.updateValue(nevermoreShadowraze1! as AnyObject, forKey: kDMHeroHitsNevermoreShadowraze1Key)
		}
		if kunkkaGhostship != nil {
			dictionary.updateValue(kunkkaGhostship! as AnyObject, forKey: kDMHeroHitsKunkkaGhostshipKey)
		}
		if juggernautOmniSlash != nil {
			dictionary.updateValue(juggernautOmniSlash! as AnyObject, forKey: kDMHeroHitsJuggernautOmniSlashKey)
		}
		if crystalMaidenFreezingField != nil {
			dictionary.updateValue(crystalMaidenFreezingField! as AnyObject, forKey: kDMHeroHitsCrystalMaidenFreezingFieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid! as AnyObject, forKey: kDMHeroHitsOrchidKey)
		}
		if emberSpiritSearingChains != nil {
			dictionary.updateValue(emberSpiritSearingChains! as AnyObject, forKey: kDMHeroHitsEmberSpiritSearingChainsKey)
		}
		if kunkkaTorrent != nil {
			dictionary.updateValue(kunkkaTorrent! as AnyObject, forKey: kDMHeroHitsKunkkaTorrentKey)
		}
		if kunkkaTidebringer != nil {
			dictionary.updateValue(kunkkaTidebringer! as AnyObject, forKey: kDMHeroHitsKunkkaTidebringerKey)
		}
		if armlet != nil {
			dictionary.updateValue(armlet! as AnyObject, forKey: kDMHeroHitsArmletKey)
		}
		if viperViperStrike != nil {
			dictionary.updateValue(viperViperStrike! as AnyObject, forKey: kDMHeroHitsViperViperStrikeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.maelstrom = aDecoder.decodeObject(forKey: kDMHeroHitsMaelstromKey) as? Int
		self.bloodthorn = aDecoder.decodeObject(forKey: kDMHeroHitsBloodthornKey) as? Int
		self.abaddonAphoticShield = aDecoder.decodeObject(forKey: kDMHeroHitsAbaddonAphoticShieldKey) as? Int
		self.juggernautBladeFury = aDecoder.decodeObject(forKey: kDMHeroHitsJuggernautBladeFuryKey) as? Int
		self.vengefulspiritWaveOfTerror = aDecoder.decodeObject(forKey: kDMHeroHitsVengefulspiritWaveOfTerrorKey) as? Int
		self.viperCorrosiveSkin = aDecoder.decodeObject(forKey: kDMHeroHitsViperCorrosiveSkinKey) as? Int
		self.emberSpiritFlameGuard = aDecoder.decodeObject(forKey: kDMHeroHitsEmberSpiritFlameGuardKey) as? Int
		self.nevermoreShadowraze2 = aDecoder.decodeObject(forKey: kDMHeroHitsNevermoreShadowraze2Key) as? Int
		self.nevermoreRequiem = aDecoder.decodeObject(forKey: kDMHeroHitsNevermoreRequiemKey) as? Int
		self.crystalMaidenCrystalNova = aDecoder.decodeObject(forKey: kDMHeroHitsCrystalMaidenCrystalNovaKey) as? Int
		self.null = aDecoder.decodeObject(forKey: kDMHeroHitsNullKey) as? Int
		self.vengefulspiritMagicMissile = aDecoder.decodeObject(forKey: kDMHeroHitsVengefulspiritMagicMissileKey) as? Int
		self.viperPoisonAttack = aDecoder.decodeObject(forKey: kDMHeroHitsViperPoisonAttackKey) as? Int
		self.emberSpiritActivateFireRemnant = aDecoder.decodeObject(forKey: kDMHeroHitsEmberSpiritActivateFireRemnantKey) as? Int
		self.nevermoreShadowraze3 = aDecoder.decodeObject(forKey: kDMHeroHitsNevermoreShadowraze3Key) as? Int
		self.arcWardenTempestDouble = aDecoder.decodeObject(forKey: kDMHeroHitsArcWardenTempestDoubleKey) as? Int
		self.bfury = aDecoder.decodeObject(forKey: kDMHeroHitsBfuryKey) as? Int
		self.mjollnir = aDecoder.decodeObject(forKey: kDMHeroHitsMjollnirKey) as? Int
		self.bristlebackQuillSpray = aDecoder.decodeObject(forKey: kDMHeroHitsBristlebackQuillSprayKey) as? Int
		self.arcWardenFlux = aDecoder.decodeObject(forKey: kDMHeroHitsArcWardenFluxKey) as? Int
		self.abaddonDeathCoil = aDecoder.decodeObject(forKey: kDMHeroHitsAbaddonDeathCoilKey) as? Int
		self.crystalMaidenFrostbite = aDecoder.decodeObject(forKey: kDMHeroHitsCrystalMaidenFrostbiteKey) as? Int
		self.arcWardenSparkWraith = aDecoder.decodeObject(forKey: kDMHeroHitsArcWardenSparkWraithKey) as? Int
		self.nevermoreShadowraze1 = aDecoder.decodeObject(forKey: kDMHeroHitsNevermoreShadowraze1Key) as? Int
		self.kunkkaGhostship = aDecoder.decodeObject(forKey: kDMHeroHitsKunkkaGhostshipKey) as? Int
		self.juggernautOmniSlash = aDecoder.decodeObject(forKey: kDMHeroHitsJuggernautOmniSlashKey) as? Int
		self.crystalMaidenFreezingField = aDecoder.decodeObject(forKey: kDMHeroHitsCrystalMaidenFreezingFieldKey) as? Int
		self.orchid = aDecoder.decodeObject(forKey: kDMHeroHitsOrchidKey) as? Int
		self.emberSpiritSearingChains = aDecoder.decodeObject(forKey: kDMHeroHitsEmberSpiritSearingChainsKey) as? Int
		self.kunkkaTorrent = aDecoder.decodeObject(forKey: kDMHeroHitsKunkkaTorrentKey) as? Int
		self.kunkkaTidebringer = aDecoder.decodeObject(forKey: kDMHeroHitsKunkkaTidebringerKey) as? Int
		self.armlet = aDecoder.decodeObject(forKey: kDMHeroHitsArmletKey) as? Int
		self.viperViperStrike = aDecoder.decodeObject(forKey: kDMHeroHitsViperViperStrikeKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(maelstrom, forKey: kDMHeroHitsMaelstromKey)
		aCoder.encode(bloodthorn, forKey: kDMHeroHitsBloodthornKey)
		aCoder.encode(abaddonAphoticShield, forKey: kDMHeroHitsAbaddonAphoticShieldKey)
		aCoder.encode(juggernautBladeFury, forKey: kDMHeroHitsJuggernautBladeFuryKey)
		aCoder.encode(vengefulspiritWaveOfTerror, forKey: kDMHeroHitsVengefulspiritWaveOfTerrorKey)
		aCoder.encode(viperCorrosiveSkin, forKey: kDMHeroHitsViperCorrosiveSkinKey)
		aCoder.encode(emberSpiritFlameGuard, forKey: kDMHeroHitsEmberSpiritFlameGuardKey)
		aCoder.encode(nevermoreShadowraze2, forKey: kDMHeroHitsNevermoreShadowraze2Key)
		aCoder.encode(nevermoreRequiem, forKey: kDMHeroHitsNevermoreRequiemKey)
		aCoder.encode(crystalMaidenCrystalNova, forKey: kDMHeroHitsCrystalMaidenCrystalNovaKey)
		aCoder.encode(null, forKey: kDMHeroHitsNullKey)
		aCoder.encode(vengefulspiritMagicMissile, forKey: kDMHeroHitsVengefulspiritMagicMissileKey)
		aCoder.encode(viperPoisonAttack, forKey: kDMHeroHitsViperPoisonAttackKey)
		aCoder.encode(emberSpiritActivateFireRemnant, forKey: kDMHeroHitsEmberSpiritActivateFireRemnantKey)
		aCoder.encode(nevermoreShadowraze3, forKey: kDMHeroHitsNevermoreShadowraze3Key)
		aCoder.encode(arcWardenTempestDouble, forKey: kDMHeroHitsArcWardenTempestDoubleKey)
		aCoder.encode(bfury, forKey: kDMHeroHitsBfuryKey)
		aCoder.encode(mjollnir, forKey: kDMHeroHitsMjollnirKey)
		aCoder.encode(bristlebackQuillSpray, forKey: kDMHeroHitsBristlebackQuillSprayKey)
		aCoder.encode(arcWardenFlux, forKey: kDMHeroHitsArcWardenFluxKey)
		aCoder.encode(abaddonDeathCoil, forKey: kDMHeroHitsAbaddonDeathCoilKey)
		aCoder.encode(crystalMaidenFrostbite, forKey: kDMHeroHitsCrystalMaidenFrostbiteKey)
		aCoder.encode(arcWardenSparkWraith, forKey: kDMHeroHitsArcWardenSparkWraithKey)
		aCoder.encode(nevermoreShadowraze1, forKey: kDMHeroHitsNevermoreShadowraze1Key)
		aCoder.encode(kunkkaGhostship, forKey: kDMHeroHitsKunkkaGhostshipKey)
		aCoder.encode(juggernautOmniSlash, forKey: kDMHeroHitsJuggernautOmniSlashKey)
		aCoder.encode(crystalMaidenFreezingField, forKey: kDMHeroHitsCrystalMaidenFreezingFieldKey)
		aCoder.encode(orchid, forKey: kDMHeroHitsOrchidKey)
		aCoder.encode(emberSpiritSearingChains, forKey: kDMHeroHitsEmberSpiritSearingChainsKey)
		aCoder.encode(kunkkaTorrent, forKey: kDMHeroHitsKunkkaTorrentKey)
		aCoder.encode(kunkkaTidebringer, forKey: kDMHeroHitsKunkkaTidebringerKey)
		aCoder.encode(armlet, forKey: kDMHeroHitsArmletKey)
		aCoder.encode(viperViperStrike, forKey: kDMHeroHitsViperViperStrikeKey)

    }

}
