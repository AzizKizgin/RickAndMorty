//
//  CharacterItem.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 4.05.2025.
//

import SwiftUI

struct CharacterItem: View {
    let char: RMCharacter
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            AsyncImage(url: URL(string: char.image)) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(
                            maxHeight: .infinity
                        )
                default:
                    CharacterPlaceholder()
                        .frame(maxHeight: .infinity)
                }
            }

            VStack(alignment: .leading, spacing: 4) {
                Text(char.name)
                    .font(.headline)
                Text("Status: \(char.status)")
                    .font(.subheadline)
                    .opacity(0.5)
            }
            .padding([.horizontal, .bottom])
        }
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.back)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
        .shadow(color: Color.primary.opacity(0.2), radius: 5, x: 0, y: 2)
        .padding(4)

        
    }
}

#Preview {
    CharacterItem(char: rick1)
}
