//
//  DetailsVC.swift
//  MetalBands
//
//  Created by Hakan Korkmaz on 27.11.2022.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var bandnameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedBandName = ""
    var selectedBandImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bandnameLabel.text = selectedBandName
        imageView.image = selectedBandImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
