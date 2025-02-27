import SwiftUI

struct InsightsHeader:View{
    var body: some View{
        VStack(alignment: .leading) {
            HStack {
                Text("Sourav")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                
                
            }
            
            Button(action: {}) {
                HStack {
                    ZStack {
                        Circle()
                            .frame(width: 20)
                            .foregroundColor(Color(red: 1.00, green: 0.78, blue: 0.03))
                        Image("Crown")
                            .foregroundColor(Color(red: 0.06, green: 0.02, blue: 0.13))
                    }
                    Text("Join Level Premium")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 1.00, green: 0.78, blue: 0.03))
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(red: 1.00, green: 0.78, blue: 0.03), lineWidth: 1)
                )
            }
        }
        
    }
}



