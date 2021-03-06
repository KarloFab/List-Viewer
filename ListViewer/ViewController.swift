//
//  ViewController.swift
//  ListViewer
//
//  Created by Karlo Fabijanić on 25.01.2022..
//

import UIKit

class ViewController: UITableViewController {
    var images = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "List Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        readImagesFromFileManager()
    }
    
    func readImagesFromFileManager(){
        let fileManager = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fileManager.contentsOfDirectory(atPath: path)
        
        for item in items {
            if(item.contains(".png")) {
                images.append(item)
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath)
        cell.textLabel?.text = images[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImageName = images[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

