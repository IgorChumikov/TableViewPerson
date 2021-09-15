//
//  TabBarViewController.swift
//  TableViewPerson
//
//  Created by Игорь Чумиков on 15.09.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        
        let contactsTableVC = viewControllers?.first as! ContactsTableViewController
        let contactsDetailTableVC = viewControllers?.last as! ContactsDetailTableViewController
        
        contactsTableVC.persons = Person.getContactList()
        contactsDetailTableVC.persons = Person.getContactList()
    }
}
