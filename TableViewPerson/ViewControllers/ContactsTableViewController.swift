//
//  ContactsTableViewController.swift
//  TableViewPerson
//
//  Created by Игорь Чумиков on 08.09.2021.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = persons[indexPath.row].fullName

        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let detailVC = segue.destination as? DetailViewController else { return }
        
        //определить ячейку на который сейчас стоим
        if let indexPath = tableView.indexPathForSelectedRow {
            
            detailVC.fullName = persons[indexPath.row].fullName
            detailVC.phone = persons[indexPath.row].phone
            detailVC.email = persons[indexPath.row].email
        }

    }

}
