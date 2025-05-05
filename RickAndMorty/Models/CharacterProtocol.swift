//
//  CharacterProtocol.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 4.05.2025.
//

import Foundation

protocol CharacterProtocol {
    var id: Int { get }
    var name: String { get }
    var status: String { get }
    var species: String { get }
    var type: String { get }
    var gender: String { get }
    var origin: LocationReference { get }
    var location: LocationReference { get }
    var image: String { get }
    var url: String { get }
    var created: String { get }
    
    func toSavedCharacter() -> SavedCharacter
}
