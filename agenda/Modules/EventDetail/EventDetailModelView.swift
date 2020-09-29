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
    
    public let cellType: [EventDetailCellType] = [
        .image,
        .time,
        .location,
        .title,
        .description
    ]
    
    public var numberOfItems: Int = 4
    
    public init(event: Event) {
        self.event = event
    }
    
    public func fetchData() {

    }
}
