//
//  HW3_5App.swift
//  HW3.5
//
//  Created by Сергей on 24.12.2020.
//

import SwiftUI

@main
struct HW3_5App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ContactManager())
        }
    }
}
