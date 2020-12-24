//
//  ContactListView.swift
//  HW3.5
//
//  Created by Сергей on 24.12.2020.
//

import SwiftUI

struct ContactListView: View {
    @EnvironmentObject var contactManager: ContactManager
    
    var body: some View {
        
//        Text("Placeholder")
        NavigationView {
            List(contactManager.contacts, id: \.self) { contact in
                Text(contact.fullName)
            }.navigationTitle("Contacts")
        }
        
        
        
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
            .environmentObject(ContactManager())
    }
}
