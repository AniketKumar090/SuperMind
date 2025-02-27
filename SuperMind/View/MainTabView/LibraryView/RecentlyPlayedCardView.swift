import SwiftUI

struct RecentlyPlayedCard: View {
    let duration: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color(red: 0.3, green: 0.35, blue: 0.6))
                
                Image("One")
                    .resizable()
                    .cornerRadius(10)
                    .font(.system(size: 30))
                    .foregroundColor(.clear)
            }
            .aspectRatio(1.0, contentMode: .fit)
            .frame(width: 160, height: 160)
            
            Text("Meditation · \(duration)")
                .font(.system(size: 14))
                .foregroundColor(Color(red: 0.56, green: 0.81, blue: 0.80))
            
            Text("Workplace Anxiety")
                .font(.system(size: 16))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text("Avi Arya")
                .font(.caption)
                .foregroundColor(.white.opacity(0.8))
        }
        .frame(width: 180)
    }
}

