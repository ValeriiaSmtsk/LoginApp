//
//  ViewController.swift
//  LoginApp
//
//  Created by Валерия Смецкая on 08.03.2022.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
  
// MARK: - IB Outlets
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
// MARK: - Private Properties
    private let userName = "Valeriia"
    private let password = "Password"

// MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        forgotUserNameButton.titleLabel?.adjustsFontSizeToFitWidth = true
        forgotUserNameButton.titleLabel?.minimumScaleFactor = 0.5
        forgotPasswordButton.titleLabel?.adjustsFontSizeToFitWidth = true
        forgotPasswordButton.titleLabel?.minimumScaleFactor = 0.5
        
        userNameTF.delegate = self
        passwordTF.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userGreeting = userNameTF.text
    }

// MARK: - IB Actions
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == userName && passwordTF.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login or password "
            )
            passwordTF.text = ""
            return
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(title: "Ooops!", message: "Your name is \(userName) 😉")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Ooops!", message: "Your password is \(password) 😉")
    }
}

// MARK: - Public Method
extension LogInViewController {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       if textField == userNameTF {
           textField.resignFirstResponder()
           passwordTF.becomeFirstResponder()
       } else if textField == passwordTF {
           logInButtonPressed()
           performSegue(withIdentifier: "logInSegue", sender: nil)
       }
       return true
   }
 
// MARK: - Private Method
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style: .default
        )
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
