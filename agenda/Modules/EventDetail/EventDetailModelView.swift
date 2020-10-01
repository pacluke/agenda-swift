//
//  EventDetailModelView.swift
//  agenda
//
//  Created by Lucas Flores on 28/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import Foundation

class EventDetailViewModel {
    private var event: Event
    public var delegate: EventsViewModelProtocol?
    
    public var id: String
    
    public let cellType: [EventDetailCellType] = [
        .image,
        .time,
        .title,
        .description
    ]
    
    public var numberOfItems: Int = 4
    
    public init(event: Event) {
        self.event = event
        self.id = event.id
    }
    
    public func cellContent(index: Int) -> String {
        switch cellType[index] {
            case .image:
                return event.image.replacingOccurrences(of: "http://", with: "https://")
            case .time:
                let date = Date(timeIntervalSince1970: event.date)
                let dateFormatter = DateFormatter()
                dateFormatter.locale = NSLocale.current
                dateFormatter.dateFormat = "dd/MM - HH:mm"
                let strDate = dateFormatter.string(from: date)
                return strDate
            case .title:
                return event.title
            case .description:
                return event.info
            default:
                return ""
        }
    }
    
    public func fetchData() {

    }
}
