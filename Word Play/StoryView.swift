//
//  SwiftUIView.swift
//  Word Play
//
//  Created by Carson Payne on 10/1/24.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        Image("Beach")
    }
        let words : Words
        func writeStory() -> String {
            return "I went to the beach in a \(words.noun0) today with \(words.person0). " +
            "We had a \(words.adjective0) time. " +
            "We first built a \(words.noun1) and then we ran around in the \(words.place0) " +
            "for a little while. " +
            "The water was a bit \(words.adjective1). " +
            "The sun was very \(words.adjective2) " +
            "so we made sure to wear a lot of \(words.noun2). " +
            "We spent \(words.number0) hours there. " +
            "At the end of the day, we treated ourselves to a \(words.noun3) and had \(words.food0) " +
            "for dinner. I definitely want to go to the beach again but next time I want to \(words.verb0). "
        }
    }

    struct StoryView_Previews: PreviewProvider {
        static var previews: some View {
            StoryView(words: Words())
        }
    }
    #Preview {
        StoryView(words : Words())
    }
