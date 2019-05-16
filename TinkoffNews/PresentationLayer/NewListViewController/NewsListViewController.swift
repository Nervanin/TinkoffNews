//
//  ViewController.swift
//  TinkoffNews
//
//  Created by Konstantin on 15/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class NewsListViewController: UIViewController {
    
    var newsListView = NewsListView()
    var parseDataNetwork = ParseDataNetwork()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parseDataNetwork.parseData()
        newsListView = NewsListView(frame: view.frame)
        
        view.addSubview(newsListView)
        
    }
    
    
}

