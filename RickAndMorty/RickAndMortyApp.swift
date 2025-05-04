//
//  RickAndMortyApp.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import SwiftUI
import SwiftData
@main
struct RickAndMortyApp: App {
    @StateObject private var favManager = SavedCharactersManager.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: SavedCharacter.self)
                .environmentObject(favManager)
        }
    }
}
