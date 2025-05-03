//
//  CharacterService.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation
import Combine

class CharacterService: CharacterServiceProtocol {
    func getAllCharacters(page: Int) -> AnyPublisher<CharactersResponse, any Error> {
        URLSession.shared
            .dataTaskPublisher(for: Endpoints.getAllCharactersURL(page: page))
            .map(\.data)
            .decode(type: CharactersResponse.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }

    func getCharacter(id: Int) -> AnyPublisher<Character, any Error> {
        URLSession.shared
            .dataTaskPublisher(for: Endpoints.getCharacterURL(id: id))
            .map(\.data)
            .decode(type: Character.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }

    func getMultipleCharacters(ids: [Int]) -> AnyPublisher<[Character], any Error> {
        URLSession.shared
            .dataTaskPublisher(
                for: Endpoints.getMultipleCharactersURL(ids: ids)
            )
            .map(\.data)
            .decode(type: [Character].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
