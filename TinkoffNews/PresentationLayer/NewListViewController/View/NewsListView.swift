//
//  NewsListView.swift
//  TinkoffNews
//
//  Created by Konstantin on 15/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class NewsListView: UIView {
    
    var tableView = UITableView()
    var tableViewDataSource = TableViewDataSource()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        tableView = UITableView(frame: frame)
        tableView.dataSource = tableViewDataSource
        
        self.addSubview(tableView)
        
        tableView.register(NewsListTableViewCell.self, forCellReuseIdentifier: tableViewDataSource.cellId)
            
        self.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
