//
//  ContentView.swift
//  HW3.5
//
//  Created by Сергей on 24.12.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            TabView {
             
                ContactListView()
                    .tabItem {
                        VStack {
                            Image(systemName: "person.circle")
                            Text("Contacts")
                        }
                    }
                
                ContactListView()
                    .tabItem {
                        VStack {
                            Image(systemName: "person.circle")
                            Text("Contacts")
                        }
                    }
                
            }
    
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
