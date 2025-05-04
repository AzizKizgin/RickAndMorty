//
//  CharacterService.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation
import Combine

enum NetworkError: Error {
    case invalidURL
    case decodingError
    case unknown
}

class CharacterService: CharacterServiceProtocol {
    func getAllCharacters(page: Int) -> AnyPublisher<CharactersResponse, NetworkError> {
        return URLSession.shared
            .dataTaskPublisher(for: Endpoints.getAllCharactersURL(page: page))
            .map(\.data)
            .decode(type: CharactersResponse.self, decoder: JSONDecoder())
            .mapError { error in
                print(error)
                if error is DecodingError {
                    return NetworkError.decodingError
                }
                return NetworkError.unknown
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    func getCharacter(id: Int) -> AnyPublisher<RMCharacter, NetworkError> {
        return URLSession.shared
            .dataTaskPublisher(for: Endpoints.getCharacterURL(id: id))
            .map(\.data)
            .decode(type: RMCharacter.self, decoder: JSONDecoder())
            .mapError { error in
                if error is DecodingError {
                    return NetworkError.decodingError
                }
                return NetworkError.unknown
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }

    func getMultipleCharacters(ids: [Int]) -> AnyPublisher<[RMCharacter], NetworkError> {
        return URLSession.shared
            .dataTaskPublisher(for: Endpoints.getMultipleCharactersURL(ids: ids))
            .map(\.data)
            .decode(type: [RMCharacter].self, decoder: JSONDecoder())
            .mapError { error in
                if error is DecodingError {
                    return NetworkError.decodingError
                }
                return NetworkError.unknown
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
