//
//  RegisterVC.swift
//  EcommerceApp
//
//  Created by Basma Said on 20/10/2020.
//

import UIKit
import Firebase

class RegisterVC: UIViewController {
    
    
    //Outlets
    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var confPasswordText: UITextField!
    
    @IBOutlet weak var activityLoading: UIActivityIndicatorView!
    
    @IBOutlet weak var checkPassWord: UIImageView!
    
    @IBOutlet weak var checkConfirmPassword: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        passwordText.addTarget(self, action: #selector(textFieldChanged(_:)), for: UIControl.Event.editingChanged)
        confPasswordText.addTarget(self, action: #selector(textFieldChanged(_:)), for: UIControl.Event.editingChanged)
        
        
    }
    
    //i create that method its not default method so the name can be any thing
    @objc func textFieldChanged(_ textField:UITextField){
        
       guard let passText = passwordText.text else {return}
        
    //if we started typing in the confirmpass text start show the check mark
    
        if textField == confPasswordText {
            checkPassWord.isHidden = false
            checkConfirmPassword.isHidden = false
        }else if passText.isEmpty {
            checkPassWord.isHidden = true
            checkConfirmPassword.isHidden = true
            confPasswordText.text = ""
        }
        
    //make it green when the password match the confirm password
        if passwordText.text == confPasswordText.text {
            checkPassWord.image = UIImage(named: AppImages.greenCheck)
            checkConfirmPassword.image = UIImage(named: AppImages.greenCheck)
        }else{
            checkPassWord.image = UIImage(named: AppImages.redCheck)
            checkConfirmPassword.image = UIImage(named: AppImages.redCheck)
        }
    
        
        
    }
    
    
    //register new user
    
    @IBAction func registerPressed(_ sender: Any) {
       
        
        guard let userName = usernameText.text , userName.isNotEmpty , let email = emailText.text , email.isNotEmpty , let password = passwordText.text , password.isNotEmpty else {return}
        activityLoading.startAnimating()
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            if let error = error {
                debugPrint(error)
                return
            }
            self.activityLoading.stopAnimating()
            print("successfully registered ")
        }
       
    }
    
}
