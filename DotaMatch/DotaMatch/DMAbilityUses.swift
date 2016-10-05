//
//  DMAbilityUses.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMAbilityUses: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMAbilityUsesVengefulspiritNetherSwapKey: String = "vengefulspirit_nether_swap"
	internal let kDMAbilityUsesAbaddonAphoticShieldKey: String = "abaddon_aphotic_shield"
	internal let kDMAbilityUsesJuggernautBladeFuryKey: String = "juggernaut_blade_fury"
	internal let kDMAbilityUsesVengefulspiritWaveOfTerrorKey: String = "vengefulspirit_wave_of_terror"
	internal let kDMAbilityUsesEmberSpiritFlameGuardKey: String = "ember_spirit_flame_guard"
	internal let kDMAbilityUsesNevermoreShadowraze2Key: String = "nevermore_shadowraze2"
	internal let kDMAbilityUsesNevermoreRequiemKey: String = "nevermore_requiem"
	internal let kDMAbilityUsesCrystalMaidenCrystalNovaKey: String = "crystal_maiden_crystal_nova"
	internal let kDMAbilityUsesAbaddonBorrowedTimeKey: String = "abaddon_borrowed_time"
	internal let kDMAbilityUsesVengefulspiritMagicMissileKey: String = "vengefulspirit_magic_missile"
	internal let kDMAbilityUsesArcWardenMagneticFieldKey: String = "arc_warden_magnetic_field"
	internal let kDMAbilityUsesEmberSpiritActivateFireRemnantKey: String = "ember_spirit_activate_fire_remnant"
	internal let kDMAbilityUsesArcWardenTempestDoubleKey: String = "arc_warden_tempest_double"
	internal let kDMAbilityUsesNevermoreShadowraze3Key: String = "nevermore_shadowraze3"
	internal let kDMAbilityUsesBristlebackQuillSprayKey: String = "bristleback_quill_spray"
	internal let kDMAbilityUsesArcWardenFluxKey: String = "arc_warden_flux"
	internal let kDMAbilityUsesAbaddonDeathCoilKey: String = "abaddon_death_coil"
	internal let kDMAbilityUsesCrystalMaidenFrostbiteKey: String = "crystal_maiden_frostbite"
	internal let kDMAbilityUsesKunkkaGhostshipKey: String = "kunkka_ghostship"
	internal let kDMAbilityUsesArcWardenSparkWraithKey: String = "arc_warden_spark_wraith"
	internal let kDMAbilityUsesKunkkaReturnKey: String = "kunkka_return"
	internal let kDMAbilityUsesNevermoreShadowraze1Key: String = "nevermore_shadowraze1"
	internal let kDMAbilityUsesKunkkaXMarksTheSpotKey: String = "kunkka_x_marks_the_spot"
	internal let kDMAbilityUsesJuggernautHealingWardKey: String = "juggernaut_healing_ward"
	internal let kDMAbilityUsesJuggernautOmniSlashKey: String = "juggernaut_omni_slash"
	internal let kDMAbilityUsesBristlebackViscousNasalGooKey: String = "bristleback_viscous_nasal_goo"
	internal let kDMAbilityUsesCrystalMaidenFreezingFieldKey: String = "crystal_maiden_freezing_field"
	internal let kDMAbilityUsesEmberSpiritSleightOfFistKey: String = "ember_spirit_sleight_of_fist"
	internal let kDMAbilityUsesEmberSpiritSearingChainsKey: String = "ember_spirit_searing_chains"
	internal let kDMAbilityUsesKunkkaTorrentKey: String = "kunkka_torrent"
	internal let kDMAbilityUsesEmberSpiritFireRemnantKey: String = "ember_spirit_fire_remnant"
	internal let kDMAbilityUsesViperViperStrikeKey: String = "viper_viper_strike"


    // MARK: Properties
	open var vengefulspiritNetherSwap: Int?
	open var abaddonAphoticShield: Int?
	open var juggernautBladeFury: Int?
	open var vengefulspiritWaveOfTerror: Int?
	open var emberSpiritFlameGuard: Int?
	open var nevermoreShadowraze2: Int?
	open var nevermoreRequiem: Int?
	open var crystalMaidenCrystalNova: Int?
	open var abaddonBorrowedTime: Int?
	open var vengefulspiritMagicMissile: Int?
	open var arcWardenMagneticField: Int?
	open var emberSpiritActivateFireRemnant: Int?
	open var arcWardenTempestDouble: Int?
	open var nevermoreShadowraze3: Int?
	open var bristlebackQuillSpray: Int?
	open var arcWardenFlux: Int?
	open var abaddonDeathCoil: Int?
	open var crystalMaidenFrostbite: Int?
	open var kunkkaGhostship: Int?
	open var arcWardenSparkWraith: Int?
	open var kunkkaReturn: Int?
	open var nevermoreShadowraze1: Int?
	open var kunkkaXMarksTheSpot: Int?
	open var juggernautHealingWard: Int?
	open var juggernautOmniSlash: Int?
	open var bristlebackViscousNasalGoo: Int?
	open var crystalMaidenFreezingField: Int?
	open var emberSpiritSleightOfFist: Int?
	open var emberSpiritSearingChains: Int?
	open var kunkkaTorrent: Int?
	open var emberSpiritFireRemnant: Int?
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
		vengefulspiritNetherSwap = json[kDMAbilityUsesVengefulspiritNetherSwapKey].int
		abaddonAphoticShield = json[kDMAbilityUsesAbaddonAphoticShieldKey].int
		juggernautBladeFury = json[kDMAbilityUsesJuggernautBladeFuryKey].int
		vengefulspiritWaveOfTerror = json[kDMAbilityUsesVengefulspiritWaveOfTerrorKey].int
		emberSpiritFlameGuard = json[kDMAbilityUsesEmberSpiritFlameGuardKey].int
		nevermoreShadowraze2 = json[kDMAbilityUsesNevermoreShadowraze2Key].int
		nevermoreRequiem = json[kDMAbilityUsesNevermoreRequiemKey].int
		crystalMaidenCrystalNova = json[kDMAbilityUsesCrystalMaidenCrystalNovaKey].int
		abaddonBorrowedTime = json[kDMAbilityUsesAbaddonBorrowedTimeKey].int
		vengefulspiritMagicMissile = json[kDMAbilityUsesVengefulspiritMagicMissileKey].int
		arcWardenMagneticField = json[kDMAbilityUsesArcWardenMagneticFieldKey].int
		emberSpiritActivateFireRemnant = json[kDMAbilityUsesEmberSpiritActivateFireRemnantKey].int
		arcWardenTempestDouble = json[kDMAbilityUsesArcWardenTempestDoubleKey].int
		nevermoreShadowraze3 = json[kDMAbilityUsesNevermoreShadowraze3Key].int
		bristlebackQuillSpray = json[kDMAbilityUsesBristlebackQuillSprayKey].int
		arcWardenFlux = json[kDMAbilityUsesArcWardenFluxKey].int
		abaddonDeathCoil = json[kDMAbilityUsesAbaddonDeathCoilKey].int
		crystalMaidenFrostbite = json[kDMAbilityUsesCrystalMaidenFrostbiteKey].int
		kunkkaGhostship = json[kDMAbilityUsesKunkkaGhostshipKey].int
		arcWardenSparkWraith = json[kDMAbilityUsesArcWardenSparkWraithKey].int
		kunkkaReturn = json[kDMAbilityUsesKunkkaReturnKey].int
		nevermoreShadowraze1 = json[kDMAbilityUsesNevermoreShadowraze1Key].int
		kunkkaXMarksTheSpot = json[kDMAbilityUsesKunkkaXMarksTheSpotKey].int
		juggernautHealingWard = json[kDMAbilityUsesJuggernautHealingWardKey].int
		juggernautOmniSlash = json[kDMAbilityUsesJuggernautOmniSlashKey].int
		bristlebackViscousNasalGoo = json[kDMAbilityUsesBristlebackViscousNasalGooKey].int
		crystalMaidenFreezingField = json[kDMAbilityUsesCrystalMaidenFreezingFieldKey].int
		emberSpiritSleightOfFist = json[kDMAbilityUsesEmberSpiritSleightOfFistKey].int
		emberSpiritSearingChains = json[kDMAbilityUsesEmberSpiritSearingChainsKey].int
		kunkkaTorrent = json[kDMAbilityUsesKunkkaTorrentKey].int
		emberSpiritFireRemnant = json[kDMAbilityUsesEmberSpiritFireRemnantKey].int
		viperViperStrike = json[kDMAbilityUsesViperViperStrikeKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if vengefulspiritNetherSwap != nil {
			dictionary.updateValue(vengefulspiritNetherSwap! as AnyObject, forKey: kDMAbilityUsesVengefulspiritNetherSwapKey)
		}
		if abaddonAphoticShield != nil {
			dictionary.updateValue(abaddonAphoticShield! as AnyObject, forKey: kDMAbilityUsesAbaddonAphoticShieldKey)
		}
		if juggernautBladeFury != nil {
			dictionary.updateValue(juggernautBladeFury! as AnyObject, forKey: kDMAbilityUsesJuggernautBladeFuryKey)
		}
		if vengefulspiritWaveOfTerror != nil {
			dictionary.updateValue(vengefulspiritWaveOfTerror! as AnyObject, forKey: kDMAbilityUsesVengefulspiritWaveOfTerrorKey)
		}
		if emberSpiritFlameGuard != nil {
			dictionary.updateValue(emberSpiritFlameGuard! as AnyObject, forKey: kDMAbilityUsesEmberSpiritFlameGuardKey)
		}
		if nevermoreShadowraze2 != nil {
			dictionary.updateValue(nevermoreShadowraze2! as AnyObject, forKey: kDMAbilityUsesNevermoreShadowraze2Key)
		}
		if nevermoreRequiem != nil {
			dictionary.updateValue(nevermoreRequiem! as AnyObject, forKey: kDMAbilityUsesNevermoreRequiemKey)
		}
		if crystalMaidenCrystalNova != nil {
			dictionary.updateValue(crystalMaidenCrystalNova! as AnyObject, forKey: kDMAbilityUsesCrystalMaidenCrystalNovaKey)
		}
		if abaddonBorrowedTime != nil {
			dictionary.updateValue(abaddonBorrowedTime! as AnyObject, forKey: kDMAbilityUsesAbaddonBorrowedTimeKey)
		}
		if vengefulspiritMagicMissile != nil {
			dictionary.updateValue(vengefulspiritMagicMissile! as AnyObject, forKey: kDMAbilityUsesVengefulspiritMagicMissileKey)
		}
		if arcWardenMagneticField != nil {
			dictionary.updateValue(arcWardenMagneticField! as AnyObject, forKey: kDMAbilityUsesArcWardenMagneticFieldKey)
		}
		if emberSpiritActivateFireRemnant != nil {
			dictionary.updateValue(emberSpiritActivateFireRemnant! as AnyObject, forKey: kDMAbilityUsesEmberSpiritActivateFireRemnantKey)
		}
		if arcWardenTempestDouble != nil {
			dictionary.updateValue(arcWardenTempestDouble! as AnyObject, forKey: kDMAbilityUsesArcWardenTempestDoubleKey)
		}
		if nevermoreShadowraze3 != nil {
			dictionary.updateValue(nevermoreShadowraze3! as AnyObject, forKey: kDMAbilityUsesNevermoreShadowraze3Key)
		}
		if bristlebackQuillSpray != nil {
			dictionary.updateValue(bristlebackQuillSpray! as AnyObject, forKey: kDMAbilityUsesBristlebackQuillSprayKey)
		}
		if arcWardenFlux != nil {
			dictionary.updateValue(arcWardenFlux! as AnyObject, forKey: kDMAbilityUsesArcWardenFluxKey)
		}
		if abaddonDeathCoil != nil {
			dictionary.updateValue(abaddonDeathCoil! as AnyObject, forKey: kDMAbilityUsesAbaddonDeathCoilKey)
		}
		if crystalMaidenFrostbite != nil {
			dictionary.updateValue(crystalMaidenFrostbite! as AnyObject, forKey: kDMAbilityUsesCrystalMaidenFrostbiteKey)
		}
		if kunkkaGhostship != nil {
			dictionary.updateValue(kunkkaGhostship! as AnyObject, forKey: kDMAbilityUsesKunkkaGhostshipKey)
		}
		if arcWardenSparkWraith != nil {
			dictionary.updateValue(arcWardenSparkWraith! as AnyObject, forKey: kDMAbilityUsesArcWardenSparkWraithKey)
		}
		if kunkkaReturn != nil {
			dictionary.updateValue(kunkkaReturn! as AnyObject, forKey: kDMAbilityUsesKunkkaReturnKey)
		}
		if nevermoreShadowraze1 != nil {
			dictionary.updateValue(nevermoreShadowraze1! as AnyObject, forKey: kDMAbilityUsesNevermoreShadowraze1Key)
		}
		if kunkkaXMarksTheSpot != nil {
			dictionary.updateValue(kunkkaXMarksTheSpot! as AnyObject, forKey: kDMAbilityUsesKunkkaXMarksTheSpotKey)
		}
		if juggernautHealingWard != nil {
			dictionary.updateValue(juggernautHealingWard! as AnyObject, forKey: kDMAbilityUsesJuggernautHealingWardKey)
		}
		if juggernautOmniSlash != nil {
			dictionary.updateValue(juggernautOmniSlash! as AnyObject, forKey: kDMAbilityUsesJuggernautOmniSlashKey)
		}
		if bristlebackViscousNasalGoo != nil {
			dictionary.updateValue(bristlebackViscousNasalGoo! as AnyObject, forKey: kDMAbilityUsesBristlebackViscousNasalGooKey)
		}
		if crystalMaidenFreezingField != nil {
			dictionary.updateValue(crystalMaidenFreezingField! as AnyObject, forKey: kDMAbilityUsesCrystalMaidenFreezingFieldKey)
		}
		if emberSpiritSleightOfFist != nil {
			dictionary.updateValue(emberSpiritSleightOfFist! as AnyObject, forKey: kDMAbilityUsesEmberSpiritSleightOfFistKey)
		}
		if emberSpiritSearingChains != nil {
			dictionary.updateValue(emberSpiritSearingChains! as AnyObject, forKey: kDMAbilityUsesEmberSpiritSearingChainsKey)
		}
		if kunkkaTorrent != nil {
			dictionary.updateValue(kunkkaTorrent! as AnyObject, forKey: kDMAbilityUsesKunkkaTorrentKey)
		}
		if emberSpiritFireRemnant != nil {
			dictionary.updateValue(emberSpiritFireRemnant! as AnyObject, forKey: kDMAbilityUsesEmberSpiritFireRemnantKey)
		}
		if viperViperStrike != nil {
			dictionary.updateValue(viperViperStrike! as AnyObject, forKey: kDMAbilityUsesViperViperStrikeKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.vengefulspiritNetherSwap = aDecoder.decodeObject(forKey: kDMAbilityUsesVengefulspiritNetherSwapKey) as? Int
		self.abaddonAphoticShield = aDecoder.decodeObject(forKey: kDMAbilityUsesAbaddonAphoticShieldKey) as? Int
		self.juggernautBladeFury = aDecoder.decodeObject(forKey: kDMAbilityUsesJuggernautBladeFuryKey) as? Int
		self.vengefulspiritWaveOfTerror = aDecoder.decodeObject(forKey: kDMAbilityUsesVengefulspiritWaveOfTerrorKey) as? Int
		self.emberSpiritFlameGuard = aDecoder.decodeObject(forKey: kDMAbilityUsesEmberSpiritFlameGuardKey) as? Int
		self.nevermoreShadowraze2 = aDecoder.decodeObject(forKey: kDMAbilityUsesNevermoreShadowraze2Key) as? Int
		self.nevermoreRequiem = aDecoder.decodeObject(forKey: kDMAbilityUsesNevermoreRequiemKey) as? Int
		self.crystalMaidenCrystalNova = aDecoder.decodeObject(forKey: kDMAbilityUsesCrystalMaidenCrystalNovaKey) as? Int
		self.abaddonBorrowedTime = aDecoder.decodeObject(forKey: kDMAbilityUsesAbaddonBorrowedTimeKey) as? Int
		self.vengefulspiritMagicMissile = aDecoder.decodeObject(forKey: kDMAbilityUsesVengefulspiritMagicMissileKey) as? Int
		self.arcWardenMagneticField = aDecoder.decodeObject(forKey: kDMAbilityUsesArcWardenMagneticFieldKey) as? Int
		self.emberSpiritActivateFireRemnant = aDecoder.decodeObject(forKey: kDMAbilityUsesEmberSpiritActivateFireRemnantKey) as? Int
		self.arcWardenTempestDouble = aDecoder.decodeObject(forKey: kDMAbilityUsesArcWardenTempestDoubleKey) as? Int
		self.nevermoreShadowraze3 = aDecoder.decodeObject(forKey: kDMAbilityUsesNevermoreShadowraze3Key) as? Int
		self.bristlebackQuillSpray = aDecoder.decodeObject(forKey: kDMAbilityUsesBristlebackQuillSprayKey) as? Int
		self.arcWardenFlux = aDecoder.decodeObject(forKey: kDMAbilityUsesArcWardenFluxKey) as? Int
		self.abaddonDeathCoil = aDecoder.decodeObject(forKey: kDMAbilityUsesAbaddonDeathCoilKey) as? Int
		self.crystalMaidenFrostbite = aDecoder.decodeObject(forKey: kDMAbilityUsesCrystalMaidenFrostbiteKey) as? Int
		self.kunkkaGhostship = aDecoder.decodeObject(forKey: kDMAbilityUsesKunkkaGhostshipKey) as? Int
		self.arcWardenSparkWraith = aDecoder.decodeObject(forKey: kDMAbilityUsesArcWardenSparkWraithKey) as? Int
		self.kunkkaReturn = aDecoder.decodeObject(forKey: kDMAbilityUsesKunkkaReturnKey) as? Int
		self.nevermoreShadowraze1 = aDecoder.decodeObject(forKey: kDMAbilityUsesNevermoreShadowraze1Key) as? Int
		self.kunkkaXMarksTheSpot = aDecoder.decodeObject(forKey: kDMAbilityUsesKunkkaXMarksTheSpotKey) as? Int
		self.juggernautHealingWard = aDecoder.decodeObject(forKey: kDMAbilityUsesJuggernautHealingWardKey) as? Int
		self.juggernautOmniSlash = aDecoder.decodeObject(forKey: kDMAbilityUsesJuggernautOmniSlashKey) as? Int
		self.bristlebackViscousNasalGoo = aDecoder.decodeObject(forKey: kDMAbilityUsesBristlebackViscousNasalGooKey) as? Int
		self.crystalMaidenFreezingField = aDecoder.decodeObject(forKey: kDMAbilityUsesCrystalMaidenFreezingFieldKey) as? Int
		self.emberSpiritSleightOfFist = aDecoder.decodeObject(forKey: kDMAbilityUsesEmberSpiritSleightOfFistKey) as? Int
		self.emberSpiritSearingChains = aDecoder.decodeObject(forKey: kDMAbilityUsesEmberSpiritSearingChainsKey) as? Int
		self.kunkkaTorrent = aDecoder.decodeObject(forKey: kDMAbilityUsesKunkkaTorrentKey) as? Int
		self.emberSpiritFireRemnant = aDecoder.decodeObject(forKey: kDMAbilityUsesEmberSpiritFireRemnantKey) as? Int
		self.viperViperStrike = aDecoder.decodeObject(forKey: kDMAbilityUsesViperViperStrikeKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(vengefulspiritNetherSwap, forKey: kDMAbilityUsesVengefulspiritNetherSwapKey)
		aCoder.encode(abaddonAphoticShield, forKey: kDMAbilityUsesAbaddonAphoticShieldKey)
		aCoder.encode(juggernautBladeFury, forKey: kDMAbilityUsesJuggernautBladeFuryKey)
		aCoder.encode(vengefulspiritWaveOfTerror, forKey: kDMAbilityUsesVengefulspiritWaveOfTerrorKey)
		aCoder.encode(emberSpiritFlameGuard, forKey: kDMAbilityUsesEmberSpiritFlameGuardKey)
		aCoder.encode(nevermoreShadowraze2, forKey: kDMAbilityUsesNevermoreShadowraze2Key)
		aCoder.encode(nevermoreRequiem, forKey: kDMAbilityUsesNevermoreRequiemKey)
		aCoder.encode(crystalMaidenCrystalNova, forKey: kDMAbilityUsesCrystalMaidenCrystalNovaKey)
		aCoder.encode(abaddonBorrowedTime, forKey: kDMAbilityUsesAbaddonBorrowedTimeKey)
		aCoder.encode(vengefulspiritMagicMissile, forKey: kDMAbilityUsesVengefulspiritMagicMissileKey)
		aCoder.encode(arcWardenMagneticField, forKey: kDMAbilityUsesArcWardenMagneticFieldKey)
		aCoder.encode(emberSpiritActivateFireRemnant, forKey: kDMAbilityUsesEmberSpiritActivateFireRemnantKey)
		aCoder.encode(arcWardenTempestDouble, forKey: kDMAbilityUsesArcWardenTempestDoubleKey)
		aCoder.encode(nevermoreShadowraze3, forKey: kDMAbilityUsesNevermoreShadowraze3Key)
		aCoder.encode(bristlebackQuillSpray, forKey: kDMAbilityUsesBristlebackQuillSprayKey)
		aCoder.encode(arcWardenFlux, forKey: kDMAbilityUsesArcWardenFluxKey)
		aCoder.encode(abaddonDeathCoil, forKey: kDMAbilityUsesAbaddonDeathCoilKey)
		aCoder.encode(crystalMaidenFrostbite, forKey: kDMAbilityUsesCrystalMaidenFrostbiteKey)
		aCoder.encode(kunkkaGhostship, forKey: kDMAbilityUsesKunkkaGhostshipKey)
		aCoder.encode(arcWardenSparkWraith, forKey: kDMAbilityUsesArcWardenSparkWraithKey)
		aCoder.encode(kunkkaReturn, forKey: kDMAbilityUsesKunkkaReturnKey)
		aCoder.encode(nevermoreShadowraze1, forKey: kDMAbilityUsesNevermoreShadowraze1Key)
		aCoder.encode(kunkkaXMarksTheSpot, forKey: kDMAbilityUsesKunkkaXMarksTheSpotKey)
		aCoder.encode(juggernautHealingWard, forKey: kDMAbilityUsesJuggernautHealingWardKey)
		aCoder.encode(juggernautOmniSlash, forKey: kDMAbilityUsesJuggernautOmniSlashKey)
		aCoder.encode(bristlebackViscousNasalGoo, forKey: kDMAbilityUsesBristlebackViscousNasalGooKey)
		aCoder.encode(crystalMaidenFreezingField, forKey: kDMAbilityUsesCrystalMaidenFreezingFieldKey)
		aCoder.encode(emberSpiritSleightOfFist, forKey: kDMAbilityUsesEmberSpiritSleightOfFistKey)
		aCoder.encode(emberSpiritSearingChains, forKey: kDMAbilityUsesEmberSpiritSearingChainsKey)
		aCoder.encode(kunkkaTorrent, forKey: kDMAbilityUsesKunkkaTorrentKey)
		aCoder.encode(emberSpiritFireRemnant, forKey: kDMAbilityUsesEmberSpiritFireRemnantKey)
		aCoder.encode(viperViperStrike, forKey: kDMAbilityUsesViperViperStrikeKey)

    }

}
