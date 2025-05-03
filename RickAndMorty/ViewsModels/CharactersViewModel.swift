//
//  CharactersViewModel.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation
import Combine

class CharactersViewModel: ObservableObject {
    @Published var characters: [Character] = []
    @Published var currentPage: Int = 1
    @Published var info: Info = Info()
    @Published var isLoading: Bool = false
    @Published var errorMessage: String = ""
    @Published var showError: Bool = false
    
    private let service: CharacterServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(service: CharacterServiceProtocol) {
        self.service = service
    }
    
    func getAllCharacters() {
        guard info.next != nil, info.pages != currentPage else {return}
        service.getAllCharacters(page: self.currentPage + 1)
            .sink { [weak self] result in
                if case let .failure(error) = result {
                    self?.setError(error.localizedDescription)
                }
                self?.isLoading = false
            } receiveValue: { [weak self] value in
                guard let self else {return}
                self.characters.append(contentsOf: value.results)
                self.info = value.info
                if let next = self.info.next {
                    self.currentPage += 1
                }
            }
            .store(in: &cancellables)
    }
    
    private func setError(_ errorMessage: String) {
        self.errorMessage = errorMessage
        self.showError = true
    }
}
