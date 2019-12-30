//
//  Service.swift
//  Appstore
//
//  Created by Cole Riggle on 12/20/19.
//  Copyright © 2019 Cole Riggle. All rights reserved.
//

import Foundation

class Service {
    
    static let shared = Service() // singleton
    
    func fetchApps(searchTerm: String, completion: @escaping([Result], Error?) -> ()) {
         let urlString = "https://itunes.apple.com/search?term=\(searchTerm)&entity=software"
                guard let  url = URL(string: urlString) else { return }
                
                // fetch data from internet
                URLSession.shared.dataTask(with: url) { (data, response, error) in
                    if let error = error {
                        print("Failed to fetch apps:", error)
                        completion([], error)
                        return
                    }

                    // success
                    
                    guard let data = data else { return }
                    
                    do {
                        let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                        
                        completion(searchResult.results, nil)
                        
                    } catch let jsonError {
                        print("Failed to decode JSON:", jsonError)
                        completion([], jsonError)
                    }
                    
                }.resume() // fires off the request
    }
}
