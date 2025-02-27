import SwiftUI
struct MindFullView: View {
    let days = ["M", "T", "W", "T", "F", "S", "S"]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Mindful days this week")
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding(.vertical)
                .padding(.horizontal)
            Text("This week, you were mindful for 5 days! To prevent breaking your streak, try using streak freeze!")
                .font(.system(size: 14))
                .foregroundColor(.white)
                .padding(.bottom)
                .padding(.horizontal)
            ZStack {
                Image("WhiteLine")
                    .padding(.bottom,80)
                    .zIndex(1)
                VStack(spacing: 20){
                    Image("GridLine")
                        .resizable()
                        .frame(height: 1)
                        .padding(.bottom,10)
                    Image("GridLine")
                        .resizable()
                        .frame(height: 1)
                        .padding(.bottom,10)
                    Image("GridLine")
                        .resizable()
                        .frame(height: 1)
                        .padding(.bottom,10)
                    Image("GridLine")
                        .resizable()
                        .frame(height: 1)
                        .padding(.bottom,10)
                    Image("GridLine")
                        .resizable()
                        .frame(height: 1)
                        .padding(.bottom,40)
                    
                }
                HStack(alignment: .bottom, spacing: 30) {
                    ForEach(0..<7) { index in
                        let day = days[index]
                        VStack(spacing: 5) {
                            Image("Group\(index + 1)")
                               
                            Text(day)
                                .font(.caption)
                                .foregroundColor(.white.opacity(0.8))
                        }
                    }
                }.offset(y:-5)
                
            }
            HStack{
                Image("Circle")
                Text("Activities Completed")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                Spacer()
                Image("DottedLine")
                Text("App's User Average")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
            } .padding(.horizontal,4)
        }
        .frame(width: UIScreen.main.bounds.width - 50)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(red: 0.16, green: 0.13, blue: 0.20).opacity(0.5))
        )
        .padding(.horizontal)
    }
}

