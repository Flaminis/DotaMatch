//
//  RegisterViewController.swift
//  DotaMatch
//
//  Created by Yerbol Kopzhassar on 05/10/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import SCLAlertView
import Parse
import TextFieldEffects

protocol RegistrationDelegate {
    func recieveAccountId(_ accountID: String)
}

class RegisterViewController: UIViewController, RegistrationDelegate {
    
    
    @IBOutlet weak var steamTextField: MadokaTextField!
    @IBOutlet weak var emailTextField: MadokaTextField!
    
    var searchString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func signUp() {
        
        if (((emailTextField?.text!.characters.count)! < 4) || ((steamTextField?.text!.characters.count)! < 9)) {
            
            let alert = UIAlertController(title: "Invalid!", message:"Email or SteamId is wrong", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default))
        
            self.present(alert, animated: true, completion: nil)
        
        } else {
            
            //spin it babe
            
            
            //send data to server with related columns
            let email = emailTextField.text
            let newUser = User()
            newUser.username = AppService.sharedInstance.username
            newUser.password = AppService.sharedInstance.password
            newUser.email = email?.lowercased()
            newUser.SteamID = steamTextField!.text!.steam64to32()
            
            //edited later on
            newUser.mmr = ""
            newUser.upvotes = 0
            //saveonServer
            
            newUser.signUpInBackground(block: { (succeed, error) in
            
                if ((error) != nil){
                    //error
                    let alert = UIAlertController(title: "Error!", message: error?.localizedDescription, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default))
                    self.present(alert, animated: true, completion: nil)
                    
                } else {
                    //remember logged user
                    UserDefaults.standard.set(newUser.username, forKey: "username")
                    UserDefaults.standard.synchronize()
                    //call login func from AppDelegate class & open up
                    let appDelegate = UIApplication.shared.delegate as! AppDelegate
                    appDelegate.login()
                }
            })
            
        }
    }
    
    func searchPopUp(){
        let appearance = SCLAlertView.SCLAppearance(
            kTitleFont: UIFont(name: "AvenirNext-Regular", size: 20)!,
            kTextFont: UIFont(name: "AvenirNext-Regular", size: 14)!,
            kButtonFont: UIFont(name: "AvenirNext-Bold", size: 14)!,
            showCloseButton: true
        )
        
        let alertView = SCLAlertView(appearance: appearance)
        let userNameTextField = alertView.addTextField("Dota2 name")
        userNameTextField.spellCheckingType = .no
        userNameTextField.autocorrectionType = .no
        
        alertView.addButton("Search"){
            
            if let text = userNameTextField.text {
                self.searchString = text
            }
            
            self.performSegue(withIdentifier: "searchUserSegue", sender: nil)
            
        }
        
        alertView.showSuccess("Search your SteamID",
                              subTitle: "Please enter your Profile name or Steam64ID",
                              closeButtonTitle: "Cancel",
                              colorStyle: 0x982D1D, colorTextButton: 0xFFFFFF)
        
    }
    
    @IBAction func findSteamButton(_ sender: UIButton) {
        searchPopUp()
    }
    @IBAction func signupButton(_ sender: UIButton) {
        signUp()
    }
    
    func recieveAccountId(_ accountID: String) {
        print(accountID)
        steamTextField.text = accountID
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "searchUserSegue" {
            
            let vc = segue.destination as! UserSearchTableViewController
            
            vc.delegate = self
            vc.regSearchString = searchString
            
        }
     
    }
    
}
