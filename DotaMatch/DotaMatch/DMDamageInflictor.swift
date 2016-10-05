//
//  DMDamageInflictor.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMDamageInflictor: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMDamageInflictorMaelstromKey: String = "maelstrom"
	internal let kDMDamageInflictorBloodthornKey: String = "bloodthorn"
	internal let kDMDamageInflictorAbaddonAphoticShieldKey: String = "abaddon_aphotic_shield"
	internal let kDMDamageInflictorJuggernautBladeFuryKey: String = "juggernaut_blade_fury"
	internal let kDMDamageInflictorVengefulspiritWaveOfTerrorKey: String = "vengefulspirit_wave_of_terror"
	internal let kDMDamageInflictorViperCorrosiveSkinKey: String = "viper_corrosive_skin"
	internal let kDMDamageInflictorEmberSpiritFlameGuardKey: String = "ember_spirit_flame_guard"
	internal let kDMDamageInflictorNevermoreShadowraze2Key: String = "nevermore_shadowraze2"
	internal let kDMDamageInflictorNevermoreRequiemKey: String = "nevermore_requiem"
	internal let kDMDamageInflictorCrystalMaidenCrystalNovaKey: String = "crystal_maiden_crystal_nova"
	internal let kDMDamageInflictorNullKey: String = "null"
	internal let kDMDamageInflictorVengefulspiritMagicMissileKey: String = "vengefulspirit_magic_missile"
	internal let kDMDamageInflictorViperPoisonAttackKey: String = "viper_poison_attack"
	internal let kDMDamageInflictorEmberSpiritActivateFireRemnantKey: String = "ember_spirit_activate_fire_remnant"
	internal let kDMDamageInflictorNevermoreShadowraze3Key: String = "nevermore_shadowraze3"
	internal let kDMDamageInflictorBfuryKey: String = "bfury"
	internal let kDMDamageInflictorMjollnirKey: String = "mjollnir"
	internal let kDMDamageInflictorBristlebackQuillSprayKey: String = "bristleback_quill_spray"
	internal let kDMDamageInflictorArcWardenFluxKey: String = "arc_warden_flux"
	internal let kDMDamageInflictorAbaddonDeathCoilKey: String = "abaddon_death_coil"
	internal let kDMDamageInflictorCrystalMaidenFrostbiteKey: String = "crystal_maiden_frostbite"
	internal let kDMDamageInflictorArcWardenSparkWraithKey: String = "arc_warden_spark_wraith"
	internal let kDMDamageInflictorNevermoreShadowraze1Key: String = "nevermore_shadowraze1"
	internal let kDMDamageInflictorKunkkaGhostshipKey: String = "kunkka_ghostship"
	internal let kDMDamageInflictorJuggernautOmniSlashKey: String = "juggernaut_omni_slash"
	internal let kDMDamageInflictorCrystalMaidenFreezingFieldKey: String = "crystal_maiden_freezing_field"
	internal let kDMDamageInflictorOrchidKey: String = "orchid"
	internal let kDMDamageInflictorEmberSpiritSearingChainsKey: String = "ember_spirit_searing_chains"
	internal let kDMDamageInflictorKunkkaTorrentKey: String = "kunkka_torrent"
	internal let kDMDamageInflictorKunkkaTidebringerKey: String = "kunkka_tidebringer"
	internal let kDMDamageInflictorViperViperStrikeKey: String = "viper_viper_strike"


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
		maelstrom = json[kDMDamageInflictorMaelstromKey].int
		bloodthorn = json[kDMDamageInflictorBloodthornKey].int
		abaddonAphoticShield = json[kDMDamageInflictorAbaddonAphoticShieldKey].int
		juggernautBladeFury = json[kDMDamageInflictorJuggernautBladeFuryKey].int
		vengefulspiritWaveOfTerror = json[kDMDamageInflictorVengefulspiritWaveOfTerrorKey].int
		viperCorrosiveSkin = json[kDMDamageInflictorViperCorrosiveSkinKey].int
		emberSpiritFlameGuard = json[kDMDamageInflictorEmberSpiritFlameGuardKey].int
		nevermoreShadowraze2 = json[kDMDamageInflictorNevermoreShadowraze2Key].int
		nevermoreRequiem = json[kDMDamageInflictorNevermoreRequiemKey].int
		crystalMaidenCrystalNova = json[kDMDamageInflictorCrystalMaidenCrystalNovaKey].int
		null = json[kDMDamageInflictorNullKey].int
		vengefulspiritMagicMissile = json[kDMDamageInflictorVengefulspiritMagicMissileKey].int
		viperPoisonAttack = json[kDMDamageInflictorViperPoisonAttackKey].int
		emberSpiritActivateFireRemnant = json[kDMDamageInflictorEmberSpiritActivateFireRemnantKey].int
		nevermoreShadowraze3 = json[kDMDamageInflictorNevermoreShadowraze3Key].int
		bfury = json[kDMDamageInflictorBfuryKey].int
		mjollnir = json[kDMDamageInflictorMjollnirKey].int
		bristlebackQuillSpray = json[kDMDamageInflictorBristlebackQuillSprayKey].int
		arcWardenFlux = json[kDMDamageInflictorArcWardenFluxKey].int
		abaddonDeathCoil = json[kDMDamageInflictorAbaddonDeathCoilKey].int
		crystalMaidenFrostbite = json[kDMDamageInflictorCrystalMaidenFrostbiteKey].int
		arcWardenSparkWraith = json[kDMDamageInflictorArcWardenSparkWraithKey].int
		nevermoreShadowraze1 = json[kDMDamageInflictorNevermoreShadowraze1Key].int
		kunkkaGhostship = json[kDMDamageInflictorKunkkaGhostshipKey].int
		juggernautOmniSlash = json[kDMDamageInflictorJuggernautOmniSlashKey].int
		crystalMaidenFreezingField = json[kDMDamageInflictorCrystalMaidenFreezingFieldKey].int
		orchid = json[kDMDamageInflictorOrchidKey].int
		emberSpiritSearingChains = json[kDMDamageInflictorEmberSpiritSearingChainsKey].int
		kunkkaTorrent = json[kDMDamageInflictorKunkkaTorrentKey].int
		kunkkaTidebringer = json[kDMDamageInflictorKunkkaTidebringerKey].int
		viperViperStrike = json[kDMDamageInflictorViperViperStrikeKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if maelstrom != nil {
			dictionary.updateValue(maelstrom! as AnyObject, forKey: kDMDamageInflictorMaelstromKey)
		}
		if bloodthorn != nil {
			dictionary.updateValue(bloodthorn! as AnyObject, forKey: kDMDamageInflictorBloodthornKey)
		}
		if abaddonAphoticShield != nil {
			dictionary.updateValue(abaddonAphoticShield! as AnyObject, forKey: kDMDamageInflictorAbaddonAphoticShieldKey)
		}
		if juggernautBladeFury != nil {
			dictionary.updateValue(juggernautBladeFury! as AnyObject, forKey: kDMDamageInflictorJuggernautBladeFuryKey)
		}
		if vengefulspiritWaveOfTerror != nil {
			dictionary.updateValue(vengefulspiritWaveOfTerror! as AnyObject, forKey: kDMDamageInflictorVengefulspiritWaveOfTerrorKey)
		}
		if viperCorrosiveSkin != nil {
			dictionary.updateValue(viperCorrosiveSkin! as AnyObject, forKey: kDMDamageInflictorViperCorrosiveSkinKey)
		}
		if emberSpiritFlameGuard != nil {
			dictionary.updateValue(emberSpiritFlameGuard! as AnyObject, forKey: kDMDamageInflictorEmberSpiritFlameGuardKey)
		}
		if nevermoreShadowraze2 != nil {
			dictionary.updateValue(nevermoreShadowraze2! as AnyObject, forKey: kDMDamageInflictorNevermoreShadowraze2Key)
		}
		if nevermoreRequiem != nil {
			dictionary.updateValue(nevermoreRequiem! as AnyObject, forKey: kDMDamageInflictorNevermoreRequiemKey)
		}
		if crystalMaidenCrystalNova != nil {
			dictionary.updateValue(crystalMaidenCrystalNova! as AnyObject, forKey: kDMDamageInflictorCrystalMaidenCrystalNovaKey)
		}
		if null != nil {
			dictionary.updateValue(null! as AnyObject, forKey: kDMDamageInflictorNullKey)
		}
		if vengefulspiritMagicMissile != nil {
			dictionary.updateValue(vengefulspiritMagicMissile! as AnyObject, forKey: kDMDamageInflictorVengefulspiritMagicMissileKey)
		}
		if viperPoisonAttack != nil {
			dictionary.updateValue(viperPoisonAttack! as AnyObject, forKey: kDMDamageInflictorViperPoisonAttackKey)
		}
		if emberSpiritActivateFireRemnant != nil {
			dictionary.updateValue(emberSpiritActivateFireRemnant! as AnyObject, forKey: kDMDamageInflictorEmberSpiritActivateFireRemnantKey)
		}
		if nevermoreShadowraze3 != nil {
			dictionary.updateValue(nevermoreShadowraze3! as AnyObject, forKey: kDMDamageInflictorNevermoreShadowraze3Key)
		}
		if bfury != nil {
			dictionary.updateValue(bfury! as AnyObject, forKey: kDMDamageInflictorBfuryKey)
		}
		if mjollnir != nil {
			dictionary.updateValue(mjollnir! as AnyObject, forKey: kDMDamageInflictorMjollnirKey)
		}
		if bristlebackQuillSpray != nil {
			dictionary.updateValue(bristlebackQuillSpray! as AnyObject, forKey: kDMDamageInflictorBristlebackQuillSprayKey)
		}
		if arcWardenFlux != nil {
			dictionary.updateValue(arcWardenFlux! as AnyObject, forKey: kDMDamageInflictorArcWardenFluxKey)
		}
		if abaddonDeathCoil != nil {
			dictionary.updateValue(abaddonDeathCoil! as AnyObject, forKey: kDMDamageInflictorAbaddonDeathCoilKey)
		}
		if crystalMaidenFrostbite != nil {
			dictionary.updateValue(crystalMaidenFrostbite! as AnyObject, forKey: kDMDamageInflictorCrystalMaidenFrostbiteKey)
		}
		if arcWardenSparkWraith != nil {
			dictionary.updateValue(arcWardenSparkWraith! as AnyObject, forKey: kDMDamageInflictorArcWardenSparkWraithKey)
		}
		if nevermoreShadowraze1 != nil {
			dictionary.updateValue(nevermoreShadowraze1! as AnyObject, forKey: kDMDamageInflictorNevermoreShadowraze1Key)
		}
		if kunkkaGhostship != nil {
			dictionary.updateValue(kunkkaGhostship! as AnyObject, forKey: kDMDamageInflictorKunkkaGhostshipKey)
		}
		if juggernautOmniSlash != nil {
			dictionary.updateValue(juggernautOmniSlash! as AnyObject, forKey: kDMDamageInflictorJuggernautOmniSlashKey)
		}
		if crystalMaidenFreezingField != nil {
			dictionary.updateValue(crystalMaidenFreezingField! as AnyObject, forKey: kDMDamageInflictorCrystalMaidenFreezingFieldKey)
		}
		if orchid != nil {
			dictionary.updateValue(orchid! as AnyObject, forKey: kDMDamageInflictorOrchidKey)
		}
		if emberSpiritSearingChains != nil {
			dictionary.updateValue(emberSpiritSearingChains! as AnyObject, forKey: kDMDamageInflictorEmberSpiritSearingChainsKey)
		}
		if kunkkaTorrent != nil {
			dictionary.updateValue(kunkkaTorrent! as AnyObject, forKey: kDMDamageInflictorKunkkaTorrentKey)
		}
		if kunkkaTidebringer != nil {
			dictionary.updateValue(kunkkaTidebringer! as AnyObject, forKey: kDMDamageInflictorKunkkaTidebringerKey)
		}
		if viperViperStrike != nil {
			dictionary.updateValue(viperViperStrike! as AnyObject, forKey: kDMDamageInflictorViperViperStrikeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.maelstrom = aDecoder.decodeObject(forKey: kDMDamageInflictorMaelstromKey) as? Int
		self.bloodthorn = aDecoder.decodeObject(forKey: kDMDamageInflictorBloodthornKey) as? Int
		self.abaddonAphoticShield = aDecoder.decodeObject(forKey: kDMDamageInflictorAbaddonAphoticShieldKey) as? Int
		self.juggernautBladeFury = aDecoder.decodeObject(forKey: kDMDamageInflictorJuggernautBladeFuryKey) as? Int
		self.vengefulspiritWaveOfTerror = aDecoder.decodeObject(forKey: kDMDamageInflictorVengefulspiritWaveOfTerrorKey) as? Int
		self.viperCorrosiveSkin = aDecoder.decodeObject(forKey: kDMDamageInflictorViperCorrosiveSkinKey) as? Int
		self.emberSpiritFlameGuard = aDecoder.decodeObject(forKey: kDMDamageInflictorEmberSpiritFlameGuardKey) as? Int
		self.nevermoreShadowraze2 = aDecoder.decodeObject(forKey: kDMDamageInflictorNevermoreShadowraze2Key) as? Int
		self.nevermoreRequiem = aDecoder.decodeObject(forKey: kDMDamageInflictorNevermoreRequiemKey) as? Int
		self.crystalMaidenCrystalNova = aDecoder.decodeObject(forKey: kDMDamageInflictorCrystalMaidenCrystalNovaKey) as? Int
		self.null = aDecoder.decodeObject(forKey: kDMDamageInflictorNullKey) as? Int
		self.vengefulspiritMagicMissile = aDecoder.decodeObject(forKey: kDMDamageInflictorVengefulspiritMagicMissileKey) as? Int
		self.viperPoisonAttack = aDecoder.decodeObject(forKey: kDMDamageInflictorViperPoisonAttackKey) as? Int
		self.emberSpiritActivateFireRemnant = aDecoder.decodeObject(forKey: kDMDamageInflictorEmberSpiritActivateFireRemnantKey) as? Int
		self.nevermoreShadowraze3 = aDecoder.decodeObject(forKey: kDMDamageInflictorNevermoreShadowraze3Key) as? Int
		self.bfury = aDecoder.decodeObject(forKey: kDMDamageInflictorBfuryKey) as? Int
		self.mjollnir = aDecoder.decodeObject(forKey: kDMDamageInflictorMjollnirKey) as? Int
		self.bristlebackQuillSpray = aDecoder.decodeObject(forKey: kDMDamageInflictorBristlebackQuillSprayKey) as? Int
		self.arcWardenFlux = aDecoder.decodeObject(forKey: kDMDamageInflictorArcWardenFluxKey) as? Int
		self.abaddonDeathCoil = aDecoder.decodeObject(forKey: kDMDamageInflictorAbaddonDeathCoilKey) as? Int
		self.crystalMaidenFrostbite = aDecoder.decodeObject(forKey: kDMDamageInflictorCrystalMaidenFrostbiteKey) as? Int
		self.arcWardenSparkWraith = aDecoder.decodeObject(forKey: kDMDamageInflictorArcWardenSparkWraithKey) as? Int
		self.nevermoreShadowraze1 = aDecoder.decodeObject(forKey: kDMDamageInflictorNevermoreShadowraze1Key) as? Int
		self.kunkkaGhostship = aDecoder.decodeObject(forKey: kDMDamageInflictorKunkkaGhostshipKey) as? Int
		self.juggernautOmniSlash = aDecoder.decodeObject(forKey: kDMDamageInflictorJuggernautOmniSlashKey) as? Int
		self.crystalMaidenFreezingField = aDecoder.decodeObject(forKey: kDMDamageInflictorCrystalMaidenFreezingFieldKey) as? Int
		self.orchid = aDecoder.decodeObject(forKey: kDMDamageInflictorOrchidKey) as? Int
		self.emberSpiritSearingChains = aDecoder.decodeObject(forKey: kDMDamageInflictorEmberSpiritSearingChainsKey) as? Int
		self.kunkkaTorrent = aDecoder.decodeObject(forKey: kDMDamageInflictorKunkkaTorrentKey) as? Int
		self.kunkkaTidebringer = aDecoder.decodeObject(forKey: kDMDamageInflictorKunkkaTidebringerKey) as? Int
		self.viperViperStrike = aDecoder.decodeObject(forKey: kDMDamageInflictorViperViperStrikeKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(maelstrom, forKey: kDMDamageInflictorMaelstromKey)
		aCoder.encode(bloodthorn, forKey: kDMDamageInflictorBloodthornKey)
		aCoder.encode(abaddonAphoticShield, forKey: kDMDamageInflictorAbaddonAphoticShieldKey)
		aCoder.encode(juggernautBladeFury, forKey: kDMDamageInflictorJuggernautBladeFuryKey)
		aCoder.encode(vengefulspiritWaveOfTerror, forKey: kDMDamageInflictorVengefulspiritWaveOfTerrorKey)
		aCoder.encode(viperCorrosiveSkin, forKey: kDMDamageInflictorViperCorrosiveSkinKey)
		aCoder.encode(emberSpiritFlameGuard, forKey: kDMDamageInflictorEmberSpiritFlameGuardKey)
		aCoder.encode(nevermoreShadowraze2, forKey: kDMDamageInflictorNevermoreShadowraze2Key)
		aCoder.encode(nevermoreRequiem, forKey: kDMDamageInflictorNevermoreRequiemKey)
		aCoder.encode(crystalMaidenCrystalNova, forKey: kDMDamageInflictorCrystalMaidenCrystalNovaKey)
		aCoder.encode(null, forKey: kDMDamageInflictorNullKey)
		aCoder.encode(vengefulspiritMagicMissile, forKey: kDMDamageInflictorVengefulspiritMagicMissileKey)
		aCoder.encode(viperPoisonAttack, forKey: kDMDamageInflictorViperPoisonAttackKey)
		aCoder.encode(emberSpiritActivateFireRemnant, forKey: kDMDamageInflictorEmberSpiritActivateFireRemnantKey)
		aCoder.encode(nevermoreShadowraze3, forKey: kDMDamageInflictorNevermoreShadowraze3Key)
		aCoder.encode(bfury, forKey: kDMDamageInflictorBfuryKey)
		aCoder.encode(mjollnir, forKey: kDMDamageInflictorMjollnirKey)
		aCoder.encode(bristlebackQuillSpray, forKey: kDMDamageInflictorBristlebackQuillSprayKey)
		aCoder.encode(arcWardenFlux, forKey: kDMDamageInflictorArcWardenFluxKey)
		aCoder.encode(abaddonDeathCoil, forKey: kDMDamageInflictorAbaddonDeathCoilKey)
		aCoder.encode(crystalMaidenFrostbite, forKey: kDMDamageInflictorCrystalMaidenFrostbiteKey)
		aCoder.encode(arcWardenSparkWraith, forKey: kDMDamageInflictorArcWardenSparkWraithKey)
		aCoder.encode(nevermoreShadowraze1, forKey: kDMDamageInflictorNevermoreShadowraze1Key)
		aCoder.encode(kunkkaGhostship, forKey: kDMDamageInflictorKunkkaGhostshipKey)
		aCoder.encode(juggernautOmniSlash, forKey: kDMDamageInflictorJuggernautOmniSlashKey)
		aCoder.encode(crystalMaidenFreezingField, forKey: kDMDamageInflictorCrystalMaidenFreezingFieldKey)
		aCoder.encode(orchid, forKey: kDMDamageInflictorOrchidKey)
		aCoder.encode(emberSpiritSearingChains, forKey: kDMDamageInflictorEmberSpiritSearingChainsKey)
		aCoder.encode(kunkkaTorrent, forKey: kDMDamageInflictorKunkkaTorrentKey)
		aCoder.encode(kunkkaTidebringer, forKey: kDMDamageInflictorKunkkaTidebringerKey)
		aCoder.encode(viperViperStrike, forKey: kDMDamageInflictorViperViperStrikeKey)

    }

}
