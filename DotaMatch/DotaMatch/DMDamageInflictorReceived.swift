//
//  DMDamageInflictorReceived.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMDamageInflictorReceived: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMDamageInflictorReceivedMaelstromKey: String = "maelstrom"
	internal let kDMDamageInflictorReceivedAbaddonAphoticShieldKey: String = "abaddon_aphotic_shield"
	internal let kDMDamageInflictorReceivedBloodthornKey: String = "bloodthorn"
	internal let kDMDamageInflictorReceivedJuggernautBladeFuryKey: String = "juggernaut_blade_fury"
	internal let kDMDamageInflictorReceivedVengefulspiritWaveOfTerrorKey: String = "vengefulspirit_wave_of_terror"
	internal let kDMDamageInflictorReceivedViperCorrosiveSkinKey: String = "viper_corrosive_skin"
	internal let kDMDamageInflictorReceivedEmberSpiritFlameGuardKey: String = "ember_spirit_flame_guard"
	internal let kDMDamageInflictorReceivedNevermoreShadowraze2Key: String = "nevermore_shadowraze2"
	internal let kDMDamageInflictorReceivedNevermoreRequiemKey: String = "nevermore_requiem"
	internal let kDMDamageInflictorReceivedCrystalMaidenCrystalNovaKey: String = "crystal_maiden_crystal_nova"
	internal let kDMDamageInflictorReceivedNullKey: String = "null"
	internal let kDMDamageInflictorReceivedVengefulspiritMagicMissileKey: String = "vengefulspirit_magic_missile"
	internal let kDMDamageInflictorReceivedViperPoisonAttackKey: String = "viper_poison_attack"
	internal let kDMDamageInflictorReceivedNevermoreShadowraze3Key: String = "nevermore_shadowraze3"
	internal let kDMDamageInflictorReceivedEmberSpiritActivateFireRemnantKey: String = "ember_spirit_activate_fire_remnant"
	internal let kDMDamageInflictorReceivedBfuryKey: String = "bfury"
	internal let kDMDamageInflictorReceivedMjollnirKey: String = "mjollnir"
	internal let kDMDamageInflictorReceivedBristlebackQuillSprayKey: String = "bristleback_quill_spray"
	internal let kDMDamageInflictorReceivedArcWardenFluxKey: String = "arc_warden_flux"
	internal let kDMDamageInflictorReceivedCrystalMaidenFrostbiteKey: String = "crystal_maiden_frostbite"
	internal let kDMDamageInflictorReceivedKunkkaGhostshipKey: String = "kunkka_ghostship"
	internal let kDMDamageInflictorReceivedArcWardenSparkWraithKey: String = "arc_warden_spark_wraith"
	internal let kDMDamageInflictorReceivedNevermoreShadowraze1Key: String = "nevermore_shadowraze1"
	internal let kDMDamageInflictorReceivedAbaddonDeathCoilKey: String = "abaddon_death_coil"
	internal let kDMDamageInflictorReceivedJuggernautOmniSlashKey: String = "juggernaut_omni_slash"
	internal let kDMDamageInflictorReceivedCrystalMaidenFreezingFieldKey: String = "crystal_maiden_freezing_field"
	internal let kDMDamageInflictorReceivedOrchidKey: String = "orchid"
	internal let kDMDamageInflictorReceivedEmberSpiritSearingChainsKey: String = "ember_spirit_searing_chains"
	internal let kDMDamageInflictorReceivedKunkkaTorrentKey: String = "kunkka_torrent"
	internal let kDMDamageInflictorReceivedKunkkaTidebringerKey: String = "kunkka_tidebringer"
	internal let kDMDamageInflictorReceivedViperViperStrikeKey: String = "viper_viper_strike"


    // MARK: Properties
	open var maelstrom: Int?
	open var abaddonAphoticShield: Int?
	open var bloodthorn: Int?
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
	open var nevermoreShadowraze3: Int?
	open var emberSpiritActivateFireRemnant: Int?
	open var bfury: Int?
	open var mjollnir: Int?
	open var bristlebackQuillSpray: Int?
	open var arcWardenFlux: Int?
	open var crystalMaidenFrostbite: Int?
	open var kunkkaGhostship: Int?
	open var arcWardenSparkWraith: Int?
	open var nevermoreShadowraze1: Int?
	open var abaddonDeathCoil: Int?
	open var juggernautOmniSlash: Int?
	open var crystalMaidenFreezingField: Int?
	open var orchid: Int?
	open var emberSpiritSearingChains: Int?
	open var kunkkaTorrent: Int?
	open var kunkkaTidebringer: Int?
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
		maelstrom = json[kDMDamageInflictorReceivedMaelstromKey].int
		abaddonAphoticShield = json[kDMDamageInflictorReceivedAbaddonAphoticShieldKey].int
		bloodthorn = json[kDMDamageInflictorReceivedBloodthornKey].int
		juggernautBladeFury = json[kDMDamageInflictorReceivedJuggernautBladeFuryKey].int
		vengefulspiritWaveOfTerror = json[kDMDamageInflictorReceivedVengefulspiritWaveOfTerrorKey].int
		viperCorrosiveSkin = json[kDMDamageInflictorReceivedViperCorrosiveSkinKey].int
		emberSpiritFlameGuard = json[kDMDamageInflictorReceivedEmberSpiritFlameGuardKey].int
		nevermoreShadowraze2 = json[kDMDamageInflictorReceivedNevermoreShadowraze2Key].int
		nevermoreRequiem = json[kDMDamageInflictorReceivedNevermoreRequiemKey].int
		crystalMaidenCrystalNova = json[kDMDamageInflictorReceivedCrystalMaidenCrystalNovaKey].int
		null = json[kDMDamageInflictorReceivedNullKey].int
		vengefulspiritMagicMissile = json[kDMDamageInflictorReceivedVengefulspiritMagicMissileKey].int
		viperPoisonAttack = json[kDMDamageInflictorReceivedViperPoisonAttackKey].int
		nevermoreShadowraze3 = json[kDMDamageInflictorReceivedNevermoreShadowraze3Key].int
		emberSpiritActivateFireRemnant = json[kDMDamageInflictorReceivedEmberSpiritActivateFireRemnantKey].int
		bfury = json[kDMDamageInflictorReceivedBfuryKey].int
		mjollnir = json[kDMDamageInflictorReceivedMjollnirKey].int
		bristlebackQuillSpray = json[kDMDamageInflictorReceivedBristlebackQuillSprayKey].int
		arcWardenFlux = json[kDMDamageInflictorReceivedArcWardenFluxKey].int
		crystalMaidenFrostbite = json[kDMDamageInflictorReceivedCrystalMaidenFrostbiteKey].int
		kunkkaGhostship = json[kDMDamageInflictorReceivedKunkkaGhostshipKey].int
		arcWardenSparkWraith = json[kDMDamageInflictorReceivedArcWardenSparkWraithKey].int
		nevermoreShadowraze1 = json[kDMDamageInflictorReceivedNevermoreShadowraze1Key].int
		abaddonDeathCoil = json[kDMDamageInflictorReceivedAbaddonDeathCoilKey].int
		juggernautOmniSlash = json[kDMDamageInflictorReceivedJuggernautOmniSlashKey].int
		crystalMaidenFreezingField = json[kDMDamageInflictorReceivedCrystalMaidenFreezingFieldKey].int
		orchid = json[kDMDamageInflictorReceivedOrchidKey].int
		emberSpiritSearingChains = json[kDMDamageInflictorReceivedEmberSpiritSearingChainsKey].int
		kunkkaTorrent = json[kDMDamageInflictorReceivedKunkkaTorrentKey].int
		kunkkaTidebringer = json[kDMDamageInflictorReceivedKunkkaTidebringerKey].int
		viperViperStrike = json[kDMDamageInflictorReceivedViperViperStrikeKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if maelstrom != nil {
			dictionary.updateValue(maelstrom! as AnyObject, forKey: kDMDamageInflictorReceivedMaelstromKey)
		}
		if abaddonAphoticShield != nil {
			dictionary.updateValue(abaddonAphoticShield! as AnyObject, forKey: kDMDamageInflictorReceivedAbaddonAphoticShieldKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn! as AnyObject, forKey: kDMDamageInflictorReceivedBloodthornKey)
		}
		if juggernautBladeFury != nil {
			dictionary.updateValue(juggernautBladeFury! as AnyObject, forKey: kDMDamageInflictorReceivedJuggernautBladeFuryKey)
		}
		if vengefulspiritWaveOfTerror != nil {
			dictionary.updateValue(vengefulspiritWaveOfTerror! as AnyObject, forKey: kDMDamageInflictorReceivedVengefulspiritWaveOfTerrorKey)
		}
		if viperCorrosiveSkin != nil {
			dictionary.updateValue(viperCorrosiveSkin! as AnyObject, forKey: kDMDamageInflictorReceivedViperCorrosiveSkinKey)
		}
		if emberSpiritFlameGuard != nil {
			dictionary.updateValue(emberSpiritFlameGuard! as AnyObject, forKey: kDMDamageInflictorReceivedEmberSpiritFlameGuardKey)
		}
		if nevermoreShadowraze2 != nil {
			dictionary.updateValue(nevermoreShadowraze2! as AnyObject, forKey: kDMDamageInflictorReceivedNevermoreShadowraze2Key)
		}
		if nevermoreRequiem != nil {
			dictionary.updateValue(nevermoreRequiem! as AnyObject, forKey: kDMDamageInflictorReceivedNevermoreRequiemKey)
		}
		if crystalMaidenCrystalNova != nil {
			dictionary.updateValue(crystalMaidenCrystalNova! as AnyObject, forKey: kDMDamageInflictorReceivedCrystalMaidenCrystalNovaKey)
		}
		if null != nil {
			dictionary.updateValue(null! as AnyObject, forKey: kDMDamageInflictorReceivedNullKey)
		}
		if vengefulspiritMagicMissile != nil {
			dictionary.updateValue(vengefulspiritMagicMissile! as AnyObject, forKey: kDMDamageInflictorReceivedVengefulspiritMagicMissileKey)
		}
		if viperPoisonAttack != nil {
			dictionary.updateValue(viperPoisonAttack! as AnyObject, forKey: kDMDamageInflictorReceivedViperPoisonAttackKey)
		}
		if nevermoreShadowraze3 != nil {
			dictionary.updateValue(nevermoreShadowraze3! as AnyObject, forKey: kDMDamageInflictorReceivedNevermoreShadowraze3Key)
		}
		if emberSpiritActivateFireRemnant != nil {
			dictionary.updateValue(emberSpiritActivateFireRemnant! as AnyObject, forKey: kDMDamageInflictorReceivedEmberSpiritActivateFireRemnantKey)
		}
		if bfury != nil {
			dictionary.updateValue(bfury! as AnyObject, forKey: kDMDamageInflictorReceivedBfuryKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir! as AnyObject, forKey: kDMDamageInflictorReceivedMjollnirKey)
		}
		if bristlebackQuillSpray != nil {
			dictionary.updateValue(bristlebackQuillSpray! as AnyObject, forKey: kDMDamageInflictorReceivedBristlebackQuillSprayKey)
		}
		if arcWardenFlux != nil {
			dictionary.updateValue(arcWardenFlux! as AnyObject, forKey: kDMDamageInflictorReceivedArcWardenFluxKey)
		}
		if crystalMaidenFrostbite != nil {
			dictionary.updateValue(crystalMaidenFrostbite! as AnyObject, forKey: kDMDamageInflictorReceivedCrystalMaidenFrostbiteKey)
		}
		if kunkkaGhostship != nil {
			dictionary.updateValue(kunkkaGhostship! as AnyObject, forKey: kDMDamageInflictorReceivedKunkkaGhostshipKey)
		}
		if arcWardenSparkWraith != nil {
			dictionary.updateValue(arcWardenSparkWraith! as AnyObject, forKey: kDMDamageInflictorReceivedArcWardenSparkWraithKey)
		}
		if nevermoreShadowraze1 != nil {
			dictionary.updateValue(nevermoreShadowraze1! as AnyObject, forKey: kDMDamageInflictorReceivedNevermoreShadowraze1Key)
		}
		if abaddonDeathCoil != nil {
			dictionary.updateValue(abaddonDeathCoil! as AnyObject, forKey: kDMDamageInflictorReceivedAbaddonDeathCoilKey)
		}
		if juggernautOmniSlash != nil {
			dictionary.updateValue(juggernautOmniSlash! as AnyObject, forKey: kDMDamageInflictorReceivedJuggernautOmniSlashKey)
		}
		if crystalMaidenFreezingField != nil {
			dictionary.updateValue(crystalMaidenFreezingField! as AnyObject, forKey: kDMDamageInflictorReceivedCrystalMaidenFreezingFieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid! as AnyObject, forKey: kDMDamageInflictorReceivedOrchidKey)
		}
		if emberSpiritSearingChains != nil {
			dictionary.updateValue(emberSpiritSearingChains! as AnyObject, forKey: kDMDamageInflictorReceivedEmberSpiritSearingChainsKey)
		}
		if kunkkaTorrent != nil {
			dictionary.updateValue(kunkkaTorrent! as AnyObject, forKey: kDMDamageInflictorReceivedKunkkaTorrentKey)
		}
		if kunkkaTidebringer != nil {
			dictionary.updateValue(kunkkaTidebringer! as AnyObject, forKey: kDMDamageInflictorReceivedKunkkaTidebringerKey)
		}
		if viperViperStrike != nil {
			dictionary.updateValue(viperViperStrike! as AnyObject, forKey: kDMDamageInflictorReceivedViperViperStrikeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.maelstrom = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedMaelstromKey) as? Int
		self.abaddonAphoticShield = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedAbaddonAphoticShieldKey) as? Int
		self.bloodthorn = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedBloodthornKey) as? Int
		self.juggernautBladeFury = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedJuggernautBladeFuryKey) as? Int
		self.vengefulspiritWaveOfTerror = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedVengefulspiritWaveOfTerrorKey) as? Int
		self.viperCorrosiveSkin = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedViperCorrosiveSkinKey) as? Int
		self.emberSpiritFlameGuard = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedEmberSpiritFlameGuardKey) as? Int
		self.nevermoreShadowraze2 = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedNevermoreShadowraze2Key) as? Int
		self.nevermoreRequiem = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedNevermoreRequiemKey) as? Int
		self.crystalMaidenCrystalNova = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedCrystalMaidenCrystalNovaKey) as? Int
		self.null = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedNullKey) as? Int
		self.vengefulspiritMagicMissile = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedVengefulspiritMagicMissileKey) as? Int
		self.viperPoisonAttack = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedViperPoisonAttackKey) as? Int
		self.nevermoreShadowraze3 = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedNevermoreShadowraze3Key) as? Int
		self.emberSpiritActivateFireRemnant = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedEmberSpiritActivateFireRemnantKey) as? Int
		self.bfury = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedBfuryKey) as? Int
		self.mjollnir = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedMjollnirKey) as? Int
		self.bristlebackQuillSpray = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedBristlebackQuillSprayKey) as? Int
		self.arcWardenFlux = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedArcWardenFluxKey) as? Int
		self.crystalMaidenFrostbite = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedCrystalMaidenFrostbiteKey) as? Int
		self.kunkkaGhostship = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedKunkkaGhostshipKey) as? Int
		self.arcWardenSparkWraith = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedArcWardenSparkWraithKey) as? Int
		self.nevermoreShadowraze1 = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedNevermoreShadowraze1Key) as? Int
		self.abaddonDeathCoil = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedAbaddonDeathCoilKey) as? Int
		self.juggernautOmniSlash = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedJuggernautOmniSlashKey) as? Int
		self.crystalMaidenFreezingField = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedCrystalMaidenFreezingFieldKey) as? Int
		self.orchid = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedOrchidKey) as? Int
		self.emberSpiritSearingChains = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedEmberSpiritSearingChainsKey) as? Int
		self.kunkkaTorrent = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedKunkkaTorrentKey) as? Int
		self.kunkkaTidebringer = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedKunkkaTidebringerKey) as? Int
		self.viperViperStrike = aDecoder.decodeObject(forKey: kDMDamageInflictorReceivedViperViperStrikeKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(maelstrom, forKey: kDMDamageInflictorReceivedMaelstromKey)
		aCoder.encode(abaddonAphoticShield, forKey: kDMDamageInflictorReceivedAbaddonAphoticShieldKey)
		aCoder.encode(bloodthorn, forKey: kDMDamageInflictorReceivedBloodthornKey)
		aCoder.encode(juggernautBladeFury, forKey: kDMDamageInflictorReceivedJuggernautBladeFuryKey)
		aCoder.encode(vengefulspiritWaveOfTerror, forKey: kDMDamageInflictorReceivedVengefulspiritWaveOfTerrorKey)
		aCoder.encode(viperCorrosiveSkin, forKey: kDMDamageInflictorReceivedViperCorrosiveSkinKey)
		aCoder.encode(emberSpiritFlameGuard, forKey: kDMDamageInflictorReceivedEmberSpiritFlameGuardKey)
		aCoder.encode(nevermoreShadowraze2, forKey: kDMDamageInflictorReceivedNevermoreShadowraze2Key)
		aCoder.encode(nevermoreRequiem, forKey: kDMDamageInflictorReceivedNevermoreRequiemKey)
		aCoder.encode(crystalMaidenCrystalNova, forKey: kDMDamageInflictorReceivedCrystalMaidenCrystalNovaKey)
		aCoder.encode(null, forKey: kDMDamageInflictorReceivedNullKey)
		aCoder.encode(vengefulspiritMagicMissile, forKey: kDMDamageInflictorReceivedVengefulspiritMagicMissileKey)
		aCoder.encode(viperPoisonAttack, forKey: kDMDamageInflictorReceivedViperPoisonAttackKey)
		aCoder.encode(nevermoreShadowraze3, forKey: kDMDamageInflictorReceivedNevermoreShadowraze3Key)
		aCoder.encode(emberSpiritActivateFireRemnant, forKey: kDMDamageInflictorReceivedEmberSpiritActivateFireRemnantKey)
		aCoder.encode(bfury, forKey: kDMDamageInflictorReceivedBfuryKey)
		aCoder.encode(mjollnir, forKey: kDMDamageInflictorReceivedMjollnirKey)
		aCoder.encode(bristlebackQuillSpray, forKey: kDMDamageInflictorReceivedBristlebackQuillSprayKey)
		aCoder.encode(arcWardenFlux, forKey: kDMDamageInflictorReceivedArcWardenFluxKey)
		aCoder.encode(crystalMaidenFrostbite, forKey: kDMDamageInflictorReceivedCrystalMaidenFrostbiteKey)
		aCoder.encode(kunkkaGhostship, forKey: kDMDamageInflictorReceivedKunkkaGhostshipKey)
		aCoder.encode(arcWardenSparkWraith, forKey: kDMDamageInflictorReceivedArcWardenSparkWraithKey)
		aCoder.encode(nevermoreShadowraze1, forKey: kDMDamageInflictorReceivedNevermoreShadowraze1Key)
		aCoder.encode(abaddonDeathCoil, forKey: kDMDamageInflictorReceivedAbaddonDeathCoilKey)
		aCoder.encode(juggernautOmniSlash, forKey: kDMDamageInflictorReceivedJuggernautOmniSlashKey)
		aCoder.encode(crystalMaidenFreezingField, forKey: kDMDamageInflictorReceivedCrystalMaidenFreezingFieldKey)
		aCoder.encode(orchid, forKey: kDMDamageInflictorReceivedOrchidKey)
		aCoder.encode(emberSpiritSearingChains, forKey: kDMDamageInflictorReceivedEmberSpiritSearingChainsKey)
		aCoder.encode(kunkkaTorrent, forKey: kDMDamageInflictorReceivedKunkkaTorrentKey)
		aCoder.encode(kunkkaTidebringer, forKey: kDMDamageInflictorReceivedKunkkaTidebringerKey)
		aCoder.encode(viperViperStrike, forKey: kDMDamageInflictorReceivedViperViperStrikeKey)

    }

}
