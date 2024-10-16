//
//  SwiftUIView02.swift
//  Multiple Views
//
//  Created by Carson Payne on 10/4/24.
//

import SwiftUI

struct SwiftUIView02: View {
    let phrase: String
    var body: some View {
        VStack {
            Text(phrase)
                .padding()
            NavigationLink("Next View", destination: SwiftUIView03(phrase: "This is From the Third View"))
        }
        .navigationTitle("Third View")
    }
}
    #Preview {
        SwiftUIView02(phrase: "Howdy")
    }

