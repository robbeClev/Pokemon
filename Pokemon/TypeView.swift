import SwiftUI

struct TypeView: View {
    let type: String
    let color: Color

    var body: some View {
        VStack(spacing: 8) {
            // Cirkel met het transparante type-icoon
            ZStack {
                Circle()
                    .fill(color.opacity(0.3))
                    .frame(width: 80, height: 80)

                // type.lowercased() maakt van "Electric" -> "electric" en van "Bug" -> "bug"
                Image(type.lowercased())
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
            }

            // Pill-badge met de naam van het type eronder
            Text(type)
                .font(.body)
                .fontWeight(.semibold)
                .padding(.horizontal, 16)
                .padding(.vertical, 6)
                .background(
                    Capsule()
                        .fill(color)
                )
        }
    }
}

#Preview {
    TypeView(type: "Electric", color: .yellow)
}
