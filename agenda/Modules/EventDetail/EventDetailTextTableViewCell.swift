//
//  EventDetailTextTableViewCell.swift
//  agenda
//
//  Created by Lucas Flores on 28/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import UIKit

class EventDetailTextTableViewCell: UITableViewCell {

    @IBOutlet weak var eventText: UILabel!
    
    public var cellType: EventDetailCellType = .time {
        didSet {
            
        }
    }
    
    private func updateCellType() {
        switch cellType {
            case .time:
                break
            case .title:
                break
            case .description:
                break
            case .location:
                break
            default:
                break
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
