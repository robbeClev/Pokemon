//
//  Stap_5.swift
//  Pokemon
//

import SwiftUI

struct Stap_5: View {
    let pokemons: [Pokemon] = [
        Pokemon(naam: "Bulbasaur", nummer: 1, type1: "Grass", type2: "Poison", kleur: .green, HP: 45, speed: 45),
        Pokemon(naam: "Ivysaur", nummer: 2, type1: "Grass", type2: "Poison", kleur: .green, HP: 60, speed: 60),
        Pokemon(naam: "Venusaur", nummer: 3, type1: "Grass", type2: "Poison", kleur: .green, HP: 80, speed: 80),
        Pokemon(naam: "Charmander", nummer: 4, type1: "Fire", type2: "", kleur: .red, HP: 39, speed: 65),
        Pokemon(naam: "Charmeleon", nummer: 5, type1: "Fire", type2: "", kleur: .red, HP: 58, speed: 80),
        Pokemon(naam: "Charizard", nummer: 6, type1: "Fire", type2: "Flying", kleur: .red, HP: 78, speed: 100),
        Pokemon(naam: "Squirtle", nummer: 7, type1: "Water", type2: "", kleur: .blue, HP: 44, speed: 43)
    ]

    var body: some View {
        List(pokemons) { pokemon in
            PokemonKaart(pokemon: pokemon)
        }
    }
}

#Preview {
    Stap_5()
}
