import Foundation
import SwiftUI


struct StatisticsViewOne : View {
    var body: some View {
        VStack {
            Text("Meditation")
                .font(.system(size: 18))
                .foregroundStyle(Color(red: 0.00, green: 0.80, blue: 0.58))
            ZStack(alignment: .center) {
                Image("Vector-3")
                    .resizable()
                    .frame(width:90,height: 80)
                Image("Woman")
                    .offset(x:-2,y:-6)
            }
            Divider()
            HStack {
                VStack {
                    Text("200")
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                        .foregroundStyle(Color(red: 0.00, green: 0.80, blue: 0.58))
                    
                    Text("Sessions")
                        .font(.system(size: 14))
                        .foregroundColor(.white.opacity(0.8))
                }
                VStack {
                    Text("700")
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                        .foregroundStyle(Color(red: 0.00, green: 0.80, blue: 0.58))
                    
                    Text("XP")
                        .font(.system(size: 14))
                        .foregroundColor(.white.opacity(0.8))
                }
            }
        }.frame(width: 120,height: 200)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color(red: 0.23, green: 0.22, blue: 0.25), lineWidth: 1)
                        .fill(Color(red: 0.16, green: 0.13, blue: 0.20))
                )
                
    }
}
struct StatisticsViewTwo : View {
    var body: some View {
        VStack {
            Text("Workout")
                .font(.system(size: 18))
                .foregroundStyle(Color(red: 1.00, green: 0.78, blue: 0.03))
            ZStack(alignment: .center) {
                Image("Vector-4")
                    .resizable()
                    .frame(width:90,height: 80)
                Image("Men")
                    .resizable()
                    .scaledToFill()
                    .frame(width:140,height: 90)
                    .offset(x:8,y:10)
            }
            Divider()
            HStack {
                VStack {
                    Text("200")
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                        .foregroundStyle(Color(red: 1.00, green: 0.78, blue: 0.03))
                    
                    Text("Minutes")
                        .font(.system(size: 14))
                        .foregroundColor(.white.opacity(0.8))
                }
                VStack {
                    Text("700")
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                        .foregroundStyle(Color(red: 1.00, green: 0.78, blue: 0.03))
                    
                    Text("XP")
                        .font(.system(size: 14))
                        .foregroundColor(.white.opacity(0.8))
                }
            }
        }.frame(width: 120,height: 200)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color(red: 0.23, green: 0.22, blue: 0.25), lineWidth: 1)
                        .fill(Color(red: 0.16, green: 0.13, blue: 0.20))
                )
    }
}



struct StatisticsViewThree : View {
    var body: some View {
        VStack {
            Text("Journal")
                .font(.system(size: 18))
                .foregroundStyle(Color(red: 0.95, green: 0.05, blue: 0.47))
               
            ZStack(alignment: .center) {
                Image("Vector-5")
                    .resizable()
                    .frame(width:90,height: 80)
                Image("Woman2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)
                    .offset(x: 0, y: -5)
            }
            Divider()
            HStack {
                VStack {
                    Text("200")
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                        .foregroundStyle(Color(red: 0.95, green: 0.05, blue: 0.47))
                    
                    Text("Entries")
                        .font(.system(size: 14))
                        .foregroundColor(.white.opacity(0.8))
                }
                VStack {
                    Text("700")
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                        .foregroundStyle(Color(red: 0.95, green: 0.05, blue: 0.47))
                    
                    Text("XP")
                        .font(.system(size: 14))
                        .foregroundColor(.white.opacity(0.8))
                }
            }
        }.frame(width: 120,height: 200)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color(red: 0.23, green: 0.22, blue: 0.25), lineWidth: 1)
                        .fill(Color(red: 0.16, green: 0.13, blue: 0.20))
                )
               
    }
}
