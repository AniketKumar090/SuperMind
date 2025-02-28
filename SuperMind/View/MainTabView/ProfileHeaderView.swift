import SwiftUI
struct ProfileHeaderView: View {
    @Binding var selectedTab: AppTab
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .fill(Color(red: 0.00, green: 0.32, blue: 0.29))
                    .frame(width: 70, height: 70)
                
                Text("S")
                    .font(.system(size: 38))
                    .foregroundColor(.white)
                    .fontWeight(.regular)
            }.overlay{
                ZStack {
                    Circle()
                        .frame(width: 20)
                        .foregroundColor(Color(red: 0.16, green: 0.13, blue: 0.20))
                    Image(systemName: "pencil")
                        .foregroundColor(Color(red: 0.62, green: 0.47, blue: 0.93))
                        .clipShape(Circle())
                }.offset(x:20, y: 30)
            }
            
            if selectedTab == .library {
                LibraryHeader()
            } else {
                InsightsHeader() 
            }
                       
           
            Spacer()
            
           
            Button(action: {}) {
                Image(systemName: "gearshape")
                    .font(.title2)
                    .foregroundColor(.white)
            }.padding(.bottom)
        }
        .padding(.horizontal)
    }
}



