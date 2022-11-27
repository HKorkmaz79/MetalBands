//
//  ViewController.swift
//  MetalBands
//
//  Created by Hakan Korkmaz on 27.11.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var bandNames = [String]()
    var bandImages = [UIImage]()
    
    var chosenBandName = ""
    var chosenBandImage = UIImage()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        bandNames.append("Hulder")
        bandNames.append("Mayhem")
        bandNames.append("Running Wild")
        bandNames.append("Summoning")
        bandNames.append("Judas Priest")
        
        bandImages.append(UIImage(named: "hulder")!)
        bandImages.append(UIImage(named: "mayhem")!)
        bandImages.append(UIImage(named: "runningwild")!)
        bandImages.append(UIImage(named: "summoning")!)
        bandImages.append(UIImage(named: "judaspriest")!)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bandNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = bandNames[indexPath.row]
        //content.image = bandImages[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenBandName = bandNames[indexPath.row]
        chosenBandImage = bandImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedBandName = chosenBandName
            destinationVC.selectedBandImage = chosenBandImage
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.bandNames.remove(at: indexPath.row)
            self.bandImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }

}

