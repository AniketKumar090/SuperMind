import SwiftUI

struct LibraryMenuItem: View {
    let icon: String
    let title: String
    
    var body: some View {
        HStack(spacing:20) {
            Image(icon)
                .font(.system(size: 28))
                .foregroundColor(.white)
                .frame(width: 24)
            
            Text(title)
                .font(.system(size: 16))
                .foregroundColor(.white)
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "chevron.right")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
            })
           
        }
        .padding(.horizontal)
        .padding(.vertical, 14)
    }
}

