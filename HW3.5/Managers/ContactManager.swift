//
//  Contacts.swift
//  HW3.5
//
//  Created by Сергей on 24.12.2020.
//

import Combine

class ContactManager: ObservableObject {
    @Published var contacts: [Person] = []
    
    init() {
        contacts = Person.getContactList()
    }
}

