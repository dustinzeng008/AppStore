//
//  Service.swift
//  AppStore
//
//  Created by Yong Zeng on 8/5/19.
//  Copyright © 2019 yongzeng. All rights reserved.
//

import Foundation


class Service {
    static let shared = Service()
    func fetchApps(searchTerm: String, completion: @escaping ([Result], Error?) -> ()) {
        print("Fetching itunes apps from service layer")
        
        let urlString = "https://itunes.apple.com/search?term=\(searchTerm)&entity=software"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            if let err = err {
                completion([], err)
                print("Failed to fetch apps:", err)
                return
            }
            guard let data = data else { return }
            do {
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                completion(searchResult.results, nil)
//                self.appResults = searchResult.results
//                DispatchQueue.main.async {
//                    self.collectionView.reloadData()
//                }
            } catch {
                completion([], error)
                print("Failed to decode json: \(error)")
            }
            }.resume()
        
        
    }
}
