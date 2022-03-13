//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Валерия Смецкая on 13.03.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var aboutMeLabel: UILabel!
    @IBOutlet var userPhotoIV: UIImageView!
    
    @IBOutlet var hobbiButton: UIButton!
    @IBOutlet var educationButton: UIButton!
    @IBOutlet var workExperience: UIButton!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userPhotoIV.layer.cornerRadius = userPhotoIV.frame.size.height / 2
        
        hobbiButton.layer.cornerRadius = 10
        educationButton.layer.cornerRadius = 10
        workExperience.layer.cornerRadius = 10
        
        view.addVerticalGradientLayer(topColor: .lightPurple, bottomColor: .lightBlue)
        
        aboutMeLabel.text =
 """
Меня зовут \(person.name) \(person.surname)
Мне \(person.age)
Я из \(person.fromCountry)
Живу в \(person.liveInCity)
"""
    }
    
    // MARK: - IB Actions
    @IBAction func showInfoAboutUser(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(title: "Hobbi", message: person.hobbies)
        } else if sender.tag == 1 {
            showAlert(title: "Education", message: person.education)
        } else {
            showAlert(title: "Work experience", message: person.workExperience)
        }
    }
}

// MARK: - Alert Controller
extension AboutMeViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
