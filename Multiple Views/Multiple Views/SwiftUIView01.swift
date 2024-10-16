//
//  SwiftUIView01.swift
//  Multiple Views
//
//  Created by Carson Payne on 10/4/24.
//

import SwiftUI

struct SwiftUIView01: View {
    let phrase: String
    var body: some View {
        VStack {
            Text(phrase)
                .padding()
            NavigationLink("Next View", destination: SwiftUIView02(phrase: "This is From the Second View"))
        }
        .navigationTitle("Second View")
    }
}
    #Preview {
        SwiftUIView01(phrase: "Howdy")
    }

