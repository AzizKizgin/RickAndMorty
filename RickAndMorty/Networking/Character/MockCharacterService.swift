//
//  MockCharacterService.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation
import Combine

class MockCharacterService: CharacterServiceProtocol {
    func getAllCharacters(page: Int) -> AnyPublisher<CharactersResponse, NetworkError> {
        return Just(mockCharacters)
            .setFailureType(to: NetworkError.self)
            .eraseToAnyPublisher()
    }

    func getCharacter(id: Int) -> AnyPublisher<RMCharacter, NetworkError> {
        return Just(rick)
            .setFailureType(to: NetworkError.self)
            .eraseToAnyPublisher()
    }

    func getMultipleCharacters(ids: [Int]) -> AnyPublisher<[RMCharacter], NetworkError> {
        return Just([rick, depp])
            .setFailureType(to: NetworkError.self)
            .eraseToAnyPublisher()
    }
}

