//
//  MatchDetailsViewController.swift
//  DotaMate
//
//  Created by Philip DesJean on 9/11/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import Kingfisher

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


class MatchDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var matchId : Int?
    
    var match : DMMatch?
    var players = [Int:DMPlayerProfile]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let nib = UINib.init(nibName: "MatchDetailsPlayerTableViewCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "playerCell")
        
        AppService.shared.getMatch(matchId!, success: { (result) in
            
            let match = result!
            
            self.match = match
            
            self.getPlayerInfo()
        }) { (result) in
            
        }
        
    }
    
    func getPlayerInfo() {
        
        var count = 0
        
        for player in (match?.players)! {
            
            if player.accountId != nil {
            
                AppService.shared.getPlayerProfile(player.accountId!, success: { result in
                    
                    count += 1
                    self.players.updateValue(result!, forKey: player.accountId!)
                    
                    if count == 10 {
                        self.tableView.reloadData()
                    }
                    
                }, failure: { (result) in
                    
                })
            
            } else {
                
                count += 1
                
            }
        
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if match == nil {
            return 0
        } else {
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell", for: indexPath) as! MatchDetailsPlayerTableViewCell
        
        let player = match?.players![(indexPath as NSIndexPath).row]
        var name = ""
        
        if player?.personaname != nil {
            name = player!.personaname!
        } else {
            name = "Anon"
        }
        
        cell.playerNameLabel.text = name
        cell.levelLabel.text = String(player!.level!)
        cell.killsLabel.text = String(player!.kills!)
        cell.deathsLabel.text = String(player!.deaths!)
        cell.assistsLabel.text = String(player!.assists!)
        cell.lastHitLabel.text = String(player!.lastHits!)
        cell.goldLabel.text = String(player!.totalGold!)
        
        cell.levelLabel.textColor = UIColor.white
        cell.playerNameLabel.textColor = UIColor.white
        cell.deathsLabel.textColor = UIColor.white
        cell.estimatedMMRLabel.textColor = UIColor.white
        
        cell.killsLabel.textColor = UIColor.init(hexString: "BC0C0C")
        cell.assistsLabel.textColor = UIColor.init(hexString: "A1C04F")
        cell.lastHitLabel.textColor = UIColor.init(hexString: "F5A623")
        cell.goldLabel.textColor = UIColor.init(hexString: "F5A623")
        
        if player?.accountId != nil {
            
            let playerProfile = players[player!.accountId!]
            
            cell.estimatedMMRLabel.text = String(playerProfile!.mmrEstimate!.estimate!)
            cell.playerProfileImage.kf.setImage(with: URL(string: (playerProfile?.profile?.avatarmedium!)!))
            
        }
        
        let item0 = player?.item0
        let item1 = player?.item1
        let item2 = player?.item2
        let item3 = player?.item3
        let item4 = player?.item4
        let item5 = player?.item5
        
        cell.itemView.backgroundColor = .clear
        
        if item0 > 0 {
            cell.item1.kf.setImage(with: URL(string: AppService.shared.items[item0!]!.imageUrl!))
        } else {
            cell.item1.image = nil
        }
        if item1 > 0 {
            cell.item2.kf.setImage(with: URL(string: AppService.shared.items[item1!]!.imageUrl!))
        } else {
            cell.item2.image = nil
        }
        if item2 > 0 {
            cell.item3.kf.setImage(with: URL(string: AppService.shared.items[item2!]!.imageUrl!))
        } else {
            cell.item3.image = nil
        }
        if item3 > 0 {
            cell.item4.kf.setImage(with: URL(string: AppService.shared.items[item3!]!.imageUrl!))
        } else {
            cell.item4.image = nil
        }
        if item4 > 0 {
            cell.item5.kf.setImage(with: URL(string: AppService.shared.items[item4!]!.imageUrl!))
        } else {
            cell.item5.image = nil
        }
        if item5 > 0 {
            cell.item6.kf.setImage(with: URL(string: AppService.shared.items[item5!]!.imageUrl!))
        } else {
            cell.item6.image = nil
        }
        
        let hero = AppService.shared.heroes[(player?.heroId!)!]
        
        cell.heroBackground.kf.setImage(with:URL(string: (hero?.largeUrl!)!))
        cell.heroBackground.alpha = 0.25
        cell.heroTiny.kf.setImage(with:URL(string: (hero?.smallUrl!)!))
        
        cell.cellView.backgroundColor = UIColor.black
        cell.cellView.layer.masksToBounds = true
        
        return cell
    }

}
