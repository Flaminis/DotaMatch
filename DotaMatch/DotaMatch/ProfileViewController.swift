//
//  ProfileViewController.swift
//  DotaMatch
//
//  Created by Philip DesJean on 10/7/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class ProfileViewController: DotaMatchBaseViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var losesNumber: UILabel!
    @IBOutlet weak var winsNumber: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var playerAvatar: UIImageView!
    @IBOutlet weak var playerCountryImage: UIImageView!
    @IBOutlet weak var playerNickname: UILabel!
    @IBOutlet weak var estimatedMMR: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeader()
        // Do any additional setup after loading the view.
    }
    
    //MARK: TableView Methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = self.currentAccount?.recentMatches?.count {
            return count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.profileMatchCell, for: indexPath) as! ProfileMatchTableViewCell
        
        if let match = self.currentAccount?.recentMatches?[indexPath.row] {
            
            cell.killsNumbers.text = "\(match.kills!)"
            cell.deathsNumber.text = "\(match.deaths!)"
            cell.assistNumber.text = "\(match.assists!)"
            
            cell.setImageForPlayerSlot(match.playerSlot!)
            
            cell.timeSpent.text = Utils.secondsToHoursMinutesSeconds(seconds: match.duration!)
            let date = Date(timeIntervalSince1970: TimeInterval(match.startTime!))
            cell.timeAgoNumber.text = Utils.relativePastFor(date)
        }
        
        return cell
    }
    
    func setupHeader() {
        
        self.playerNickname.text = "\((self.currentAccount?.info?.profile?.personaname!)!)"
        self.estimatedMMR.text = "\((self.currentAccount?.info?.mmrEstimate?.estimate!)!)"
        self.winsNumber.text = "\((self.currentAccount?.winLoss?.win!)!)"
        self.losesNumber.text = "\((self.currentAccount?.winLoss?.lose!)!)"
        AppService.shared.getImage((self.currentAccount?.info?.profile?.avatarfull)!, imageView: self.playerAvatar)
        self.playerAvatar.layer.cornerRadius = 40
        self.playerAvatar.clipsToBounds = true
        
    }
    
}
