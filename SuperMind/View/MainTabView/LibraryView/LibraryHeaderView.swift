import SwiftUI
struct LibraryHeader: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Sourav")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                
                ZStack {
                    Circle()
                        .frame(width: 20)
                        .foregroundColor(Color(red: 1.00, green: 0.78, blue: 0.03))
                    Image("Crown")
                        .foregroundColor(Color(red: 0.06, green: 0.02, blue: 0.13))
                }
            }
            
            HStack {
                Text("Level Premium User")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 1.00, green: 0.78, blue: 0.03))
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 12))
                    .foregroundColor(Color.yellow)
            }.padding(.horizontal, 10)
                .padding(.vertical, 5)
        }
    }
}
