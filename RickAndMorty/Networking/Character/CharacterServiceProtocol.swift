//
//  CharacterServiceProtocol.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation
import Combine

protocol CharacterServiceProtocol {
    func getAllCharacters(page: Int) -> AnyPublisher<CharactersResponse, NetworkError>
    func getCharacter(id: Int) -> AnyPublisher<RMCharacter, NetworkError>
    func getMultipleCharacters(ids: [Int]) -> AnyPublisher<[RMCharacter], NetworkError>
}
