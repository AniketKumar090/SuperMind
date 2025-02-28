import SwiftUI

struct MindfulnessProgressView: View {
    var body: some View {
        ZStack {
            Image("Rectangle")
                .resizable()
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        VStack {
                            Image("Polygon")
                            
                            Image("Polygon")
                            
                        }
                        Text("30%")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.32, green: 0.72, blue: 0.70))
                    }
                }
                Image("Line")
                
                VStack(alignment: .leading) {
                    Text("Your mindfulness practice")
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                    
                    HStack {
                        Text("increased by")
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                        
                        Text("30%")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        
                        Text("this week")
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                    }
                }
                .padding()
            }
          
        }
        .padding(.horizontal)
    }
}

