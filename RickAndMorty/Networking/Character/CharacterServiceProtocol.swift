//
//  CharacterServiceProtocol.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation
import Combine

protocol CharacterServiceProtocol {
    func getAllCharacters(filter: CharacterFilter) -> AnyPublisher<CharactersResponse, Error>
    func getCharacter(id: Int) -> AnyPublisher<Character, Error>
    func getMultipleCharacters(ids: [Int]) -> AnyPublisher<[Character], Error>
}
