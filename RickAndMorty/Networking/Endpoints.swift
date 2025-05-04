//
//  Endpoints.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation

enum Endpoints {
    private static let baseURL = "https://rickandmortyapi.com/api"
    private static let characterURL = "\(baseURL)/character"
    
    public static func getAllCharactersURL(page: Int) -> URL {
        let urlString = "\(characterURL)/?page=1"
        let url = URL(string: urlString)!
        return url
    }

    public static func getCharacterURL(id: Int) -> URL {
        let urlString = "\(characterURL)/\(id)"
        let url = URL(string: urlString)!
        return url
    }
    
    public static func getMultipleCharactersURL(ids: [Int]) -> URL {
        let idString = ids.map(String.init).joined(separator: ",")
        let urlString = "https://rickandmortyapi.com/api/character/\(idString)"
        let url = URL(string: urlString)!
        return url
    }
}
