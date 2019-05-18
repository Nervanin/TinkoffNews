//
//  TableViewDataSource.swift
//  TinkoffNews
//
//  Created by Konstantin on 15/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class TableViewDataSource: NSObject, UITableViewDataSource {
    
    let cellId = "cellId"
    //Ntework
    var parseDataNetwork = ParseDataNetwork()
    var newsListBuffer = NewsList()
    var newsList = NewsList()
    
    override init() {
        super.init()
//
//        let queqe = DispatchQueue.main
//
//        queqe.async {
//            self.parseDataNetwork.getNews(completionHandler: { (model) in
//                self.newsList = model
//            })
//            print(self.newsList.response ?? "nil")
//        }
//
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsList.response?.news[section].title.count ?? 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellId, for: indexPath) as! NewsListTableViewCell
        
            self.parseDataNetwork.getNews { (model) in
                cell.newsLabel.text = model.response?.news[indexPath.row].title
            }
        
        
        return cell
    }
    
}
