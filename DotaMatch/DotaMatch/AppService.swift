//
//  AppService.swift
//  DotaMate
//
//  Created by Philip DesJean on 9/5/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class AppService: NSObject {
    
    static let shared = AppService()
    
    let api = DotaMateApi()
    
    var items = [Int:DMItems]()
    
    var heroes = [Int:DMHeroes]()
    
    var currentAccount : Profile?
    
    //<<<<<<< Updated upstream
    var steamId = Int()
    var username = String()
    var password = String()
    var searchName = String()
    
    func setup() {
        api.getItems()
        api.downloadHeroesFromAPI()
    }
    
    func setAccountFor(steamId: Int) {
        if currentAccount == nil {
            currentAccount = Profile()
        }
        
        api.getPlayerProfile(steamId) { profile, error in
            if error != nil {
                //explode
            }
            
            self.currentAccount?.info = profile
        }
        
        api.getRecentMatches(steamId, limit: ApiConstatns.defaultApiLimit) { matches, error in
            if error != nil {
                //explode
            }
            
            self.currentAccount?.recentMatches = matches
        }
        
        api.getPlayerHeroes(steamId) { heroes, error in
            
            if error != nil {
                //explode
            }
            
            self.currentAccount?.heroes = heroes
        }
        
        api.getPlayerPeers(steamId) { peers, error in
            
            if error != nil {
                //explode
            }
            
            self.currentAccount?.peers = peers
            
        }
        
        api.getWinLoss(steamId) { winLoss, error in
            
            if error != nil {
                //explode
            }
            
            self.currentAccount?.winLoss = winLoss
        }
        
        
    }
    
    func getSearchResults(_ searchString : String, success: @escaping (_ result: [ApiUser]?) -> Void, failure: (_ result: NSError?) -> Void) {
        
        let queryParams = ["q" : searchString]

        api.getSearchResults(queryParams as [String : AnyObject]) { response, error in
            
            if error != nil {
                //explode
            }
            
            success(response)
            
        }
        
    }
    
    func getMatch(_ matchId: Int, success: @escaping (_ result: DMMatch?) -> Void, failure: (_ result: NSError?) -> Void) {
        
        api.getMatch(matchId) { response, error in
            
            if error != nil {
                //explode
            }
            
            success(response)
        }
        
    }
    
    func getPlayerProfile(_ accountId: Int, success: @escaping (_ result: DMPlayerProfile?) -> Void, failure: (_ result: NSError?) -> Void) {
        
        api.getPlayerProfile(accountId) { response, error in
            
            if error != nil {
                //explode
            }
            
            success(response)
        }
        
    }
    
    func getRecentMatches(_ accountId: Int, success: @escaping (_ result: [DMRecentMatch]?) -> Void, failure: (_ result: NSError?) -> Void) {
        api.getRecentMatches(accountId) { response, error in
            if error != nil {
                //explode
            }
            
            success(response)
        }
    }

    
    func getImage(_ url: String, imageView: UIImageView) {
        api.getImage(url, imageView: imageView)
    }
    
}
