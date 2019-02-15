//
//  AddViewController.swift
//  Books App
//
//  Created by Alfredo Villagomez on 2/15/19.
//  Copyright © 2019 Alfredo Villagomez. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    private var viewModel = AddBooksViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func addBook(_ sender: UIButton) {
        let dateFormatter = DateFormatter()
        let strDate = dateFormatter.string(from: datePicker.date)
        viewModel.add(
            title: titleLabel.text ?? "Unknow",
            createdAt: strDate,
            authors: ["Jhon L", "Smith"]
        )
        titleLabel.resignFirstResponder()
        _ = navigationController?.popViewController(animated: true)
    }

}
