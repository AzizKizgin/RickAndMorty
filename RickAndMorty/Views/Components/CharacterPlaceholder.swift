//
//  CharacterPlaceholder.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import SwiftUI

struct CharacterPlaceholder: View {
    var body: some View {
        Image("placeholder")
            .resizable()
            .scaledToFit()
            .padding()
    }
}

#Preview {
    CharacterPlaceholder()
}
