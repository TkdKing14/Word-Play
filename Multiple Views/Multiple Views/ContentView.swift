//
//  ContentView.swift
//  Multiple Views
//
//  Created by Carson Payne on 10/4/24.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("This is Where Everything Starts")
                    .padding()
                NavigationLink("Next View", destination: SwiftUIView01(phrase: "This is From the First View"))
            }
            .navigationTitle("Initial View")
        }
    }
}
#Preview {
    ContentView()
}
