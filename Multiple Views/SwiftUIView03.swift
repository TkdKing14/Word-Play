//
//  SwiftUIView03.swift
//  Multiple Views
//
//  Created by Carson Payne on 10/4/24.
//

import SwiftUI

struct SwiftUIView03: View {
    let phrase: String
    var body: some View {
        VStack {
            Text(phrase)
                .padding()
            
        }
        .navigationTitle("Fourth View")
    }
}
    #Preview {
        SwiftUIView03(phrase: "Howdy")
    }

