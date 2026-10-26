//
//  ContentView.swift
//  Pokemon
//
//  Created by Robbe on 28/09/2026.
//

import SwiftUI

struct ContentView: View {
    // 1. Maak de Pokémon data aan
    let pikachu = Pokemon(
        naam: "Pikachu",
        nummer: 25,
        type1: "Electric",
        type2: "",
        kleur: .yellow,
        HP: 35,
        speed: 90
    )

    var body: some View {
        VStack {
            // Het logo bovenaan
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 120)
            
            // 2. Hergebruik je gemaakte PokemonKaart
            PokemonKaart(pokemon: pikachu)
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
