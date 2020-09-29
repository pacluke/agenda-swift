//
//  EventDetailImageTableViewCell.swift
//  agenda
//
//  Created by Lucas Flores on 28/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import UIKit

class EventDetailImageTableViewCell: UITableViewCell {

    @IBOutlet weak var eventImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
