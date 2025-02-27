import SwiftUI


struct ManageEmotionsCard: View {
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Meditation Series")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.98))
                Text("Manage your\nemotions")
                    .font(.system(size: 18, weight: .semibold))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                
                HStack(spacing: 0) {
                    Image("Frame")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("9")
                        .font(.caption)
                        .foregroundColor(.white)
                        .offset(x:2)
                }
                
                Text("Ranveer Allahbadia")
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(.top, 2)
            }
            .padding()
            Spacer()
            Image("Started")
                .resizable()
                .aspectRatio(contentMode: .fill)
               
                .frame(width: UIScreen.main.bounds.width * 0.45,height: 120)
                .cornerRadius(15)
                
                .padding(.trailing)
                .padding(.vertical)
                
        }
        .frame(height: 160)
        .background(Color(red: 0.11, green: 0.07, blue: 0.20))
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color(red: 0.41, green: 0.15, blue: 0.92), lineWidth: 2)
        )
        .padding(.horizontal)
    }
}


struct JourneyProgressCard: View {
    var body: some View {
        VStack(spacing: 0) {
            
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("My Journey")
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundColor(Color(red: 0.32, green: 0.72, blue: 0.70))
                        Image("Image")
                            .resizable()
                            .frame(width: 10,height: 10)
                            .offset(x:40)
                            
                    }
                    Text("Manage your emotions")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.white)
                    ZStack {
                        Capsule()
                            .fill(Color(red: 0.17, green: 0.17, blue: 0.17))
                            .frame(width: 75, height: 20)
                        HStack {
                            Image(systemName: "alarm.fill")
                                .font(.system(size: 10))
                                .foregroundColor(.white)
                            
                            Text("10-15 min")
                                .font(.system(size: 10))
                                .foregroundColor(.white.opacity(0.7))
                        }
                    }
                    ZStack {
                        HStack(alignment: .center) {
                            HStack {
                                ZStack {
                                    Circle()
                                        .frame(width: 26, height: 26)
                                        .foregroundColor(.white)
                                    Image("Coach")
                                        .resizable()
                                        .frame(width: 27, height: 27)
                                        .foregroundColor(.white)
                                        .clipShape(Circle())
                                }
                                
                                Text("Coach Name")
                                    .font(.system(size: 12))
                                    .foregroundColor(.white)
                            }
                        }
                        
                        Image("Star")
                            .resizable()
                            .frame(width: 15,height: 15)
                            .offset(x:22, y: 15)
                    }
                   
                }
                .padding(.leading)
                .padding(.top)
                .frame(width: 150)
                
                ZStack {
                    
                    Path { path in
                        
                        path.move(to: CGPoint(x: 75, y: 130))
                        path.addQuadCurve(
                            to: CGPoint(x: 40, y: 125),
                            control: CGPoint(x: 55, y: 135)
                        )
                        
                        
                        path.move(to: CGPoint(x: 40, y: 125))
                        path.addQuadCurve(
                            to: CGPoint(x: 40, y: 80),
                            control: CGPoint(x: 30, y: 105)
                        )
                        
                        
                        path.move(to: CGPoint(x: 40, y: 80))
                        path.addLine(to: CGPoint(x: 100, y: 85))
                        
                        
                        path.move(to: CGPoint(x: 100, y: 85))
                        path.addLine(to: CGPoint(x: 155, y: 80))
                        
                        
                        path.move(to: CGPoint(x: 155, y: 80))
                        path.addQuadCurve(
                            to: CGPoint(x: 155, y: 35),
                            control: CGPoint(x: 165, y: 60)
                        )
                        
                       
                        path.move(to: CGPoint(x: 155, y: 35))
                        path.addLine(to: CGPoint(x: 110, y: 40))
                        
                       
                        path.move(to: CGPoint(x: 100, y: 40))
                        path.addLine(to: CGPoint(x: 60, y: 40))
                        
                        path.move(to: CGPoint(x: 30, y: 10))
                        path.addQuadCurve(
                            to: CGPoint(x: 70, y: 38),
                            control: CGPoint(x: 15, y: 40)
                        )
                        
                        
                        path.move(to: CGPoint(x: 160, y: 130))
                        path.addQuadCurve(
                            to: CGPoint(x: 75, y: 130),
                            control: CGPoint(x: 120, y: 135)
                        )
                        
                        
                    }
                    .stroke(Color.white, style: StrokeStyle(lineWidth: 2, dash: [4]))
                    .zIndex(0)
                  
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 15, height: 15)
                      
                    }
                    .position(x: 108, y: 132)
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 22, height: 22)
                        Text("YOU")
                            .font(.system(size: 10, weight: .bold))
                            .foregroundColor(.black)
                    }
                    .position(x: 75, y: 130)
                    
                    // Numbered nodes with purple background
                    ForEach([
                        (label: "2", position: CGPoint(x: 40, y: 125)),
                        (label: "3", position: CGPoint(x: 100, y: 85)),
                        (label: "4", position: CGPoint(x: 155, y: 80)),
                        (label: "5", position: CGPoint(x: 102, y: 40)),
                        (label: "6", position: CGPoint(x: 62, y: 38))
                    ], id: \.label) { node in
                        ZStack {
                            Circle()
                                .fill(Color(red: 0.41, green: 0.15, blue: 0.92))
                                .frame(width: 20, height: 20)
                            Text(node.label)
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(.white)
                        }
                        .position(node.position)
                    }
                    
                   
                    ZStack {
                        Image("Series1")
                            .resizable()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                        
                        
                        HStack {
                            Text("Series 1")
                                .font(.system(size: 12, weight: .medium))
                                .foregroundColor(.white)
                                .padding(.leading,4)
                            Image(systemName: "chevron.right")
                                .resizable()
                                .frame(width: 5, height: 5)
                                .foregroundColor(.white)
                                .zIndex(1)
                                .padding(.trailing,4)
                        }.background(RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 0.62, green: 0.47, blue: 0.93)))
                            .offset(y: -15)
                    }
                    .position(x: 40, y: 80)
                    
                   
                    ZStack {
                        Image("Series2")
                            .resizable()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                            
                        
                        Text("Series 2")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.white)
                            .padding(.horizontal, 8)
                           
                            .background(RoundedRectangle(cornerRadius: 10)
                                .fill(Color(red: 0.62, green: 0.47, blue: 0.93)))
                            .cornerRadius(10)
                            .offset(y: -15)
                    }
                    .position(x: 155, y: 35)
                    ZStack {
                        Circle()
                            .frame(width: 60, height: 60)
                            .offset(x:-5)
                            .foregroundColor(Color(red: 0.38, green: 0.16, blue: 1.00))
                        Image("Flower")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .offset(x:-5)
                        
                        HStack {
                            Image(systemName: "chevron.left")
                                .resizable()
                                .frame(width: 5, height: 5)
                                .foregroundColor(.white)
                                .zIndex(1)
                                .padding(.leading,4)
                            Text("Milestone 1")
                                .font(.system(size: 12, weight: .medium))
                                .foregroundColor(.white)
                                .padding(.trailing,4)
                        }.background(RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 0.32, green: 0.72, blue: 0.70)))
                            .offset(x: -10,y: -15)
                    }
                    .position(x: 160, y: 130)
                    
                }
                
            }
            
        }
        .frame(height: 160)
        .background(Color(red: 0.16, green: 0.13, blue: 0.20))
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color(red: 0.32, green: 0.72, blue: 0.70), lineWidth: 2)
        )
        .padding(.horizontal)
    }
}

#Preview{
    HomeieView(viewModel: HomeViewModel())
}
