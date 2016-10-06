//
//  LoginViewController.swift
//  DotaMatch
//
//  Created by Yerbol Kopzhassar on 05/10/2016.
//  Copyright © 2016 Yerbol Kopzhassar. All rights reserved.
//

import UIKit
import TextFieldEffects
import SCLAlertView
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordTextField: MadokaTextField!
    @IBOutlet weak var usernameTextField: MadokaTextField!
   
    @IBAction func signupButton(_ sender: UIButton) {
        AppService.sharedInstance.username = usernameTextField.text!
        AppService.sharedInstance.password = passwordTextField.text!
    }
    @IBAction func loginButton(_ sender: UIButton) {
       loginPressed()
        
    }
    @IBAction func guestButton(_ sender: UIButton) {
        searchPopUp()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func loginPressed(){
        let username = self.usernameTextField.text
        let password = self.passwordTextField.text
        
        if(((username?.characters.count)!<4) || ((password?.characters.count)!<4)) {
            let alert = UIAlertController(title: "Invalid!",
                                          message:"Email and Password must be longer than 6 charachters",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in })
            self.present(alert, animated: true){}
            
        } else {
        
            PFUser.logInWithUsername(inBackground: username!, password: password!, block: { (user, error) in
                
                
                if ((user) != nil) {
                    //remember user
                    UserDefaults.standard.set(user!.username, forKey: "username")
                    UserDefaults.standard.synchronize()
                    
                    //call login func
                    let appDelegate : AppDelegate = UIApplication.shared.delegate as!AppDelegate
                    appDelegate.login()
                    
                } else {
                    var alert:UIAlertController
                    
                    alert = UIAlertController(title: "Login Failed", message:"Unable to login, either email or password is incorrect. Have you signed up for a DotaMate account?", preferredStyle: .alert)
                    
                    alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in })
                    self.present(alert, animated: true){}
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
    let text = alertView.addTextField("Dota2 name")
    text.spellCheckingType = .no
    text.autocorrectionType = .no
    alertView.addButton("Search"){
    AppService.sharedInstance.searchName = text.text!
    self.search(input: text.text!)
    
    }
    alertView.showSuccess("Search your SteamID",
                          subTitle: "Please enter your Profile name or Steam64ID",
                          colorStyle: 0x982D1D, colorTextButton: 0xFFFFFF)
  
    }
    
    func search(input: String){
        
    
    
    
    
    }
    
}
