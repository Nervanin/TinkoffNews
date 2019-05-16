//
//  ParseDataNetwork.swift
//  TinkoffNews
//
//  Created by Konstantin on 15/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import Foundation

class ParseDataNetwork {
    
    func parseData() {
        let urlString = "https://cfg.tinkoff.ru/news/public/api/platform/v1/getArticles"
        guard let url = URL(string: urlString) else {
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
                    let response: Response = try decoder.decode(Response.self, from: data)
                    print(response)
                } catch {
                    print("Error \(error)")
                }
            }
        }
        task.resume()
    }
}
