//
//  DMMatch.swift
//
//  Created by Philip DesJean on 9/11/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}


open class DMMatch: NSObject {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kDMMatchAllWordCountsKey: String = "all_word_counts"
	internal let kDMMatchPicksBansKey: String = "picks_bans"
	internal let kDMMatchPositiveVotesKey: String = "positive_votes"
	internal let kDMMatchTowerStatusRadiantKey: String = "tower_status_radiant"
	internal let kDMMatchSeriesIdKey: String = "series_id"
	internal let kDMMatchTeamfightsKey: String = "teamfights"
	internal let kDMMatchReplayUrlKey: String = "replay_url"
	internal let kDMMatchVersionKey: String = "version"
	internal let kDMMatchMatchIdKey: String = "match_id"
	internal let kDMMatchPartiesKey: String = "parties"
	internal let kDMMatchPatchKey: String = "patch"
	internal let kDMMatchChatKey: String = "chat"
	internal let kDMMatchBarracksStatusRadiantKey: String = "barracks_status_radiant"
	internal let kDMMatchClusterKey: String = "cluster"
	internal let kDMMatchHumanPlayersKey: String = "human_players"
	internal let kDMMatchRadiantWinKey: String = "radiant_win"
	internal let kDMMatchObjectivesKey: String = "objectives"
	internal let kDMMatchCosmeticsKey: String = "cosmetics"
	internal let kDMMatchFirstBloodTimeKey: String = "first_blood_time"
	internal let kDMMatchStartTimeKey: String = "start_time"
	internal let kDMMatchReplaySaltKey: String = "replay_salt"
	internal let kDMMatchLobbyTypeKey: String = "lobby_type"
	internal let kDMMatchDurationKey: String = "duration"
	internal let kDMMatchComebackKey: String = "comeback"
	internal let kDMMatchRegionKey: String = "region"
	internal let kDMMatchMatchSeqNumKey: String = "match_seq_num"
	internal let kDMMatchNegativeVotesKey: String = "negative_votes"
	internal let kDMMatchPlayersKey: String = "players"
	internal let kDMMatchSkillKey: String = "skill"
	internal let kDMMatchMyWordCountsKey: String = "my_word_counts"
	internal let kDMMatchBarracksStatusDireKey: String = "barracks_status_dire"
	internal let kDMMatchRadiantGoldAdvKey: String = "radiant_gold_adv"
	internal let kDMMatchSeriesTypeKey: String = "series_type"
	internal let kDMMatchLeagueidKey: String = "leagueid"
	internal let kDMMatchGameModeKey: String = "game_mode"
	internal let kDMMatchStompKey: String = "stomp"
	internal let kDMMatchTowerStatusDireKey: String = "tower_status_dire"
	internal let kDMMatchRadiantXpAdvKey: String = "radiant_xp_adv"
	internal let kDMMatchEngineKey: String = "engine"


