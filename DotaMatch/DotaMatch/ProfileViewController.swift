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
    let cellID = "ProfileMatchCell"
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
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.currentAccount?.recentMatches?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! ProfileMatchTableViewCell
        
        let match = self.currentAccount?.recentMatches?[indexPath.row]
        
        cell.killsNumbers.text = "\((match?.kills!)!)"
        cell.deathsNumber.text = "\((match?.deaths!)!)"
        cell.assistNumber.text = "\((match?.assists!)!)"
        var playerIsRadiant :Bool
        if ((match?.playerSlot)!<4){
            cell.radianOrDireImage.image = UIImage(named: "radiant")
            playerIsRadiant = true
        }
        else{
            cell.radianOrDireImage.image = UIImage(named: "dire")
            playerIsRadiant = false
        }
        cell.timeSpent.text = secondsToHoursMinutesSeconds(seconds: (match?.duration!)!)
        let date = NSDate(timeIntervalSince1970: TimeInterval((match?.startTime)!))
        cell.timeAgoNumber.text = relativePast(for: date as Date)
        
        return cell
    }
    
    
    
    
    
    
    
    
    func setupHeader(){
        self.playerNickname.text = "\((self.currentAccount?.info?.profile?.personaname!)!)"
        self.estimatedMMR.text = "\((self.currentAccount?.info?.mmrEstimate?.estimate!)!)"
        self.winsNumber.text = "\((self.currentAccount?.winLoss?.win!)!)"
        self.losesNumber.text = "\((self.currentAccount?.winLoss?.lose!)!)"
        AppService.shared.getImage((self.currentAccount?.info?.profile?.avatarfull)!, imageView: self.playerAvatar)
        self.playerAvatar.layer.cornerRadius = 40
        self.playerAvatar.clipsToBounds = true
        
    }
    func secondsToHoursMinutesSeconds (seconds : Int) -> (String) {
        var textToReturn = ""
        let hours = seconds/3600
        let minutes = (seconds % 3600) / 60
        let seconds = (seconds % 3600) % 60
        if (hours>0){
            textToReturn = "\(hours):"
        }
        if (minutes<=9){
            textToReturn = textToReturn+"0\(minutes):"
        }
        else{
        textToReturn = textToReturn+"\(minutes):"
        }
        if (seconds<=9){
            textToReturn = textToReturn+"0\(seconds)"
        }
        else{
            textToReturn = textToReturn+"\(seconds)"
        }
        
        return textToReturn
    }
    
    func relativePast(for date : Date) -> String {
        
        let units = Set<Calendar.Component>([.year, .month, .day, .hour, .minute, .second, .weekOfYear])
        let components = Calendar.current.dateComponents(units, from: date, to: Date())
        
        if components.year! > 0 {
            return "\(components.year!) " + (components.year! > 1 ? "years ago" : "year ago")
            
        } else if components.month! > 0 {
            return "\(components.month!) " + (components.month! > 1 ? "months ago" : "month ago")
            
        } else if components.weekOfYear! > 0 {
            return "\(components.weekOfYear!) " + (components.weekOfYear! > 1 ? "weeks ago" : "week ago")
            
        } else if (components.day! > 0) {
            return (components.day! > 1 ? "\(components.day!) days ago" : "Yesterday")
            
        } else if components.hour! > 0 {
            return "\(components.hour!) " + (components.hour! > 1 ? "hours ago" : "hour ago")
            
        } else if components.minute! > 0 {
            return "\(components.minute!) " + (components.minute! > 1 ? "minutes ago" : "minute ago")
            
        } else {
            return "\(components.second!) " + (components.second! > 1 ? "seconds ago" : "second ago")
        }
    }
}
