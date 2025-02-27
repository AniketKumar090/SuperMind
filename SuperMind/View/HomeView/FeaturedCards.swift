//
//  FeaturedCards.swift
//  SuperMind
//
//  Created by Aniket Kumar on 26/02/25.
//

import SwiftUI

struct FeaturedCardOne: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Meditation Series")
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.98))
            Text("Change your thought patterns")
                .font(.headline)
                .foregroundColor(.white)
            Spacer()
            Text("Ranveer Allahbadia")
                .font(.system(size: 14,weight: .semibold))
                .foregroundColor(.white)
                .padding(.top, 2)
            Text("Break down your thought patterns and understand why you think the way you do to optimise your emotional well-being.")
                .font(.system(size: 14))
                .foregroundColor(.white)
                .lineLimit(2)
                .padding(.top, 1)
                .padding(.bottom,8)
            HStack {
                Text("10 Mins")
                    .font(.caption2)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 5)
                    .background(Color.white.opacity(0.2))
                    .foregroundColor(.white)
                    .cornerRadius(15)
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                        .background(Color.white)
                        .clipShape(Circle())
                }
            }
        }
        .padding()
        .frame(height: 370)
        .background( Image("Featured1")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(LinearGradient(colors: [Color(red: 0.06, green: 0.02, blue: 0.13), .clear, Color(red: 0.06, green: 0.02, blue: 0.13)], startPoint: .top, endPoint: .bottom)))
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.gray.opacity(0.3), lineWidth: 2)
        )
        .padding(.leading)
        
    }
}
struct FeaturedCardTwo: View {
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 10) {
            Text("Music")
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(Color(red: 0.32, green: 0.72, blue: 0.70))
            Text("Change your thought patterns")
                .font(.headline)
                .foregroundColor(.white)
            Spacer()
            Text("Ranveer Allahbadia")
                .font(.system(size: 14,weight: .semibold))
                .foregroundColor(.white)
                .padding(.top, 2)
            Text("Break down your thought patterns and understand why you think the way you do to optimise your emotional well-being.")
                .font(.system(size: 14))
                .lineLimit(2)
                .padding(.top, 1)
                .padding(.bottom,8)
            HStack {
                Text("10 Mins")
                    .font(.caption2)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 5)
                    .background(Color.white.opacity(0.2))
                    .foregroundColor(.white)
                    .cornerRadius(15)
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                        .background(Color.white)
                        .clipShape(Circle())
                }
            }
        }
        .padding()
        .frame(height: 370)
        .background( Image("Featured2")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(LinearGradient(colors: [Color(red: 0.06, green: 0.02, blue: 0.13), .clear, Color(red: 0.06, green: 0.02, blue: 0.13)], startPoint: .top, endPoint: .bottom)))
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.gray.opacity(0.3), lineWidth: 2)
        )
        .padding(.horizontal)
        
    }
}
struct FeaturedCardThree: View {
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 10) {
            Text("Workout")
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(Color(red: 1.00, green: 0.78, blue: 0.03))
            Text("Change your thought patterns")
                .font(.headline)
                .foregroundColor(.white)
            Spacer()
            Text("Ranveer Allahbadia")
                .font(.system(size: 14,weight: .semibold))
                .foregroundColor(.white)
                .padding(.top, 2)
            Text("Break down your thought patterns and understand why you think the way you do to optimise your emotional well-being.")
                .font(.system(size: 14))
                .lineLimit(2)
                .padding(.top, 1)
                .padding(.bottom,8)
            HStack {
                Text("10 Mins")
                    .font(.caption2)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 5)
                    .background(Color.white.opacity(0.2))
                    .foregroundColor(.white)
                    .cornerRadius(15)
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                        .background(Color.white)
                        .clipShape(Circle())
                }
            }
        }
        .padding()
        .frame(height: 370)
        .background( Image("Featured3")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(LinearGradient(colors: [Color(red: 0.06, green: 0.02, blue: 0.13), .clear, Color(red: 0.06, green: 0.02, blue: 0.13)], startPoint: .top, endPoint: .bottom)))
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.gray.opacity(0.3), lineWidth: 2)
        )
        .padding(.trailing)
    }
}

