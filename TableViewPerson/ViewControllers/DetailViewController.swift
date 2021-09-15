//
//  ViewController.swift
//  TableViewPerson
//
//  Created by Игорь Чумиков on 08.09.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var fullName: String!
    var email: String!
    var phone: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = fullName
        phoneLabel.text = "Phone:  \(phone ?? "")"
        emailLabel.text = "Email:  \(email ?? "")"

    }


}

