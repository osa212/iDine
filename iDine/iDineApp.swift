//
//  iDineApp.swift
//  iDine
//
//  Created by osa on 06.10.2021.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    //@StateObject property wrapper is responsible for keeping the object alive throughout the life of our app
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
