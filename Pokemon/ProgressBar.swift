import SwiftUI

struct ProgressBar: View {
    var progress: Double // Waarde tussen 0.0 en 1.0
    var color: Color
    var text: String = "" // Optionele tekst op de balk
    var textColor: Color = .white // Optionele tekstkleur

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                // Achtergrond van de balk (lichte kleur)
                Capsule()
                    .fill(color.opacity(0.2))

                // Gevulde voortgangsbalk op basis van de 'progress'
                Capsule()
                    .fill(color)
                    .frame(width: max(0, min(geometry.size.width * CGFloat(progress), geometry.size.width)))

                // Tekst gecentreerd op de balk
                Text(text)
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(textColor)
                    .frame(maxWidth: .infinity)
            }
        }
        .frame(height: 32) // Vaste hoogte van de balk
    }
}

#Preview {
    ProgressBar(
        progress: 0.6,
        color: .red,
        text: "speed 95",
        textColor: .white
    )
    .padding()
}
