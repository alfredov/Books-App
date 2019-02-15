//
//  BookCollectionViewCell.swift
//  Books App
//
//  Created by Alfredo Villagomez on 2/15/19.
//  Copyright © 2019 Alfredo Villagomez. All rights reserved.
//

import UIKit

class BookCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bookImageView: UIImageView!
    
    var viewModel: BookViewModel! {
        didSet {
            setUpView()
        }
    }
    
    func setUpView() {
        titleLabel.text = viewModel.title
        bookImageView.image = UIImage(named: "book\(viewModel.uuid)")
    }
}
