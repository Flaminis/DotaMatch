//
//  DMWinLoss.swift
//
//  Created by Philip DesJean on 10/18/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class DMWinLoss: NSObject {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMWinLossWinKey: String = "win"
	internal let kDMWinLossLoseKey: String = "lose"


    // MARK: Properties
	public var win: Int?
	public var lose: Int?


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
		win = json[kDMWinLossWinKey].int
		lose = json[kDMWinLossLoseKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if win != nil {
			dictionary.updateValue(win! as AnyObject, forKey: kDMWinLossWinKey)
		}
		if lose != nil {
			dictionary.updateValue(lose! as AnyObject, forKey: kDMWinLossLoseKey)
		}

        return dictionary
    }

}
