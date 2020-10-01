//
//  EventsTableViewCell.swift
//  agenda
//
//  Created by Lucas Flores on 27/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import UIKit
import Hero

class EventsTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var hour: UILabel!
    @IBOutlet weak var dateView: UIView!
    @IBOutlet weak var cardView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        title.textColor = ColorPalette.rasingBlack.color()
        info.textColor = ColorPalette.rasingBlack.color()
        date.textColor = ColorPalette.rasingBlack.color()
        hour.textColor = ColorPalette.rasingBlack.color()
        
        backgroundColor = ColorPalette.charcoal.color()
        cardView.backgroundColor = ColorPalette.lightSteelBlue.color()
        dateView.backgroundColor = ColorPalette.gainsboro.color()
        
        cardView.layer.cornerRadius = 5.0
        dateView.layer.cornerRadius = 5.0
        
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
