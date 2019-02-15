//
//  Book.swift
//  Books App
//
//  Created by Alfredo Villagomez on 2/15/19.
//  Copyright © 2019 Alfredo Villagomez. All rights reserved.
//

import Foundation

class Book: Codable {
    var firebaseId: String?
    var uuid: String
    var title: String
    var createdAt: String
    var authors: [String]
    
    enum CodingKeys: String, CodingKey {
        case uuid
        case title
        case createdAt
        case authors
    }
    
    init(title: String, createdAt: String, authors: [String], uuid: String) {
        self.title = title
        self.createdAt = createdAt
        self.authors = authors
        self.uuid = uuid
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        uuid = try container.decode(String.self, forKey: .uuid)
        title = try container.decode(String.self, forKey: .title)
        createdAt = try container.decode(String.self, forKey: .createdAt)
        authors = try container.decode([String].self, forKey: .authors)
    }
    
    public func data() -> [String: Any]? {
        let jsonEncoder = JSONEncoder()
        guard let data = try? jsonEncoder.encode(self) else {
            return nil
        }
        
        guard let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
            return nil
        }
        
        return json
    }
}
