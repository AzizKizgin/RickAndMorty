//
//  MockCharacters.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation
let rick = Character(
    id: 1,
    name: "Rick Sanchez",
    status: "Alive",
    species: "Human",
    type: "",
    gender: "Male",
    origin: LocationReference(
        name: "Earth (C-137)",
        url: "https://rickandmortyapi.com/api/location/1"
    ),
    location: LocationReference(
        name: "Earth (Replacement Dimension)",
        url: "https://rickandmortyapi.com/api/location/20"
    ),
    image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
    episode: [
        "https://rickandmortyapi.com/api/episode/1",
        "https://rickandmortyapi.com/api/episode/2"
    ],
    url: "https://rickandmortyapi.com/api/character/1",
    created: "2017-11-04T18:48:46.250Z"
)

let depp = Character(
    id: 183,
    name: "Johnny Depp",
    status: "Alive",
    species: "Human",
    type: "",
    gender: "Male",
    origin: LocationReference(
        name: "Earth (C-500A)",
        url: "https://rickandmortyapi.com/api/location/23"
    ),
    location: LocationReference(
        name: "Earth (C-500A)",
        url: "https://rickandmortyapi.com/api/location/23"
    ),
    image: "https://rickandmortyapi.com/api/character/avatar/183.jpeg",
    episode: [
        "https://rickandmortyapi.com/api/episode/8"
    ],
    url: "https://rickandmortyapi.com/api/character/183",
    created: "2017-12-29T18:51:29.693Z"
)

let mockCharacters: CharactersResponse = CharactersResponse(
    info: Info(count: 1, pages: 1, next: nil, prev: nil),
    results: [rick,depp]
)
