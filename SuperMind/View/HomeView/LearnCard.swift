import Foundation
import SwiftUI
struct LearnCard: View {
    var body: some View {
        HStack {
            Image("Learn")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 110, height: 70)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 3) {
                Text("How to meditate \nlike a monk")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("Read More")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
            }
            .padding(.leading, 8)
            
            Spacer()
            
            Image("Vector")
                .foregroundColor(.white)
                .padding(8)
                .background(Color(red: 0.06, green: 0.02, blue: 0.13).opacity(0.7))
                .clipShape(Circle())
        }
        .padding()
        .background(Color(red: 0.22, green: 0.13, blue: 0.42))
        .cornerRadius(15)
        .padding(.horizontal)
    }
}
