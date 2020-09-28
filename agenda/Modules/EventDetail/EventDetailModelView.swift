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
    
    public var numberOfItems: Int = 3
    
    public init(event: Event) {
        self.event = event
    }
    
    public func fetchData() {

    }
}
