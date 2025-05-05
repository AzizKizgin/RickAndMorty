//
//  CharacterDetailView.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 4.05.2025.
//

import SwiftUI

struct CharacterDetailView: View {
    let character: any CharacterProtocol
    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: character.image)) { phase in
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
                VStack {
                    CharacterInfoItem(
                        title: "Status",
                        info: character.status
                    )
                    CharacterInfoItem(
                        title: "Gender",
                        info: character.gender
                    )
                    CharacterInfoItem(
                        title: "Type",
                        info: character.type
                    )
                    CharacterInfoItem(
                        title: "Species",
                        info: character.species
                    )
                    CharacterInfoItem(
                        title: "Origin",
                        info: character.origin.name
                    )
                    CharacterInfoItem(
                        title: "Location",
                        info: character.location.name
                    )
                }
            }
            .navigationTitle(character.name)
        }
    }
}

#Preview {
    CharacterDetailView(character: rick1)
}
