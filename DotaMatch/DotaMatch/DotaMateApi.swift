//
//  DotaMateApi.swift
//  DotaMate
//
//  Created by Philip DesJean on 9/5/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class DotaMateApi: NSObject {
        
    let baseUrl = "https://api.opendota.com/api"
    
    //Bools
    var userSearchInProgress = false
    
    func getRequest(_ url : String, pathParams : [String:String]?=nil, queryParams : [String:Any]?=nil, completionHandler: @escaping (Any?, NSError?) -> ()) {
        
        var finalUrl = baseUrl
        
        if pathParams != nil {
            finalUrl = finalUrl + applyPathParams(url, pathParams: pathParams!)
        } else {
            finalUrl = finalUrl + url
        }
        
        print(finalUrl)
        
        Alamofire.request(finalUrl, method: .get, parameters: queryParams, encoding: URLEncoding.default, headers: nil).responseJSON { response in
            
            
            if response.result.isSuccess {
                completionHandler(response.result.value, nil)
            } else if response.result.isFailure {
                completionHandler(nil, response.result.error as? NSError)
            }
            
        }

    }
    
    func applyPathParams(_ url: String, pathParams : [String:String]) -> String {
        var finalUrl = url
        
        for keyName in pathParams.keys {
            finalUrl = finalUrl.replacingOccurrences(of: "{"+keyName+"}", with: pathParams[keyName]!)
        }
        
        return finalUrl;
    }
    
    func getImage(_ url: String, imageView: UIImageView) {
        
        imageView.url = url
        
        Alamofire.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseData { response in
            
            if imageView.url == response.request!.url!.absoluteString {
                let image = UIImage(data: response.data!)
                
                DispatchQueue.main.async( execute: {
                    imageView.image = image
                })
                
            }
        }
    }
    
    func getSearchResults(_ queryParams: [String : AnyObject], completionHandler: @escaping ([ApiUser]?, NSError?) -> ()) {
        let url = DotaMateApiResources.Resource.ResourceSearch.rawValue
    
        getRequest(url, queryParams: queryParams) { response1, error in
            
            if error != nil {
                //fix later
                print("something went wrong")
            }
            
            let response = response1 as? [AnyObject]
            
            let count = response?.count
            
            var x = 0
            
            var users = [ApiUser]()
            
            repeat {
                
                let json = JSON.init(response![x])
                
                let newUser = ApiUser.init(json: json)
                
                users.append(newUser)
                
                x += 1
                
            } while x < count!
            
            completionHandler(users, error)
            
        }
    }
    
    func getMatch(_ matchId: Int, completionHandler: @escaping (DMMatch?, NSError?) -> ()) {
        let url = DotaMateApiResources.Resource.ResourceMatch.rawValue
        
        let pathParams = ["matchId": "\(matchId)"]
        
        getRequest(url, pathParams: pathParams) { responseObject, error in
            let json = JSON.init(responseObject!)
            
            let match = DMMatch.init(json: json)
            
            completionHandler(match, error)
        }
    }
    
    func getPlayerProfile(_ accountId: Int, completionHandler: @escaping (DMPlayerProfile?, NSError?) -> ()) {
        let url = DotaMateApiResources.Resource.ResourcePlayerGet.rawValue
        
        let pathParams = ["accountId": "\(accountId)"]
        
        getRequest(url, pathParams: pathParams) { responseObject, error in
            let json = JSON.init(responseObject!)
            
            let match = DMPlayerProfile.init(json: json)
            
            completionHandler(match, error)
        }
    }
    
    func getWinLoss(_ accountId: Int, completionHandler: @escaping (DMWinLoss?, NSError?) -> ()) {
        let url = DotaMateApiResources.Resource.ResourcePlayerWinLoss.rawValue
        
        let pathParams = ["accountId": "\(accountId)"]
        
        getRequest(url, pathParams: pathParams) { responseObject, error in
            let json = JSON.init(responseObject!)
            
            let winLoss = DMWinLoss.init(json: json)
            
            completionHandler(winLoss, error)
        }
    }
    
    func getPlayerHeroes(_ accountId: Int, completionHandler: @escaping ([DMPlayerHeroes]?, NSError?) -> ()) {
        let url = DotaMateApiResources.Resource.ResourcePlayerHeroes.rawValue
        
        let pathParams = ["accountId": "\(accountId)"]
        
        getRequest(url, pathParams: pathParams) { responseObject, error in
            let response = responseObject! as? [AnyObject]
            
            let count = response!.count
            
            var heroes = [DMPlayerHeroes]()
            
            var x = 0
            
            repeat {
                
                let json = JSON.init(response![x])
                
                let hero = DMPlayerHeroes.init(json: json)
                
                heroes.append(hero)
                
                x += 1
                
            } while x < count
            
            completionHandler(heroes, error)
        }
    }
    
    func getPlayerPeers(_ accountId: Int, completionHandler: @escaping ([DMPeers]?, NSError?) -> ()) {
        let url = DotaMateApiResources.Resource.ResourcePlayerPeers.rawValue
        
        let pathParams = ["accountId": "\(accountId)"]
        
        getRequest(url, pathParams: pathParams) { responseObject, error in
            let response = responseObject! as? [AnyObject]
            
            let count = response!.count
            
            var peers = [DMPeers]()
            
            var x = 0
            
            repeat {
                
                let json = JSON.init(response![x])
                
                let peer = DMPeers.init(json: json)
                
                peers.append(peer)
                
                x += 1
                
            } while x < count
            
            completionHandler(peers, error)
        }
    }
    
    func getRecentMatches(_ accountId: Int, limit: Int?=nil, offset:Int?=nil, didWin: Bool?=nil, patch: Int?=nil, heroId: Int?=nil, isRadiant: Bool?=nil,  completionHandler: @escaping ([DMRecentMatch]?, NSError?) -> ()) {
        let url = DotaMateApiResources.Resource.ResourcePlayerMatches.rawValue
        
        let pathParams = ["accountId": "\(accountId)"]
        
        var queryParams = [String:String]()
        
        if let limit = limit {
            queryParams.updateValue("\(limit)", forKey: "limit")
        }
        
        if let offset = offset {
            queryParams.updateValue("\(offset)", forKey: "offset")
        }
        
        if let didWin = didWin {
            if didWin {
                queryParams.updateValue("1", forKey: "didWin")
            } else {
                queryParams.updateValue("0", forKey: "didWin")
            }
        }
        
        if let patch = patch {
            queryParams.updateValue("\(patch)", forKey: "patch")
        }
        
        if let heroId = heroId {
            queryParams.updateValue("\(heroId)", forKey: "heroId")
        }
        
        if let isRadiant = isRadiant {
            if isRadiant {
                queryParams.updateValue("1", forKey: "isRadiant")
            } else {
                queryParams.updateValue("0", forKey: "isRadiant")
            }
        }
        
        getRequest(url, pathParams: pathParams, queryParams: queryParams) { responseObject, error in
            
            let response = responseObject! as? [AnyObject]
            
            let count = response!.count
            
            var x = 0
            
            var matches = [DMRecentMatch]()
            
            repeat {
                
                let json = JSON.init(response![x])
                
                let match = DMRecentMatch.init(json: json)
                
                print(match.matchId)
                
                matches.append(match)
                
                x += 1
                
            } while x < count
            
            completionHandler(matches, error)
        }
    }
    
    func getItems() {
        let url = "https://api.steampowered.com/IEconDOTA2_570/GetGameItems/v1/?key=A041063D0F9386FD666F26E04598C9D0&format=json"
        
        Alamofire.request(url).responseJSON { response in
            
            let json = JSON.init(response.result.value!)
            
            let result = DMResult.init(json: json["result"])
            
            AppService.shared.items.removeAll()
            
            for item in result.items! {
                
                let name = item.name!.replacingOccurrences(of: "item_", with: "")
                
                let url = "http://media.steampowered.com/apps/dota2/images/items/\(name)_lg.png?"
                
                item.imageUrl = url
                
                AppService.shared.items.updateValue(item, forKey: item.internalIdentifier!)
                
            }
            
        }
        
    }
    
    func downloadHeroesFromAPI() {
        
        let queryParams = ["language":"en-us", "key" : "A041063D0F9386FD666F26E04598C9D0"]
        
        Alamofire.request("http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v0001/", method: .get, parameters: queryParams,encoding: URLEncoding.default).validate().responseJSON(){ response in
            
            let json = JSON.init(response.result.value!)
            
            let heroes = DMResultHero.init(json: json["result"])
            
            for hero in heroes.heroes! {
                
                let name = hero.name!
                let imageHeroName = name.replacingOccurrences(of: "npc_dota_hero_", with: "")
                hero.largeUrl = "http://cdn.dota2.com/apps/dota2/images/heroes/\(imageHeroName)_lg.png"
                hero.smallUrl = "http://media.steampowered.com/apps/dota2/images/heroes/\(imageHeroName)_sb.png"
                hero.portraitUrl = "http://cdn.dota2.com/apps/dota2/images/heroes/\(imageHeroName)_vert.jpg"
                
                AppService.shared.heroes.updateValue(hero, forKey: hero.internalIdentifier!)
            }
            
        }
    }

    
}
