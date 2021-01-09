//
//  ContentView.swift
//  WeSplit
//
//  Created by Ibukunoluwa Soyebo on 09/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapCount = 0
    @State private var name = ""
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    Text("First Name")
                    TextField("Enter your name", text: $name)
                }

                Section {
                    Text("Hello \(name)")
//                    Text("Hello World")
                }
                
                Button("Tap \(tapCount)"){
                    self.tapCount += 1
                }
                
            }
            
            .navigationBarTitle(Text("Swift"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
