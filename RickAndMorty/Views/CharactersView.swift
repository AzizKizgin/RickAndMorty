//
//  CharactersView.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import SwiftUI

struct CharactersView: View {
    @StateObject private var viewModel: CharactersViewModel
    
    init(viewModel: CharactersViewModel? = nil) {
        if let viewModel = viewModel {
            _viewModel = StateObject(wrappedValue: viewModel)
        } else {
            let service = DIContainer.shared.container.resolve(CharacterService.self)!
            _viewModel = StateObject(wrappedValue: CharactersViewModel(service: service))
        }
    }
    
    var body: some View {
            ScrollView {
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], spacing: 16) {
                    ForEach(viewModel.characters) { char in
                        NavigationLink(value: char) {
                            CharacterItem(char: char)
                                .onAppear {
                                    if char == viewModel.characters.last {
                                        viewModel.fetchMore()
                                    }
                                }
                        }
                    }
                }
                .padding(.horizontal)
                .alert(viewModel.errorMessage, isPresented: $viewModel.showError) {
                    
                }
                .navigationDestination(for: RMCharacter.self) { char in
                    CharacterDetailView(character: char)
                }
            }
      
        .navigationTitle("Characters")
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
    NavigationStack {
        CharactersView(
            viewModel: CharactersViewModel(service: MockCharacterService())
        )
    }
    .environmentObject(scManager)
}

