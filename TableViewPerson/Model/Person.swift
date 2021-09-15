//
//  Person.swift
//  TableViewPerson
//
//  Created by Игорь Чумиков on 08.09.2021.
//

import Foundation


struct Person {
    
    let name: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let lastNames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.mail.shuffled()
        
        let iterationCount = min(names.count, lastNames.count, phones.count, emails.count)
        
        for item in 0..<iterationCount {
            let person = Person(
                name: names[item],
                lastName: lastNames[item],
                phone: phones[item],
                email: emails[item]
            )
            persons.append(person)
        }
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
