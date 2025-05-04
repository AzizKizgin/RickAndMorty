//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation

struct RMCharacter: Decodable, Hashable, Identifiable {
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

struct LocationReference: Decodable, Hashable {
    let name: String
    let url: String
}
