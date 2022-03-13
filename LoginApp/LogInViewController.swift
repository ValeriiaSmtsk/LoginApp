//
//  ViewController.swift
//  LoginApp
//
//  Created by Валерия Смецкая on 08.03.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private Properties
    private let userName = "Valeriia"
    private let password = "Password"
    
    // MARK: Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userGreeting = userName
    }
    
    // MARK: - IB Actions
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == userName && passwordTF.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login or password ",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "logInSegue", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func showAuthorizationData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Ooops!", message: "Your name is \(userName) 😉")
        : showAlert(title: "Ooops!", message: "Your password is \(password) 😉")
    }
}
    
    // MARK: - Private Method
extension LogInViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - Keyboard
extension LogInViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if textField == userNameTF {
                passwordTF.becomeFirstResponder()
            } else {
                logInButtonPressed()
            }
            return true
        }
}
