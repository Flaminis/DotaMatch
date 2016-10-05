//
//  DMAllWordCounts.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

open class DMAllWordCounts: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMAllWordCountsGgKey: String = "gg"
	internal let kDMAllWordCountsGegeKey: String = "gege"
	internal let kDMAllWordCountsLelKey: String = "lel"
	internal let kDMAllWordCountsHappensKey: String = "happens"
	internal let kDMAllWordCountsWtfKey: String = "wtf"
	internal let kDMAllWordCountsWellKey: String = "well"
	internal let kDMAllWordCountsLulKey: String = "lul"
	internal let kDMAllWordCountsThatKey: String = "that"
	internal let kDMAllWordCountsHahahahaKey: String = "hahahaha"
	internal let kDMAllWordCountsWpKey: String = "wp"
	internal let kDMAllWordCountsHahahaKey: String = "hahaha"
	internal let kDMAllWordCountsEzKey: String = "ez"
	internal let kDMAllWordCountsHahahKey: String = "hahah"


    // MARK: Properties
	open var gg: Int?
	open var gege: Int?
	open var lel: Int?
	open var happens: Int?
	open var wtf: Int?
	open var well: Int?
	open var lul: Int?
	open var that: Int?
	open var hahahaha: Int?
	open var wp: Int?
	open var hahaha: Int?
	open var ez: Int?
	open var hahah: Int?


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
		gg = json[kDMAllWordCountsGgKey].int
		gege = json[kDMAllWordCountsGegeKey].int
		lel = json[kDMAllWordCountsLelKey].int
		happens = json[kDMAllWordCountsHappensKey].int
		wtf = json[kDMAllWordCountsWtfKey].int
		well = json[kDMAllWordCountsWellKey].int
		lul = json[kDMAllWordCountsLulKey].int
		that = json[kDMAllWordCountsThatKey].int
		hahahaha = json[kDMAllWordCountsHahahahaKey].int
		wp = json[kDMAllWordCountsWpKey].int
		hahaha = json[kDMAllWordCountsHahahaKey].int
		ez = json[kDMAllWordCountsEzKey].int
		hahah = json[kDMAllWordCountsHahahKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if gg != nil {
			dictionary.updateValue(gg! as AnyObject, forKey: kDMAllWordCountsGgKey)
		}
		if gege != nil {
			dictionary.updateValue(gege! as AnyObject, forKey: kDMAllWordCountsGegeKey)
		}
		if lel != nil {
			dictionary.updateValue(lel! as AnyObject, forKey: kDMAllWordCountsLelKey)
		}
		if happens != nil {
			dictionary.updateValue(happens! as AnyObject, forKey: kDMAllWordCountsHappensKey)
		}
		if wtf != nil {
			dictionary.updateValue(wtf! as AnyObject, forKey: kDMAllWordCountsWtfKey)
		}
		if well != nil {
			dictionary.updateValue(well! as AnyObject, forKey: kDMAllWordCountsWellKey)
		}
		if lul != nil {
			dictionary.updateValue(lul! as AnyObject, forKey: kDMAllWordCountsLulKey)
		}
		if that != nil {
			dictionary.updateValue(that! as AnyObject, forKey: kDMAllWordCountsThatKey)
		}
		if hahahaha != nil {
			dictionary.updateValue(hahahaha! as AnyObject, forKey: kDMAllWordCountsHahahahaKey)
		}
		if wp != nil {
			dictionary.updateValue(wp! as AnyObject, forKey: kDMAllWordCountsWpKey)
		}
		if hahaha != nil {
			dictionary.updateValue(hahaha! as AnyObject, forKey: kDMAllWordCountsHahahaKey)
		}
		if ez != nil {
			dictionary.updateValue(ez! as AnyObject, forKey: kDMAllWordCountsEzKey)
		}
		if hahah != nil {
			dictionary.updateValue(hahah! as AnyObject, forKey: kDMAllWordCountsHahahKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.gg = aDecoder.decodeObject(forKey: kDMAllWordCountsGgKey) as? Int
		self.gege = aDecoder.decodeObject(forKey: kDMAllWordCountsGegeKey) as? Int
		self.lel = aDecoder.decodeObject(forKey: kDMAllWordCountsLelKey) as? Int
		self.happens = aDecoder.decodeObject(forKey: kDMAllWordCountsHappensKey) as? Int
		self.wtf = aDecoder.decodeObject(forKey: kDMAllWordCountsWtfKey) as? Int
		self.well = aDecoder.decodeObject(forKey: kDMAllWordCountsWellKey) as? Int
		self.lul = aDecoder.decodeObject(forKey: kDMAllWordCountsLulKey) as? Int
		self.that = aDecoder.decodeObject(forKey: kDMAllWordCountsThatKey) as? Int
		self.hahahaha = aDecoder.decodeObject(forKey: kDMAllWordCountsHahahahaKey) as? Int
		self.wp = aDecoder.decodeObject(forKey: kDMAllWordCountsWpKey) as? Int
		self.hahaha = aDecoder.decodeObject(forKey: kDMAllWordCountsHahahaKey) as? Int
		self.ez = aDecoder.decodeObject(forKey: kDMAllWordCountsEzKey) as? Int
		self.hahah = aDecoder.decodeObject(forKey: kDMAllWordCountsHahahKey) as? Int

    }

    open func encode(with aCoder: NSCoder) {
		aCoder.encode(gg, forKey: kDMAllWordCountsGgKey)
		aCoder.encode(gege, forKey: kDMAllWordCountsGegeKey)
		aCoder.encode(lel, forKey: kDMAllWordCountsLelKey)
		aCoder.encode(happens, forKey: kDMAllWordCountsHappensKey)
		aCoder.encode(wtf, forKey: kDMAllWordCountsWtfKey)
		aCoder.encode(well, forKey: kDMAllWordCountsWellKey)
		aCoder.encode(lul, forKey: kDMAllWordCountsLulKey)
		aCoder.encode(that, forKey: kDMAllWordCountsThatKey)
		aCoder.encode(hahahaha, forKey: kDMAllWordCountsHahahahaKey)
		aCoder.encode(wp, forKey: kDMAllWordCountsWpKey)
		aCoder.encode(hahaha, forKey: kDMAllWordCountsHahahaKey)
		aCoder.encode(ez, forKey: kDMAllWordCountsEzKey)
		aCoder.encode(hahah, forKey: kDMAllWordCountsHahahKey)

    }

}
