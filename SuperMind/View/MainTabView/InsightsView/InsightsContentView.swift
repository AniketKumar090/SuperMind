import SwiftUI

struct InsightsContentView: View {
    var body: some View {
        VStack(spacing: 20) {
           
            MindfulnessProgressView()
            WeeklyComparisonView()
            MindFullView()
               
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    StatisticsViewOne()
                    StatisticsViewTwo()
                    StatisticsViewThree()
                }.padding(.horizontal,20)
            }
            
            TagLine()
                .offset(y: 40)
        }
        .padding(.top)
    }
}


