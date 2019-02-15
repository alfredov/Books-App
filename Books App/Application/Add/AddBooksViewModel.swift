//
//  AddBooksViewModel.swift
//  Books App
//
//  Created by Alfredo Villagomez on 2/15/19.
//  Copyright © 2019 Alfredo Villagomez. All rights reserved.
//

import Foundation
import FirebaseFirestore

class AddBooksViewModel {
    private var db: Firestore {
        return Firestore.firestore()
    }
    
    func add(title: String, createdAt: String, authors: [String]) {
        let book = Book(title: title, createdAt: createdAt, authors: authors, uuid: "2")
        
        guard let data = book.data() else {
            return
        }
        
        db.collection("books").addDocument(data: data)
    }
}
