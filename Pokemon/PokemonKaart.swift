import SwiftUI

struct PokemonKaart: View {
    let pokemon: Pokemon

    var body: some View {
        VStack(spacing: 12) {
            // 1. Naam en Nummer
            Text(pokemon.naam)
                .font(.largeTitle)
                .bold()
            
            Text("#" + String(format: "%04d", pokemon.nummer))
                .foregroundStyle(.gray)

            // 2. Afbeelding van de Pokémon
            Image(pokemon.afbeelding)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)

            // 3. Type-iconen (Ondersteuning voor 1 of 2 types)
            HStack(spacing: 20) {
                TypeView(type: pokemon.type1, color: pokemon.kleur)

                // Toon het tweede type enkel als dit niet leeg is
                if !pokemon.type2.isEmpty {
                    TypeView(type: pokemon.type2, color: pokemon.kleur)
                }
            }
            .padding(.vertical, 8)

            // 4. Voortgangsbalken voor HP en Speed
            VStack(spacing: 10) {
                // HP voortgangsbalk (maximaal 380)
                ProgressBar(
                    progress: Double(pokemon.HP) / 380.0,
                    color: .green,
                    text: "HP \(pokemon.HP)",
                    textColor: .white
                )

                // Speed voortgangsbalk (maximaal 150)
                ProgressBar(
                    progress: Double(pokemon.speed) / 150.0,
                    color: .orange,
                    text: "speed \(pokemon.speed)",
                    textColor: .black
                )
            }
            .padding(.horizontal)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(pokemon.kleur.opacity(0.15))
        )
        .padding()
    }
}

#Preview {
    let bulbasaur = Pokemon(
        naam: "Bulbasaur",
        nummer: 1,
        type1: "Grass",
        type2: "Poison",
        kleur: .green,
        HP: 45,
        speed: 45
    )

    PokemonKaart(pokemon: bulbasaur)
}
