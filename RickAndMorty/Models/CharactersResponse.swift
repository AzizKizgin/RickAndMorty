//
//  CharactersResponse.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation

struct CharactersResponse: Decodable {
    let info: Info
    let results: [RMCharacter]
}

struct Info: Decodable {
    var count: Int = 0
    var pages: Int = 0
    var next: String?
    var prev: String?
}
