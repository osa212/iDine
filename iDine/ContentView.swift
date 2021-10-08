//
//  ContentView.swift
//  iDine
//
//  Created by osa on 06.10.2021.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section {
                        ForEach(section.items) { item in
                            NavigationLink(destination: ItemDetail(item: item)) {
                                ItemRow(item: item)

                            }
                            
                        }
                    } header: {
                        Text(section.name)
                    }

                    
                    
                }
                
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
