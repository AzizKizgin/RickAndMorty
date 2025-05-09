//
//  MockCharacters.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 3.05.2025.
//

import Foundation
let rick = RMCharacter(
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
    image: "https://rickandmortyapi.com/api/character/avata.jpeg",
    episode: [
        "https://rickandmortyapi.com/api/episode/1",
        "https://rickandmortyapi.com/api/episode/2"
    ],
    url: "https://rickandmortyapi.com/api/character/1",
    created: "2017-11-04T18:48:46.250Z"
)
let rick1 = RMCharacter(
    id: 22,
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
let rick2 = RMCharacter(
    id: 2,
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
let rick3 = RMCharacter(
    id: 3,
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
let rick4 = RMCharacter(
    id: 4,
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
let rick5 = RMCharacter(
    id: 67,
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
    image: "https://rickandmortyapi.com/api/character//1.jpeg",
    episode: [
        "https://rickandmortyapi.com/api/episode/1",
        "https://rickandmortyapi.com/api/episode/2"
    ],
    url: "https://rickandmortyapi.com/api/character/1",
    created: "2017-11-04T18:48:46.250Z"
)
let depp = RMCharacter(
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
    results: [rick,depp,rick1,rick2,rick3,rick4,rick5]
)
