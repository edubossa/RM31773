//
//  BeerViewController.swift
//  RM31773
//
//  Created by Eduardo Wallace on 23/11/2017.
//  Copyright © 2017 Eduardo Wallace. All rights reserved.
//

import UIKit
import Kingfisher

class BeerViewController: UIViewController {
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbTagline: UILabel!
    @IBOutlet weak var lbDescription: UILabel!
    @IBOutlet weak var lbAbv: UILabel!
    @IBOutlet weak var lbIbu: UILabel!
    @IBOutlet weak var ivImage: UIImageView!
    
    var beer: Beer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.title = " "
        if beer != nil {
           lbName.text = beer.name
           lbTagline.text = beer.tagline
           lbDescription.text = beer.description
           lbAbv.text = "\(beer.abv)"
           lbIbu.text = "\(beer.ibu)"
           if let url = URL(string: beer.image_url) {
                ivImage.kf.setImage(with: url)
            }
        }
        
    }


}
