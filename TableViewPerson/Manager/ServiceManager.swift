//
//  ServiceManager.swift
//  TableViewPerson
//
//  Created by Игорь Чумиков on 08.09.2021.
//

import Foundation

struct PersonsData {
    
    static let shared = PersonsData()
    
    var persons: [Person]

let names = ["John", "Aaron", "Tim", "Ted", "Steven", "Alexei", "Vladimir",
             "Valentine", "Danil", "Denis", "Dmitriy", "Egor", "Kirill",
             "Leonid", "Maxim", "Matvey", "Nikita", "Oleg", "Pavel",
             "Peter", "novel", "Sergei", "Stanislav"]

let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins", "Kuznetsov",
                "Popov", "Vasiliev", "Petrov", "Sokolov", "Mikhailov", "Novikov",
                "Fedorov", "Morozov", "Volkov", "Alekseev", "Lebedev", "Semyonov",
                "Egorov", "Pavlov", "Kozlov", "Stepanov", "Nikolaev"]

let phone =  ["+7 9605152152", "+7 9066430008", "+7 9066430808", "+7 9066436600",
              "+7 9605145656", "+7 9605147000", "+7 9605159992", "+7 9605164440",
              "+7 9605166776", "Sokolov", "+7 9605166799", "+7 9605166700",
              "+7 9605162222", "+7 96051667743", "+7 9605166712", "+7 9605166732",
              "+7 9605145144", "Semyonov", "+7 9605145199", "+7 9605145166",
              "+7 9605145111", "+7 9607766776", "+7 9605166711"]

let mail = ["Smith@mail.ru", "Dow@mail.ru", "Isaacson@mail.ru", "Pennyworth@mail.ru",
            "Jankins@mail.ru", "Kuznetsov@mail.ru", "Popov@mail.ru", "Vasiliev@mail.ru",
            "Petrov@mail.ru", "Sokolov@mail.ru", "Mikhailov@mail.ru", "Novikov@mail.ru",
            "Fedorov@mail.ru", "Morozov@mail.ru", "Volkov@mail.ru", "Alekseev@mail.ru",
            "Lebedev@mail.ru", "Semyonov@mail.ru", "Egorov@mail.ru", "Pavlov@mail.ru",
            "Kozlov@mail.ru", "Stepanov@mail.ru", "Nikolaev@mail.ru"]

    init() {
        persons = [Person]()
        
        for _ in 1...23 {
            
            let person = Person(
                name: names.randomElement() ?? "",
                lastName: surnames.randomElement() ?? "",
                phone: phone.randomElement() ?? "",
                mail: mail.randomElement() ?? ""
            )
            persons.append(person)
        }
        
}
}
