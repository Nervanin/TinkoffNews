//
//  ParseDataNetwork.swift
//  TinkoffNews
//
//  Created by Konstantin on 15/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import Foundation

struct Pagination {
    var first = 0
    var last = 0
}

class ParseDataNetwork {
    
    func getNews(pagination: Pagination) {
        let baseURLString = "https://cfg.tinkoff.ru/news/public/api/platform/v1/getArticles?pageSize=20&pageOffset=20"
        guard let url = URL(string: baseURLString) else {
            return
        }
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data {
                do {
                    guard (try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]) != nil else {
                        return
                    }
                    let decoder = JSONDecoder()
                    let response: NewsList = try decoder.decode(NewsList.self, from: data)
                    print(response)
                } catch {
                    print("Error: \(error)")
                }
            }
        }
        task.resume()
    }
}
