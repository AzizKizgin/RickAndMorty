//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @EnvironmentObject var favManager: SavedCharactersManager
    var body: some View {
        NavigationStack {
            CharactersView()
                .onAppear {
                    favManager.configure(context: modelContext)
                }
        }
    }
}

#Preview {
    ContentView()
}
