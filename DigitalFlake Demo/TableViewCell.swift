//
//  TableViewCell.swift
//  DigitalFlake Demo
//
//  Created by Prajyot Patle on 21/03/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var btnItem: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
