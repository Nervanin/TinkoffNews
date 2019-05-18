//
//  NewsListTableViewCell.swift
//  TinkoffNews
//
//  Created by Konstantin on 18/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import UIKit

class NewsListTableViewCell: UITableViewCell {
    
    var newsLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(newsLabel)
        
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        
        let marginGuide = contentView.layoutMarginsGuide
        
        //newsLabel = UILabel()//frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        newsLabel.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor, constant: 8).isActive = true
        newsLabel.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor, constant: -8).isActive = true
        newsLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor, constant: 8).isActive = true
        newsLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}
