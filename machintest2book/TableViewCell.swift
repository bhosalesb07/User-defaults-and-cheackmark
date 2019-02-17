//
//  TableViewCell.swift
//  machintest2book
//
//  Created by Mac on 10/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblprice: UILabel!
    
    @IBOutlet weak var lblname: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
