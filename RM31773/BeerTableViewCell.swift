//
//  BeerTableViewCell.swift
//  RM31773
//
//  Created by Eduardo Wallace on 24/11/2017.
//  Copyright © 2017 Eduardo Wallace. All rights reserved.
//

import UIKit

class BeerTableViewCell: UITableViewCell {

    @IBOutlet weak var ivImage: UIImageView!
    @IBOutlet weak var lbName: UILabel!    
    @IBOutlet weak var lbAbv: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
