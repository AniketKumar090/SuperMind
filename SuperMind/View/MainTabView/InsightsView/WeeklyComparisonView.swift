import SwiftUI

struct WeeklyComparisonView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Weekly comparison")
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding(.horizontal)
                .padding(.top)
            Text("This week, your average number of activities dropped 30% from last week. To boost your consistency, commit to streaks after an activity.")
                .font(.system(size: 14))
                .foregroundColor(.white.opacity(0.8))
                .lineSpacing(3)
                .padding(.horizontal)
                .padding(.top,4)
                .padding(.bottom)
            ZStack{
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
                    Image("Rectangle1")
                        
                        .overlay{
                            VStack(alignment: .center) {
                                Text("325")
                                    .font(.system(size: 14))
                                    .foregroundColor(.black)
                                
                                Text("XP")
                                    .font(.system(size: 14))
                                    .foregroundColor(.black)
                                    .padding(.bottom,40)
                            }
                        }
                    Image("Rectangle2")
                        .overlay{
                            VStack(alignment: .center) {
                                Text("415")
                                    .font(.system(size: 14))
                                    .foregroundColor(.black)
                                    .padding(.top,8)
                                Text("XP")
                                    .font(.system(size: 14))
                                    .foregroundColor(.black)
                                Spacer()
                            }
                        }
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top, 5)
               
            }
            Divider().offset(y:-20)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(red: 0.16, green: 0.13, blue: 0.20).opacity(0.5))
        )
        .padding(.horizontal)
    }
}
