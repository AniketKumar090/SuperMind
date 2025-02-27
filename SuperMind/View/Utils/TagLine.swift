//
//  TagLine.swift
//  SuperMind
//
//  Created by Aniket Kumar on 27/02/25.
//

import SwiftUI

struct TagLine: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Made Mindfully in 🇮🇳")
                    .font(.system(size: 16))
                    .foregroundColor(Color(red: 0.36, green: 0.29, blue: 0.42))
                    .padding(.horizontal)
                Spacer()
            }
            
            Text("Clear Mind")
                .font(.system(size: 32, weight: .bold))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.36, green: 0.29, blue: 0.42))
                .padding(.top, 4)
                .padding(.horizontal)
            
            Text("Better Performance")
                .font(.system(size: 32, weight: .bold))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.36, green: 0.29, blue: 0.42))
                .padding(.bottom, 60)
                .padding(.horizontal)
        }
        .padding(.top, 20)
    }
}

#Preview {
    TagLine()
}
