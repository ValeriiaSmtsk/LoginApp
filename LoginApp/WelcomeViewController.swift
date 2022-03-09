//
//  MainViewController.swift
//  LoginApp
//
//  Created by Валерия Смецкая on 08.03.2022.
//

import UIKit
import SwiftUI

class WelcomeViewController: UIViewController {

    @IBOutlet var userGreetingLabel: UILabel!
    
    var userGreeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let userGreeting = userGreeting else { return }
        userGreetingLabel.text = "Welcome, \(userGreeting)!"
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.lightPurple.cgColor,
            UIColor.lightBlue.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

// MARK: - UIColor class variable
extension UIColor {
    class var lightBlue: UIColor {
        return UIColor(red: 113.0 / 255.0, green: 197.0 / 255.0, blue: 231.0 / 255.0, alpha: 1)
    }
    
    class var lightPurple: UIColor {
        return UIColor(red: 162 / 255, green: 92 / 255, blue: 190 / 255, alpha: 1)
    }
}
