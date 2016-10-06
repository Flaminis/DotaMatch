//
//  UserSearchTableViewController.swift
//  DotaMate
//
//  Created by Philip DesJean on 9/5/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

class UserSearchTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var users = [ApiUser]()
    
    var matchToShow = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getUsers()
        
    }
    
    func getUsers(_ searchString: String) {
        
        users.removeAll()
    
        AppService.sharedInstance.getSearchResults(searchString, success: { (result) in
            
            self.users = result!
            
            self.tableView.reloadData()
            
        }) { (result) in
            
            print("shit")
            
        }
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userSearchCell", for: indexPath) as! UserSearchTableViewCell
        
        let user = users[(indexPath as NSIndexPath).row]
        
        cell.displayNameLabel.text = user.displayName!
        
        cell.avatarImageView.image = nil
        
        AppService.sharedInstance.getImage(user.avatar!, imageView: cell.avatarImageView)
        
        return cell
    }
    
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let user = users[(indexPath as NSIndexPath).row]
        
        AppService.sharedInstance.getRecentMatches(user.accountId!, success: { (result) in
            
            self.matchToShow = result!.first!.matchId!
            
            self.performSegue(withIdentifier: "matchSegue", sender: nil)
            
        }) { (result) in
            
            print("shit")
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "matchSegue" {
            let vc = segue.destination as! MatchDetailsViewController
            
            vc.matchId = matchToShow
        }
        
    }

}
