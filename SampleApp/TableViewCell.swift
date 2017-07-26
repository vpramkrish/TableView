//
//  TableViewCell.swift
//  SampleApp
//
//  Created by Ram on 19/07/17.
//  Copyright © 2017 Ram. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var itemLbl: UILabel!
 
    @IBOutlet weak var amtLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
