//
//  ViewController.swift
//  LoginApp
//
//  Created by Валерия Смецкая on 08.03.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "Valeriia"
    private let password = "Password"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userGreeting = userNameTF.text
    }
    
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == userName && passwordTF.text == password else {
         showAlert(
            title: "Invalid login or password",
            message: "Please, enter correct login or password "
         )
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

// MARK: - Private Methods
extension LogInViewController {
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
