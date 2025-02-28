import Foundation
import SwiftUI
struct HomeieView: View {
    @ObservedObject var viewModel: HomeViewModel
    var body: some View {
        ZStack {
            Color(red: 0.06, green: 0.02, blue: 0.13)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 0) {
             
                    Image("Background image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width, height: 250)
                        .ignoresSafeArea(edges: .top)
                        .position(x: UIScreen.main.bounds.width/2, y: 120)
                        .overlay(
                            
                            VStack {
                               
                                HStack {
                                    HStack(spacing: 4) {
                                        ZStack {
                                            Capsule()
                                                .fill(Color(red: 0.2, green: 0.1, blue: 0.3).opacity(0.8))
                                                .frame(width: 70, height: 40)
                                            
                                            HStack {
                                                Text("2")
                                                    .font(.system(size: 16, weight: .bold))
                                                    .foregroundColor(.white)
                                                
                                                Image("Streak")
                                                    .font(.system(size: 16))
                                            }
                                            .padding(.vertical, 5)
                                            .padding(.horizontal, 12)
                                        }
                                        
                                        ZStack {
                                            Capsule()
                                                .fill(Color(red: 0.2, green: 0.1, blue: 0.3).opacity(0.8))
                                                .frame(width: 100, height: 40)
                                            
                                            HStack {
                                                Text("Rank 5")
                                                    .font(.system(size: 16, weight: .medium))
                                                    .foregroundColor(.white)
                                                
                                                Image("Gold")
                                                    .foregroundColor(.yellow)
                                            }
                                            .padding(.vertical, 5)
                                            .padding(.horizontal, 12)
                                        }
                                    }
                                    Spacer()
                                    
                                    ZStack {
                                        Circle()
                                            .fill(Color(red: 0.2, green: 0.1, blue: 0.3).opacity(0.8))
                                            .frame(width: 40, height: 40)
                                        
                                        Image("Gift")
                                    }
                                }
                                .padding(.horizontal)
                                .offset(y: 60)
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        )
                        .clipped()
                }
                
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Get Started")
                            .font(.headline)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ManageEmotionsCard()
                                    .frame(width: UIScreen.main.bounds.width)
                                JourneyProgressCard()
                                    .frame(width: UIScreen.main.bounds.width)
                            }
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Explore")
                            .font(.headline)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        ExploreGridView(viewModel: viewModel)
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text("Recommended For You")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                MeditationCardOne()
                                MeditationCardTwo()
                                MeditationCardThree()
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text("Recents")
                                .font(.headline)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Text("See All")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                MeditationCardOne()
                                MeditationCardTwo()
                                MeditationCardThree()
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Learn")
                            .font(.headline)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        
                        LearnCard()
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Featured")
                            .font(.headline)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(spacing: -20) {
                                ForEach(0..<3) { index in
                                    Group {
                                        if index == 0 {
                                            FeaturedCardOne()
                                        } else if index == 1 {
                                            FeaturedCardTwo()
                                        } else {
                                            FeaturedCardThree()
                                        }
                                    }
                                    .frame(width: UIScreen.main.bounds.width * 0.9)
                                    .scrollTransition(.animated, axis: .horizontal) { content, phase in
                                        content
                                            .opacity(phase.isIdentity ? 1.0 : 0.8)
                                            .scaleEffect(phase.isIdentity ? 1.0 : 0.8)
                                    }
                                }
                            }
                            .scrollTargetLayout()
                        }.scrollTargetBehavior(.viewAligned)
                        
                    }
                   
                    
                    TagLine()
                        .padding(.top,150)
                }
                .offset(y: -40)
            }
            .scrollIndicators(.hidden)
            .ignoresSafeArea()
        }
        .sheet(isPresented: $viewModel.isSheetPresented) {
            EditShortcutsSheet(
                allItems: viewModel.allItems,
                selectedItems: $viewModel.selectedItems,
                onSave: { savedItems in
                    viewModel.saveSelectedItems(savedItems)
                },
                viewModel: viewModel 
            )
            .presentationDetents([.medium])
        }
    }
}
#Preview {
    HomeieView(viewModel: HomeViewModel())
}
