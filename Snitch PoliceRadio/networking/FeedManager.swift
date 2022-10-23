//
//  network.swift
//  Snitch PoliceRadio
//
//  Created by Kwaw Annan on 10/23/22.
//

import Foundation

protocol FeedManagerDelegate {
    func didLoadFeeds(_ FeedManager: FeedManager, feeds: Feeds)
    func didFailWithError(error: Error)
}

public struct FeedManager {
    
    var delegate : FeedManagerDelegate?
    var BASE_URL: String = "https://api.broadcastify.com/audio"
    var apiKey = "123456"

    
        func getAllFeedData() {
        
        // 1. Create URL
        if let feedURL = URL(string: \(BASE_URL)"/?a=feeds&type=json&key="
        (\apiKey)) {
            
            // 2. Create a URLSession
            let session = URLSession(configuration: .default)
            
            // 3. Create a new data task for the URLSession (dataTask = "Creates a task that retrieves the contents of the specified URL, then calls a handler upon completion.")
            let task = session.dataTask(with: feedURL) { data, response, error in
                
                if error != nil {
                    print(error!)
                    return
                }
                
                if let feedData = data {
                    if let price = self.parseJSON(feedData) {
                        self.delegate?.didLoadFeeds(self, feeds: price)
                    }
                }
                
            }
            
            task.resume()
            
        }
        
    }
    
    func getCountiesData() {
    
    // 1. Create URL
    if let feedURL = URL(string: \(BASE_URL)"/?a=counties&stid=48&type=json&key"
                         (\apiKey)) {
        
        // 2. Create a URLSession
        let session = URLSession(configuration: .default)
        
        // 3. Create a new data task for the URLSession (dataTask = "Creates a task that retrieves the contents of the specified URL, then calls a handler upon completion.")
        let task = session.dataTask(with: feedURL) { data, response, error in
            
            if error != nil {
                print(error!)
                return
            }
            
            if let feedData = data {
                if let price = self.parseJSON(feedData) {
                    self.delegate?.didLoadFeeds(self, feeds: price)
                }
            }
            
        }
        
        task.resume()
        
    }
    
}
    
    func getStatesData() {
    
    // 1. Create URL
    if let feedURL = URL(string: \(BASE_URL)"/?a=state&coid=1&type=json&key="
                         (\apiKey)) {
        
        // 2. Create a URLSession
        let session = URLSession(configuration: .default)
        
        // 3. Create a new data task for the URLSession (dataTask = "Creates a task that retrieves the contents of the specified URL, then calls a handler upon completion.")
        let task = session.dataTask(with: feedURL) { data, response, error in
            
            if error != nil {
                print(error!)
                return
            }
            
            if let feedData = data {
                if let price = self.parseJSON(feedData) {
                    self.delegate?.didLoadFeeds(self, feeds: price)
                }
            }
            
        }
        
        task.resume()
        
    }
    
}
    func getCountiesData() {
    
    // 1. Create URL
    if let feedURL = URL(string: \(BASE_URL)"/?a=counties&stid=48&type=json&key="
                         (\apiKey)) {
        
        // 2. Create a URLSession
        let session = URLSession(configuration: .default)
        
        // 3. Create a new data task for the URLSession (dataTask = "Creates a task that retrieves the contents of the specified URL, then calls a handler upon completion.")
        let task = session.dataTask(with: feedURL) { data, response, error in
            
            if error != nil {
                print(error!)
                return
            }
            
            if let feedData = data {
                if let price = self.parseJSON(feedData) {
                    self.delegate?.didLoadFeeds(self, feeds: price)
                }
            }
            
        }
        
        task.resume()
        
    }
    
}
    func getFeedsInCountyData() {
    
    // 1. Create URL
    if let feedURL = URL(string: \(BASE_URL)"/?a=county&ctid=2537&type=json&key="
                         (\apiKey)) {
        
        // 2. Create a URLSession
        let session = URLSession(configuration: .default)
        
        // 3. Create a new data task for the URLSession (dataTask = "Creates a task that retrieves the contents of the specified URL, then calls a handler upon completion.")
        let task = session.dataTask(with: feedURL) { data, response, error in
            
            if error != nil {
                print(error!)
                return
            }
            
            if let feedData = data {
                if let price = self.parseJSON(feedData) {
                    self.delegate?.didLoadFeeds(self, feeds: price)
                }
            }
            
        }
        
        task.resume()
        
    }
    
}
    
    func getFeedsInCountyData() {
    
    // 1. Create URL
    if let feedURL = URL(string: \(BASE_URL)"/?a=county&ctid=2537&type=json&key="
                         (\apiKey)) {
        
        // 2. Create a URLSession
        let session = URLSession(configuration: .default)
        
        // 3. Create a new data task for the URLSession (dataTask = "Creates a task that retrieves the contents of the specified URL, then calls a handler upon completion.")
        let task = session.dataTask(with: feedURL) { data, response, error in
            
            if error != nil {
                print(error!)
                return
            }
            
            if let feedData = data {
                if let price = self.parseJSON(feedData) {
                    self.delegate?.didLoadFeeds(self, feeds: price)
                }
            }
            
        }
        
        task.resume()
        
    }
    
}
    

    
    func parseJSON(_ data: Data) ->Feeds? {
        
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(Feeds.self, from: data)
            let data = decodedData
            return data

        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
        
    }
    
}
