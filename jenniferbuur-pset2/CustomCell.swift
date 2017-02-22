//
//  CustumCell.swift
//  jenniferbuur-pset2
//
//  Created by Jennifer Buur on 20-02-17.
//  Copyright © 2017 Jennifer Buur. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet var textField: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
