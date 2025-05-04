//
//  SavedCharacterManager.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 4.05.2025.
//

import Foundation
import SwiftData

final class SavedCharactersManager: ObservableObject {
    static let shared = SavedCharactersManager()
    @Published private(set) var favorites: [SavedCharacter] = []
    private var context: ModelContext?
    
    private init() {}
    
    func configure(context: ModelContext) {
        self.context = context
        fetchAll()
    }
    
    func fetchAll() {
        guard let context = context else { return }
        let descriptor = FetchDescriptor<SavedCharacter>()
        do {
            favorites = try context.fetch(descriptor)
        } catch {
            print("Failed to fetch favorites: \(error)")
        }
    }
    
    func isFavorite(id: Int) -> Bool {
        favorites.contains(where: { $0.id == id })
    }
    
    func addFavorite(character: CharacterProtocol) {
        guard let context = context else { return }
        guard !isFavorite(id: character.id) else { return }

        let favorite = character.toSavedCharacter()
        context.insert(favorite)

        do {
            try context.save()
            fetchAll()
        } catch {
            print("Failed to add favorite: \(error)")
        }
    }
    
    func removeFavorite(id: Int) {
        guard let context = context else { return }

        let descriptor = FetchDescriptor<SavedCharacter>(predicate: #Predicate { $0.id == id })
        do {
            if let item = try context.fetch(descriptor).first {
                context.delete(item)
                try context.save()
                fetchAll()
            }
        } catch {
            print("Failed to remove favorite: \(error)")
        }
    }
}


