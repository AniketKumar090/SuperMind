import Foundation
import SwiftUI
struct StatsCardsView: View {
    
    var body: some View {
        HStack(spacing: 15) {
            StatCardView(
                iconName: "Streak",
                iconColor: .orange,
                value: "17",
                label: "Day Streak"
            )
            
            // League card
            StatCardView(
                iconName: "Gold",
                iconColor: .yellow,
                value: "#04",
                label: "Gold league"
            )
        }
        .padding(.horizontal)
    }
}

struct StatCardView: View {
    let iconName: String
    let iconColor: Color
    let value: String
    let label: String
    
    var body: some View {
        
            HStack {
                Image(iconName)
                    .foregroundColor(iconColor)
                    .frame(width: 28,height: 28)
                    .padding(.leading)
                VStack(alignment: .leading) {
                    Text(value)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text(label)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
        }
        .frame(width: 180, height: 60)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.white.opacity(0.2), lineWidth: 1)
                .fill(Color(red: 0.06, green: 0.02, blue: 0.13))
        )
    }
}
