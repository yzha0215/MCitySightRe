//
//  SightListTableViewCell.swift
//  MCitySight
//
//  Created by Yuqi Zhang on 24/8/19.
//  Copyright © 2019 Monash University. All rights reserved.
//

import UIKit

class SightListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var descLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
