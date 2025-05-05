//
//  SavedCharactersView.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 4.05.2025.
//

import SwiftUI

struct SavedCharactersView: View {
    @EnvironmentObject var scManager: SavedCharactersManager
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], spacing: 16) {
                    ForEach(scManager.favorites) { char in
                        NavigationLink(value: char) {
                            CharacterItem(char: char)
                        }
                    }
                }
                .padding(.horizontal)
                .navigationDestination(for: RMCharacter.self) { char in
                    CharacterDetailView(character: char)
                }
            }
        }
        .navigationTitle("Saved Characters")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    SavedCharactersView()
                } label: {
                    Image(systemName: "heart.fill")
                        .font(.title2)
                }

            }
        }
    }
}

#Preview {
    @Previewable @StateObject var scManager = SavedCharactersManager.shared
    SavedCharactersView()
        .environmentObject(scManager)
}
