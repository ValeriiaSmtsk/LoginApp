//
//  PhotosViewController.swift
//  LoginApp
//
//  Created by Валерия Смецкая on 14.03.2022.
//

import UIKit

class PhotosViewController: UIViewController {

    @IBOutlet var firstPhotoIV: UIImageView!
    @IBOutlet var secondPhotoIV: UIImageView!

    var firstPhoto: UIImage!
    var secondPhoto: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstPhotoIV.image = firstPhoto
        secondPhotoIV.image = secondPhoto

    }
 
}
