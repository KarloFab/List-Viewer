//
//  DetailViewController.swift
//  ListViewer
//
//  Created by Karlo Fabijanić on 27.01.2022..
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var selectedImage: UIImageView!
    var selectedImageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageToLoad = selectedImageName {
            selectedImage.image = UIImage(named: imageToLoad)
        }
    }

}
