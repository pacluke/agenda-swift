//
//  APIService.swift
//  agenda
//
//  Created by Lucas Flores on 27/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import Foundation
import Alamofire

struct APIService {
    
    static func getEvents(completion: @escaping ([Event], AFError?) -> Void) {
        Alamofire.request(APIManager.getEvents).responseJSON { (json) in
            switch json.result {
            case .success:
                if let jsonData = json.data {
                    do {
                        let events = try JSONDecoder().decode([Event].self, from: jsonData)
                        completion(events, nil)
                    } catch {
                        completion([], error as? AFError)
                    }
                }
            case .failure:
                completion([], json.error as? AFError)
            }
        }
    }
    
}
