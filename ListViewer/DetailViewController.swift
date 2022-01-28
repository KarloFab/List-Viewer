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

        title = selectedImageName
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImageName {
            selectedImage.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
