//
//  SavedCharacter.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 4.05.2025.
//

import Foundation
import SwiftData

@Model
class SavedCharacter: CharacterProtocol, Hashable {
    func toSavedCharacter() -> SavedCharacter {
        self
    }

    var id: Int
    var name: String
    var status: String
    var species: String
    var type: String
    var gender: String
    var origin: LocationReference
    var location: LocationReference
    var image: String
    var url: String
    var created: String

    init(
        id: Int,
        name: String,
        status: String,
        species: String,
        type: String,
        gender: String,
        origin: LocationReference,
        location: LocationReference,
        image: String,
        url: String,
        created: String
    ) {
        self.id = id
        self.name = name
        self.status = status
        self.species = species
        self.type = type
        self.gender = gender
        self.origin = origin
        self.location = location
        self.image = image
        self.url = url
        self.created = created
    }
}
