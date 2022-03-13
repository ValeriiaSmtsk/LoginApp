//
//  MainViewController.swift
//  LoginApp
//
//  Created by Валерия Смецкая on 08.03.2022.
//

import UIKit
import SwiftUI

class WelcomeViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var userGreetingLabel: UILabel!
    
    // MARK: - Public Properties
    var userGreeting = ""
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userGreetingLabel.text = "Welcome, \(userGreeting)!"
        view.addVerticalGradientLayer(topColor: .lightPurple, bottomColor: .lightBlue)
    }
}

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [
            topColor.cgColor,
            bottomColor.cgColor
        ]
        layer.insertSublayer(gradientLayer, at: 0)
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
