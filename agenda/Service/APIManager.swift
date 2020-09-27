//
//  APIManager.swift
//  agenda
//
//  Created by Lucas Flores on 27/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import Foundation
import Alamofire

enum APIManager: URLRequestConvertible {
    
    static let baseURL = URL(string: "https://5f5a8f24d44d640016169133.mockapi.io/api")!
    
    case getEvents
    case getEvent(eventID: Int)
    case postCheckin(eventID: Int, name: String, email: String)
    
    var path: String {
        switch self {
        case .getEvents:
            return "/events"
        case .getEvent(eventID: let eventID):
            return "/event/\(eventID)"
        case .postCheckin:
            return "/checkin"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getEvents:
            return .get
        case .getEvent:
            return .get
        case .postCheckin:
            return .post
        }
    }
    
    var encoding: URLEncoding {
        switch self {
        default:
            return .default
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        var request = URLRequest(url: APIManager.baseURL.appendingPathComponent(path))
        
        var parameters = Parameters()
        
        switch self {
        case .postCheckin(eventID: let eventID, name: let name, email: let email):
            parameters["eventID"] = eventID
            parameters["name"] = name
            parameters["email"] = email
        default:
            break
        }
        
        request = try encoding.encode(request, with: parameters)
        return request
    }
}
