//
//  SignInViewController.swift
//  AlarStudiosTestTask
//
//  Created by Anjey Novitskiy on 2021-06-12.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var loginField: CustomTextField!
    @IBOutlet weak var passwordField: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.layer.cornerRadius = signInButton.frame.height/2
        loginField.setLeftImage(image: UIImage(systemName: "person")!)
        loginField.setPlaceholder(text: "John Doe")
        loginField.layer.cornerRadius = loginField.frame.height/2
        passwordField.setLeftImage(image: UIImage(systemName: "key")!)
        passwordField.setPlaceholder(text: "********")
        passwordField.layer.cornerRadius = passwordField.frame.height/2
        
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
