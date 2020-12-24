//
//  SectionsContactListView.swift
//  HW3.5
//
//  Created by Сергей on 24.12.2020.
//

import SwiftUI

struct SectionsContactListView: View {
    @EnvironmentObject var contactManager: ContactManager
    
    var body: some View {
        
        NavigationView {
            List{
                ForEach(contactManager.contacts, id: \.self) { contact in
                    Section(header: Text(contact.fullName)) {
                        InfoRow(
                            imageName: Contacts.phone.rawValue,
                            textInfo: contact.phoneNumber
                        )
                        
                        InfoRow(
                            imageName: Contacts.email.rawValue,
                            textInfo: contact.email
                        )

                    }.textCase(nil)
                }
            }.navigationTitle("Contacts")
        }
    }
}


struct InfoRow: View {
    let imageName: String
    let textInfo: String
    
    var body: some View {
        HStack{
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(textInfo)
        }
    }
}


struct SectionsContactListView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsContactListView()
            .environmentObject(ContactManager())
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(imageName: "dollarsign.circle.fill", textInfo: "Text")
    }
}
