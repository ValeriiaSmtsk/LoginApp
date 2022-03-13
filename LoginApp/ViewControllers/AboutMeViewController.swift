//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Валерия Смецкая on 13.03.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var aboutMeLabel: UILabel!
    @IBOutlet var userPhotoIV: UIImageView!
    
    @IBOutlet var hobbiButton: UIButton!
    @IBOutlet var educationButton: UIButton!
    @IBOutlet var workExperience: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userPhotoIV.layer.cornerRadius = userPhotoIV.frame.size.height/2
        
        hobbiButton.layer.cornerRadius = 10
        educationButton.layer.cornerRadius = 10
        workExperience.layer.cornerRadius = 10
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.lightPurple.cgColor,
            UIColor.lightBlue.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        aboutMeLabel.text = " Меня зовут \(person.fullName)\n Мне \(person.age)\n Я из \(person.fromCountry)"
    }
 
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
