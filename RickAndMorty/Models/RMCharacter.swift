//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation

struct RMCharacter: Decodable, Hashable, Identifiable, CharacterProtocol {
    func toSavedCharacter() -> SavedCharacter {
        SavedCharacter(
            id: id,
            name: name,
            status: status,
            species: species,
            type: type,
            gender: gender,
            origin: origin,
            location: location,
            image: image,
            url: url,
            created: created
        )
    }

    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: LocationReference
    let location: LocationReference
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

struct LocationReference: Codable, Hashable {
    let name: String
    let url: String
}
