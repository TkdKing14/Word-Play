//
//  ContentView.swift
//  Word Play
//
//  Created by Carson Payne on 9/18/24.
//

import SwiftUI
struct Words {
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    var noun3 = ""
    
    var food0 = ""
    var person0 = ""
    var verb0 = ""
    var place0 = ""
    var number0 = ""
    
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    
    
//    var noun0 = "plane"
//    var noun1 = "phone"
//    var noun2 = "banana"
//    var noun3 = "water"
//    
//    var food0 = "ice cream"
//    var person0 = "Obama"
//    var verb0 = "run"
//    var place0 = "White House"
//    var number0 = "4"
//    
//    var adjective0 = "shiny"
//    var adjective1 = "yellow"
//    var adjective2 = "bright"
}
struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
struct ContentView : View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                    .navigationTitle("Word Play")
                
                Text("Madlibs - Day at The Beach ").bold()
                Text("Please Enter The Requested words Below")
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                }
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun3)
                    CustomTextField(placeholder: "food", variable: $words.food0)
                    CustomTextField(placeholder: "person", variable: $words.person0)
                }
                HStack {
                    CustomTextField(placeholder: "verb", variable: $words.verb0)
                    CustomTextField(placeholder: "place", variable: $words.place0)
                    CustomTextField(placeholder: "number", variable: $words.number0)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective2)
                }
                NavigationLink("Next", destination: StoryView(words : words ))
                Spacer()
            }
            .background(Color(hue: 0.157, saturation: 0.524, brightness: 1.0))
        }
    }
}
#Preview {
    ContentView()
}


