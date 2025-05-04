//
//  CharactersViewModel.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation
import Combine

class CharactersViewModel: ObservableObject {
    @Published var characters: [RMCharacter] = []
    @Published var currentPage: Int = 1
    @Published var info: Info = Info()
    @Published var isLoading: Bool = false
    @Published var errorMessage: String = ""
    @Published var showError: Bool = false
    
    private let service: CharacterServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(service: CharacterServiceProtocol) {
        self.service = service
        getAllCharacters()
    }
    
    func fetchMore() {
        guard !isLoading, currentPage < info.pages else {return}
        getAllCharacters()
    }
    
    func getAllCharacters() {
        guard !isLoading else { return }
        
        isLoading = true
        service.getAllCharacters(page: currentPage)
            .sink { [weak self] result in
                guard let self = self else { return }
                self.isLoading = false
                if case let .failure(error) = result {
                    self.setError(error.localizedDescription)
                }
            } receiveValue: { [weak self] value in
                guard let self = self else { return }
                print(value.results)
                self.characters.append(contentsOf: value.results)
                self.info = value.info
                self.currentPage += 1
            }
            .store(in: &cancellables)
    }
    
    private func setError(_ errorMessage: String) {
        self.errorMessage = errorMessage
        self.showError = true
    }
}
