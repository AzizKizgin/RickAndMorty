//
//  CharacterInfoItem.swift
//  RickAndMorty
//
//  Created by Aziz Kızgın on 4.05.2025.
//

import SwiftUI

struct CharacterInfoItem: View {
    let title: String
    let info: String
  
    var body: some View {
        VStack {
            Text(title)
                .foregroundStyle(.accent)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 8)
                .background(Color(.systemGray6))
                .cornerRadius(6)
            if !info.isEmpty {
                Text(info)
                    .frame(maxWidth: .infinity)
            }
            else {
                Text("None")
                    .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    CharacterInfoItem(title: "Status", info: "Dead")
}
