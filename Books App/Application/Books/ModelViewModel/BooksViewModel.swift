//
//  BooksViewmodel.swift
//  Books App
//
//  Created by Alfredo Villagomez on 2/15/19.
//  Copyright © 2019 Alfredo Villagomez. All rights reserved.
//

import Foundation
import FirebaseFirestore
import Firebase

protocol BooksViewModelDelegate {
    func reloadData()
}

class BooksViewModel {
    private var items: [Book] = []
    
    private var db: Firestore {
        FirebaseApp.configure()
        let db = Firestore.firestore()
        let settings = db.settings
        settings.isPersistenceEnabled = true
        db.settings = settings
        return db
    }
    
    var numberOfitems: Int {
        return items.count
    }
    
    var delegate: BooksViewModelDelegate?
    
    init() {
        db.collection("books").order(by: "createdAt", descending: true).addSnapshotListener { [weak self] (
            snapshot, error) in
            
            guard let self = self else { return }
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            self.items.removeAll()
            
            try? snapshot?.documents.forEach({ (snapshot) in
                let json = snapshot.data()
                let jsonData = try JSONSerialization.data(withJSONObject: json, options: [])
                guard let book = try? JSONDecoder().decode(Book.self, from: jsonData) else {
                    return
                }
                book.firebaseId = snapshot.documentID
                self.items.append(book)
            })
            
            self.delegate?.reloadData()
        }
    }
    
    func item(at indexPath: IndexPath) -> BookViewModel {
        return BookViewModel(book: items[indexPath.row])
    }
}

class BookViewModel {
    private var book: Book
    
    var title: String {
        return book.title
    }
    
    var authors: [String] {
        return book.authors
    }
    
    var createdAt: String {
        return book.createdAt
    }
    
    var uuid: String {
        return book.uuid
    }
    
    init(book: Book) {
        self.book = book
    }
}
