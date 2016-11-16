//
//  ListOfItemsTableViewCell.swift
//  To-Do
//
//  Created by Alex Senf on 11/15/16.
//  Copyright © 2016 Alex Senf. All rights reserved.
//

import UIKit

class ListOfItemsTableViewCell: UITableViewCell {

   
   @IBOutlet weak var itemInList: UILabel!

   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
