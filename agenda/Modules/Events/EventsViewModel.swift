//
//  EventsViewModel.swift
//  agenda
//
//  Created by Lucas Flores on 27/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import Foundation
import UIKit

class EventsViewModel {
    private var events: [Event]
    public var delegate: EventsViewModelProtocol?
    
    public var title: [String]
    public var date: [String]
    public var hour: [String]
    public var image: [String]
    public var info: [String]
    
    public var numberOfItems: Int {
        return events.count
    }
    
    public init() {
        self.events = []
        self.title = []
        self.date = []
        self.image = []
        self.info = []
        self.hour = []
    }
    
    private func updateEventsData() {
        self.title = events.map{$0.title}
        self.image = events.map{$0.image}
        self.info = events.map{$0.info}
        
        self.date = events.map {
            let date = Date(timeIntervalSince1970: $0.date)
            let dateFormatter = DateFormatter()
            dateFormatter.locale = NSLocale.current
            dateFormatter.dateFormat = "dd MMM"
            let strDate = dateFormatter.string(from: date)
            return strDate
        }
        
        self.hour = events.map {
            let date = Date(timeIntervalSince1970: $0.date)
            let dateFormatter = DateFormatter()
            dateFormatter.locale = NSLocale.current
            dateFormatter.dateFormat = "HH:mm"
            let strDate = dateFormatter.string(from: date)
            return strDate
        }
    }
    
    public func fetchData() {
        APIService.getEvents() { [weak self] (events, networkError) in
            if let _ = networkError {
                self?.delegate?.presentNetworkError()
            } else {
                self?.events = events
                self?.updateEventsData()
                self?.delegate?.presentFetchedData()
            }
        }
    }
    
}
