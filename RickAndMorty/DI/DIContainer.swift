//
//  DIContainer.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//
import Foundation
import Swinject
class DIContainer {
    static let shared = DIContainer()
    let container = Container()
    
    private init() {
        registerDependencies()
    }

    private func registerDependencies() {
        container.register(CharacterService.self) { _ in
            CharacterService()
        }
        container.register(MockCharacterService.self) { _ in
            MockCharacterService()
        }
    }
}