    // MARK: Properties
	open var allWordCounts: DMAllWordCounts?
	open var positiveVotes: Int?
	open var towerStatusRadiant: Int?
	open var seriesId: Int?
	open var teamfights: [DMTeamfights]?
	open var replayUrl: String?
	open var version: Int?
	open var matchId: Int?
	open var patch: Int?
	open var chat: [DMChat]?
	open var barracksStatusRadiant: Int?
	open var cluster: Int?
	open var humanPlayers: Int?
	open var radiantWin: Bool = false
	open var objectives: [DMObjectives]?
	open var firstBloodTime: Int?
	open var startTime: Int?
	open var replaySalt: Int?
	open var lobbyType: Int?
	open var duration: Int?
	open var comeback: Int?
	open var region: Int?
	open var matchSeqNum: Int?
	open var negativeVotes: Int?
	open var players: [DMPlayers]?
	open var skill: Int?
	open var myWordCounts: DMMyWordCounts?
	open var barracksStatusDire: Int?
	open var radiantGoldAdv: [Int]?
	open var seriesType: Int?
	open var leagueid: Int?
	open var gameMode: Int?
	open var stomp: Int?
	open var towerStatusDire: Int?
	open var radiantXpAdv: [Int]?
	open var engine: Int?


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
		allWordCounts = DMAllWordCounts(json: json[kDMMatchAllWordCountsKey])
		positiveVotes = json[kDMMatchPositiveVotesKey].int
		towerStatusRadiant = json[kDMMatchTowerStatusRadiantKey].int
		seriesId = json[kDMMatchSeriesIdKey].int
		teamfights = []
		if let items = json[kDMMatchTeamfightsKey].array {
			for item in items {
				teamfights?.append(DMTeamfights(json: item))
			}
		} else {
			teamfights = nil
		}
		replayUrl = json[kDMMatchReplayUrlKey].string
		version = json[kDMMatchVersionKey].int
		matchId = json[kDMMatchMatchIdKey].int
		patch = json[kDMMatchPatchKey].int
		chat = []
		if let items = json[kDMMatchChatKey].array {
			for item in items {
				chat?.append(DMChat(json: item))
			}
		} else {
			chat = nil
		}
		barracksStatusRadiant = json[kDMMatchBarracksStatusRadiantKey].int
		cluster = json[kDMMatchClusterKey].int
		humanPlayers = json[kDMMatchHumanPlayersKey].int
		radiantWin = json[kDMMatchRadiantWinKey].boolValue
		objectives = []
		if let items = json[kDMMatchObjectivesKey].array {
			for item in items {
				objectives?.append(DMObjectives(json: item))
			}
		} else {
			objectives = nil
		}
		firstBloodTime = json[kDMMatchFirstBloodTimeKey].int
		startTime = json[kDMMatchStartTimeKey].int
		replaySalt = json[kDMMatchReplaySaltKey].int
		lobbyType = json[kDMMatchLobbyTypeKey].int
		duration = json[kDMMatchDurationKey].int
		comeback = json[kDMMatchComebackKey].int
		region = json[kDMMatchRegionKey].int
		matchSeqNum = json[kDMMatchMatchSeqNumKey].int
		negativeVotes = json[kDMMatchNegativeVotesKey].int
		players = []
		if let items = json[kDMMatchPlayersKey].array {
			for item in items {
				players?.append(DMPlayers(json: item))
			}
		} else {
			players = nil
		}
		skill = json[kDMMatchSkillKey].int
		myWordCounts = DMMyWordCounts(json: json[kDMMatchMyWordCountsKey])
		barracksStatusDire = json[kDMMatchBarracksStatusDireKey].int
		radiantGoldAdv = []
		if let items = json[kDMMatchRadiantGoldAdvKey].array {
			for item in items {
				if let tempValue = item.int {
				radiantGoldAdv?.append(tempValue)
				}
			}
		} else {
			radiantGoldAdv = nil
		}
		seriesType = json[kDMMatchSeriesTypeKey].int
		leagueid = json[kDMMatchLeagueidKey].int
		gameMode = json[kDMMatchGameModeKey].int
		stomp = json[kDMMatchStompKey].int
		towerStatusDire = json[kDMMatchTowerStatusDireKey].int
		radiantXpAdv = []
		if let items = json[kDMMatchRadiantXpAdvKey].array {
			for item in items {
				if let tempValue = item.int {
				radiantXpAdv?.append(tempValue)
				}
			}
		} else {
			radiantXpAdv = nil
		}
		engine = json[kDMMatchEngineKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    open func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if allWordCounts != nil {
			dictionary.updateValue(allWordCounts!.dictionaryRepresentation() as AnyObject, forKey: kDMMatchAllWordCountsKey)
		}
		if positiveVotes != nil {
			dictionary.updateValue(positiveVotes! as AnyObject, forKey: kDMMatchPositiveVotesKey)
		}
		if towerStatusRadiant != nil {
			dictionary.updateValue(towerStatusRadiant! as AnyObject, forKey: kDMMatchTowerStatusRadiantKey)
		}
		if seriesId != nil {
			dictionary.updateValue(seriesId! as AnyObject, forKey: kDMMatchSeriesIdKey)
		}
		if teamfights?.count > 0 {
			var temp: [AnyObject] = []
			for item in teamfights! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMMatchTeamfightsKey)
		}
		if replayUrl != nil {
			dictionary.updateValue(replayUrl! as AnyObject, forKey: kDMMatchReplayUrlKey)
		}
		if version != nil {
			dictionary.updateValue(version! as AnyObject, forKey: kDMMatchVersionKey)
		}
		if matchId != nil {
			dictionary.updateValue(matchId! as AnyObject, forKey: kDMMatchMatchIdKey)
		}
		if patch != nil {
			dictionary.updateValue(patch! as AnyObject, forKey: kDMMatchPatchKey)
		}
		if chat?.count > 0 {
			var temp: [AnyObject] = []
			for item in chat! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMMatchChatKey)
		}
		if barracksStatusRadiant != nil {
			dictionary.updateValue(barracksStatusRadiant! as AnyObject, forKey: kDMMatchBarracksStatusRadiantKey)
		}
		if cluster != nil {
			dictionary.updateValue(cluster! as AnyObject, forKey: kDMMatchClusterKey)
		}
		if humanPlayers != nil {
			dictionary.updateValue(humanPlayers! as AnyObject, forKey: kDMMatchHumanPlayersKey)
		}
		dictionary.updateValue(radiantWin as AnyObject, forKey: kDMMatchRadiantWinKey)
		if objectives?.count > 0 {
			var temp: [AnyObject] = []
			for item in objectives! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMMatchObjectivesKey)
		}
		if firstBloodTime != nil {
			dictionary.updateValue(firstBloodTime! as AnyObject, forKey: kDMMatchFirstBloodTimeKey)
		}
		if startTime != nil {
			dictionary.updateValue(startTime! as AnyObject, forKey: kDMMatchStartTimeKey)
		}
		if replaySalt != nil {
			dictionary.updateValue(replaySalt! as AnyObject, forKey: kDMMatchReplaySaltKey)
		}
		if lobbyType != nil {
			dictionary.updateValue(lobbyType! as AnyObject, forKey: kDMMatchLobbyTypeKey)
		}
		if duration != nil {
			dictionary.updateValue(duration! as AnyObject, forKey: kDMMatchDurationKey)
		}
		if comeback != nil {
			dictionary.updateValue(comeback! as AnyObject, forKey: kDMMatchComebackKey)
		}
		if region != nil {
			dictionary.updateValue(region! as AnyObject, forKey: kDMMatchRegionKey)
		}
		if matchSeqNum != nil {
			dictionary.updateValue(matchSeqNum! as AnyObject, forKey: kDMMatchMatchSeqNumKey)
		}
		if negativeVotes != nil {
			dictionary.updateValue(negativeVotes! as AnyObject, forKey: kDMMatchNegativeVotesKey)
		}
		if players?.count > 0 {
			var temp: [AnyObject] = []
			for item in players! {
				temp.append(item.dictionaryRepresentation() as AnyObject)
			}
			dictionary.updateValue(temp as AnyObject, forKey: kDMMatchPlayersKey)
		}
		if skill != nil {
			dictionary.updateValue(skill! as AnyObject, forKey: kDMMatchSkillKey)
		}
		if myWordCounts != nil {
			dictionary.updateValue(myWordCounts!.dictionaryRepresentation() as AnyObject, forKey: kDMMatchMyWordCountsKey)
		}
		if barracksStatusDire != nil {
			dictionary.updateValue(barracksStatusDire! as AnyObject, forKey: kDMMatchBarracksStatusDireKey)
		}
		if radiantGoldAdv?.count > 0 {
			dictionary.updateValue(radiantGoldAdv! as AnyObject, forKey: kDMMatchRadiantGoldAdvKey)
		}
		if seriesType != nil {
			dictionary.updateValue(seriesType! as AnyObject, forKey: kDMMatchSeriesTypeKey)
		}
		if leagueid != nil {
			dictionary.updateValue(leagueid! as AnyObject, forKey: kDMMatchLeagueidKey)
		}
		if gameMode != nil {
			dictionary.updateValue(gameMode! as AnyObject, forKey: kDMMatchGameModeKey)
		}
		if stomp != nil {
			dictionary.updateValue(stomp! as AnyObject, forKey: kDMMatchStompKey)
		}
		if towerStatusDire != nil {
			dictionary.updateValue(towerStatusDire! as AnyObject, forKey: kDMMatchTowerStatusDireKey)
		}
		if radiantXpAdv?.count > 0 {
			dictionary.updateValue(radiantXpAdv! as AnyObject, forKey: kDMMatchRadiantXpAdvKey)
		}
		if engine != nil {
			dictionary.updateValue(engine! as AnyObject, forKey: kDMMatchEngineKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.allWordCounts = aDecoder.decodeObject(forKey: kDMMatchAllWordCountsKey) as? DMAllWordCounts
		self.positiveVotes = aDecoder.decodeObject(forKey: kDMMatchPositiveVotesKey) as? Int
		self.towerStatusRadiant = aDecoder.decodeObject(forKey: kDMMatchTowerStatusRadiantKey) as? Int
		self.seriesId = aDecoder.decodeObject(forKey: kDMMatchSeriesIdKey) as? Int
		self.teamfights = aDecoder.decodeObject(forKey: kDMMatchTeamfightsKey) as? [DMTeamfights]
		self.replayUrl = aDecoder.decodeObject(forKey: kDMMatchReplayUrlKey) as? String
		self.version = aDecoder.decodeObject(forKey: kDMMatchVersionKey) as? Int
		self.matchId = aDecoder.decodeObject(forKey: kDMMatchMatchIdKey) as? Int
		self.patch = aDecoder.decodeObject(forKey: kDMMatchPatchKey) as? Int
		self.chat = aDecoder.decodeObject(forKey: kDMMatchChatKey) as? [DMChat]
		self.barracksStatusRadiant = aDecoder.decodeObject(forKey: kDMMatchBarracksStatusRadiantKey) as? Int
		self.cluster = aDecoder.decodeObject(forKey: kDMMatchClusterKey) as? Int
		self.humanPlayers = aDecoder.decodeObject(forKey: kDMMatchHumanPlayersKey) as? Int
		self.radiantWin = aDecoder.decodeBool(forKey: kDMMatchRadiantWinKey)
		self.objectives = aDecoder.decodeObject(forKey: kDMMatchObjectivesKey) as? [DMObjectives]
		self.firstBloodTime = aDecoder.decodeObject(forKey: kDMMatchFirstBloodTimeKey) as? Int
		self.startTime = aDecoder.decodeObject(forKey: kDMMatchStartTimeKey) as? Int
		self.replaySalt = aDecoder.decodeObject(forKey: kDMMatchReplaySaltKey) as? Int
		self.lobbyType = aDecoder.decodeObject(forKey: kDMMatchLobbyTypeKey) as? Int
		self.duration = aDecoder.decodeObject(forKey: kDMMatchDurationKey) as? Int
		self.comeback = aDecoder.decodeObject(forKey: kDMMatchComebackKey) as? Int
		self.region = aDecoder.decodeObject(forKey: kDMMatchRegionKey) as? Int
		self.matchSeqNum = aDecoder.decodeObject(forKey: kDMMatchMatchSeqNumKey) as? Int
		self.negativeVotes = aDecoder.decodeObject(forKey: kDMMatchNegativeVotesKey) as? Int
		self.players = aDecoder.decodeObject(forKey: kDMMatchPlayersKey) as? [DMPlayers]
		self.skill = aDecoder.decodeObject(forKey: kDMMatchSkillKey) as? Int
		self.myWordCounts = aDecoder.decodeObject(forKey: kDMMatchMyWordCountsKey) as? DMMyWordCounts
		self.barracksStatusDire = aDecoder.decodeObject(forKey: kDMMatchBarracksStatusDireKey) as? Int
		self.radiantGoldAdv = aDecoder.decodeObject(forKey: kDMMatchRadiantGoldAdvKey) as? [Int]
		self.seriesType = aDecoder.decodeObject(forKey: kDMMatchSeriesTypeKey) as? Int
		self.leagueid = aDecoder.decodeObject(forKey: kDMMatchLeagueidKey) as? Int
		self.gameMode = aDecoder.decodeObject(forKey: kDMMatchGameModeKey) as? Int
		self.stomp = aDecoder.decodeObject(forKey: kDMMatchStompKey) as? Int
		self.towerStatusDire = aDecoder.decodeObject(forKey: kDMMatchTowerStatusDireKey) as? Int
		self.radiantXpAdv = aDecoder.decodeObject(forKey: kDMMatchRadiantXpAdvKey) as? [Int]
		self.engine = aDecoder.decodeObject(forKey: kDMMatchEngineKey) as? Int

    }


}
