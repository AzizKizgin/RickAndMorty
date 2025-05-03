//
//  MockCharacterService.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation
import Combine

class MockCharacterService: CharacterServiceProtocol {
    func getAllCharacters(filter: CharacterFilter) -> AnyPublisher<CharactersResponse, any Error> {
        return Just(mockCharacters)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }

    func getCharacter(id: Int) -> AnyPublisher<Character, any Error> {
        return Just(rick)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }

    func getMultipleCharacters(ids: [Int]) -> AnyPublisher<[Character], any Error> {
        return Just([rick,depp])
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }

    
}
