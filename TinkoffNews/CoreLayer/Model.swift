//
//  File.swift
//  TinkoffNews
//
//  Created by Konstantin on 15/05/2019.
//  Copyright © 2019 Konstantin Meleshko. All rights reserved.
//

import Foundation

struct Response: Codable {
    var news: [News]
    var total: Int
}

struct News: Codable {
    var id: String
    var title: String
    var image: String?
    var lang: String
    var createdTime: String
    var deleted: Bool
    var hidden: Bool
    var updatedTime: String
    var slug: String
    var date: String
    var parts: [Parts]
    var tags: [Tags]
    var references: [References]
    var text: String
    var textshort: String
}

struct Parts: Codable {
    var id: String
    var title: String
}

struct Tags: Codable {
    var id: String
    var value: String
}

struct References: Codable {
    var id: String
    var title: String
    var text: String
    var referencesshort: String
}


