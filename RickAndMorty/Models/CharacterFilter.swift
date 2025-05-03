//
//  CharacterFilter.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation

struct CharacterFilter {
    var name: String?
    var status: String?
    var species: String?
    var type: String?
    var gender: String?

    func asQueryItems() -> [URLQueryItem] {
        var items: [URLQueryItem] = []

        if let name = name, !name.isEmpty {
            items.append(URLQueryItem(name: "name", value: name))
        }
        if let status = status, !status.isEmpty {
            items.append(URLQueryItem(name: "status", value: status.lowercased()))
        }
        if let species = species, !species.isEmpty {
            items.append(URLQueryItem(name: "species", value: species))
        }
        if let type = type, !type.isEmpty {
            items.append(URLQueryItem(name: "type", value: type))
        }
        if let gender = gender, !gender.isEmpty {
            items.append(URLQueryItem(name: "gender", value: gender.lowercased()))
        }

        return items
    }
}
