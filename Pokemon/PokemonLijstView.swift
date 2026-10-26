import SwiftUI

struct PokemonLijstView: View {
    var body: some View {
        ScrollView {
            VStack {
                let p2 = Pokemon(
                    naam: "Bulbasaur",
                    nummer: 1,
                    type1: "Grass",
                    type2: "Poison",
                    kleur: .green,
                    HP: 45,
                    speed: 45
                )
                PokemonKaart(pokemon: p2)

                let p1 = Pokemon(
                    naam: "Pikachu",
                    nummer: 25,
                    type1: "Electric",
                    type2: "",
                    kleur: .yellow,
                    HP: 35,
                    speed: 95
                )
                PokemonKaart(pokemon: p1)

                let p3 = Pokemon(
                    naam: "Charmander",
                    nummer: 4,
                    type1: "Fire",
                    type2: "",
                    kleur: .red,
                    HP: 39,
                    speed: 65
                )
                PokemonKaart(pokemon: p3)
            }
        }
    }
}

#Preview {
    PokemonLijstView()
}
