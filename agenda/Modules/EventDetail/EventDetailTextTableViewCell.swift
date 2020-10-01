//
//  EventDetailTextTableViewCell.swift
//  agenda
//
//  Created by Lucas Flores on 28/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import UIKit
import Hero

class EventDetailTextTableViewCell: UITableViewCell {

    @IBOutlet weak var eventText: UILabel!
    
    public func setCellType(cellType: EventDetailCellType) {
        switch cellType {
            case .time:
                eventText.textColor = ColorPalette.rasingBlack.color()
                backgroundColor = ColorPalette.gainsboro.color()
                eventText.font = UIFont.boldSystemFont(ofSize: 18.0)
            case .title:
                eventText.textColor = ColorPalette.rasingBlack.color()
                backgroundColor = ColorPalette.lightSteelBlue.color()
                eventText.font = UIFont.boldSystemFont(ofSize: 20.0)
            case .description:
                eventText.textColor = ColorPalette.gainsboro.color()
                backgroundColor = ColorPalette.charcoal.color()
                eventText.font = UIFont.systemFont(ofSize: 12.0)
            case .location:
                eventText.textColor = ColorPalette.rasingBlack.color()
                eventText.font = UIFont.systemFont(ofSize: 15.0)
            default:
                break
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.hero.isEnabled = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
