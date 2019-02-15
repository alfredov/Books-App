//
//  BooksViewController.swift
//  Books App
//
//  Created by Alfredo Villagomez on 2/15/19.
//  Copyright © 2019 Alfredo Villagomez. All rights reserved.
//

import UIKit

class BooksViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var viewModel = BooksViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        viewModel.delegate = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension BooksViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfitems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? BookCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.viewModel = viewModel.item(at: indexPath)
        return cell
    }
    
}

extension BooksViewController: BooksViewModelDelegate {
    func reloadData() {
        collectionView.reloadData()
    }
}
