import SwiftUI

struct RecentlyPlayedView: View {
    let meditationTimes = ["5 Mins", "6 Mins", "18 Mins", "18 Mins"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Recently Played")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("See all")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 20)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(0..<meditationTimes.count, id: \.self) { data in
                        RecentlyPlayedCard(
                          
                            duration: meditationTimes[data]
                        )
                    }
                }
                .padding(.leading, 10)
            }
        }
    }
}

