import SwiftUI

struct MeditationCardOne: View {
   
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack(alignment: .topTrailing) {
                Image("One")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 160, height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            Text("Meditation · 10 Mins")
                .font(.system(size: 14,weight: .regular))
                .foregroundColor(Color(red: 0.56, green: 0.81, blue: 0.80))
            
            Text("Freedom Series")
                .font(.system(size: 16))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text("Akhil Aryan")
                .font(.caption)
                .foregroundColor(.white.opacity(0.8))
        }
        
       
    }
}
struct MeditationCardTwo: View {
   
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack(alignment: .bottomTrailing) {
                Image("Two")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 160, height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                VStack {
                    HStack {
                        Text("NEW")
                            .font(.system(size: 10))
                            .padding(.horizontal, 5)
                            .padding(.vertical, 2)
                            .background(Color.yellow)
                            .foregroundColor(Color(red: 0.06, green: 0.02, blue: 0.13))
                            .cornerRadius(4, corners: [.topRight, .bottomRight])
                            .padding(.top,12)
                        Spacer()
                    }
                    Spacer()
                }
                Text(" 1/5 ")
                    .font(.system(size: 12))
                    .padding(5)
                    .background(Color.black.opacity(0.6))
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .padding(5)
             }
            
            Text("Meditation Series")
                .font(.system(size: 14,weight: .regular))
                .foregroundColor(Color(red: 0.56, green: 0.81, blue: 0.80))
            
            Text("Freedom Series")
                .font(.system(size: 16))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text("Akhil Aryan")
                .font(.caption)
                .foregroundColor(.white.opacity(0.8))
        }
        
        
    }
}
struct MeditationCardThree: View {
   
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack(alignment: .bottomTrailing) {
                Image("One")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 160, height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                VStack {
                    HStack {
                        Text("NEW")
                            .font(.system(size: 10))
                            .padding(.horizontal, 5)
                            .padding(.vertical, 2)
                            .background(Color.yellow)
                            .foregroundColor(Color(red: 0.06, green: 0.02, blue: 0.13))
                            .cornerRadius(4, corners: [.topRight, .bottomRight])
                            .padding(.top,12)
                        Spacer()
                    }
                    Spacer()
                }
                Text(" 1/5 ")
                    .font(.system(size: 12))
                    .padding(5)
                    .background(Color.black.opacity(0.6))
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .padding(5)
                  
            }
            
            Text("Meditation Series")
                .font(.system(size: 14,weight: .regular))
                .foregroundColor(Color(red: 0.56, green: 0.81, blue: 0.80))
            
            Text("Freedom Series")
                .font(.system(size: 16))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text("Akhil Aryan")
                .font(.caption)
                .foregroundColor(.white.opacity(0.8))
        }
        
        
    }
}
