//
//  DetailsContactView.swift
//  HW3.5
//
//  Created by Сергей on 24.12.2020.
//

import SwiftUI

struct DetailsContactView: View {
    let contact: Person
    
    var body: some View {
        //скрол с глючит...
        ScrollView {
            VStack {
                ContactImage(contact: contact)
                
                ContactInfo(contact: contact)
            }.padding()
            .navigationTitle(contact.fullName)
        }
    }
}


struct ContactImage: View {
    let contact: Person
    var body: some View {
        ZStack {
            Color.gray
            
            Text(contact.initials)
                .font(.largeTitle)
            
            Image(contact.surname)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .frame(width: 120, height: 120, alignment: .center)
        .clipShape(Circle())
        .shadow(radius: 10)
    }
}


struct ContactInfo: View {
    let contact: Person
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Phone: \(contact.phoneNumber)")
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                
                Text("Email: \(contact.email)")
                
                Spacer()
            }
            .padding()
            
            Spacer()
        }
    }
}


struct DetailsContactView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsContactView(contact: Person(name: "Sergey", surname: "Cartman", email: "ager@gmail.com", phoneNumber: "+7912345678"))
            .preferredColorScheme(.light)
    }
}

struct ContactImage_Previews: PreviewProvider {
    static var previews: some View {
        ContactImage(contact: Person(name: "Sergey", surname: "Cartman", email: "agere@gmail.com", phoneNumber: "+7912345678"))
    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(contact: Person(name: "Sergey", surname: "Cartman", email: "ager@gmail.com", phoneNumber: "+7912345678"))
            .preferredColorScheme(.light)
    }
}
