//
//  DetailViewController.swift
//  Bookstore
//
//  Created by Iván Alejandro Bustillos Sánchez on 3/3/20.
//  Copyright © 2020 owo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    // Properties
    
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var descriptionTextView: UITextView!


    
    func configureView() {
        // Update the user interface for the detail item.
        
        if let myBook = detailItem{
            titleLabel.text = myBook.title
            authorLabel.text = myBook.author
            descriptionTextView.text = myBook.description
            ratingLabel.text = String(myBook.rating)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Book? {
        didSet {
            // Update the view.
        }
    }


}

