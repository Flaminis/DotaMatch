//
//  UserSearchTableViewController.swift
//  DotaMate
//
//  Created by Philip DesJean on 9/5/16.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit

protocol UserSearchDelegate {
    func recieveAccountId(_ accountID: String)
}

class UserSearchTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var users = [ApiUser]()
    
    var matchToShow = Int()
    
    var delegate : UserSearchDelegate?
    
    var regSearchString : String?
    
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        searchTextField.autocorrectionType = .no
        searchTextField.keyboardAppearance = .dark

        if let searchString = regSearchString {
            searchTextField.text = searchString
            getUsers(searchString)
        }
        
    }
    
    func getUsers(_ searchString: String) {
        
        if searchString == "" {
            return
        }
        
        users.removeAll()
    
        AppService.sharedInstance.getSearchResults(searchString, success: { (result) in
            
            self.users = result!
            
            self.tableView.reloadData()
            
        }) { (result) in
            
            print("shit")
            
        }
    }
    
    @IBAction func searchButtonPressed(_ sender: UITextField) {
        
        if let searchString = sender.text {
            sender.resignFirstResponder()
            self.getUsers(searchString)
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
        
        let user = users[indexPath.row]
        
        cell.displayNameLabel.text = user.displayName!
        
        cell.avatarImageView.image = nil
        
        AppService.sharedInstance.getImage(user.avatar!, imageView: cell.avatarImageView)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)

        if let accountId = users[indexPath.row].accountId?.steam32to64String() {
            delegate?.recieveAccountId(accountId)
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
}
