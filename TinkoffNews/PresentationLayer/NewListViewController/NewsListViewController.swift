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
    var newsListBuffer = NewsList()
    var newsList = NewsList()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parseDataNetwork.getNews { (newsListBuffer) in

            self.newsList = newsListBuffer
            
        }
        
        newsListView = NewsListView(frame: view.frame)
        
        view.addSubview(newsListView)
        
    }
    
    
}

