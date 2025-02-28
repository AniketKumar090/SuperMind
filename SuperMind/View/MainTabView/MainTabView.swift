import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: AppTab = .library
    @State private var isTabViewSticky: Bool = false
    @State private var tabSelectionViewHeight: CGFloat = 0
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(red: 0.06, green: 0.02, blue: 0.13)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 0) {
                    VStack(spacing: 10) {
                        
                        ProfileHeaderView(selectedTab: $selectedTab)
                            .padding(.horizontal,4)
                        StatsCardsView()
                            .padding(.top, 8)
                    }
                    .background(GeometryReader { geometry in
                        Color.clear
                            .onChange(of: geometry.frame(in: .global).minY) { yOffset in
                                let threshold = -tabSelectionViewHeight
                                isTabViewSticky = yOffset < threshold
                            }
                    })
                    
                    TabSelectionView(selectedTab: $selectedTab)
                        .background(Color(red: 0.06, green: 0.02, blue: 0.13))
                        .frame(maxWidth: .infinity)
                        .padding(.top)
                        .background(GeometryReader { geometry in
                            Color.clear
                                .onAppear {
                                    tabSelectionViewHeight = geometry.size.height + 30
                                }
                        })
                        .opacity(isTabViewSticky ? 0 : 1) // Hide when sticky
                    
                    if selectedTab == .library {
                        LibraryContentView()
                    } else {
                        InsightsContentView()
                    }
                }
            }
            .scrollIndicators(.hidden)
            
            if isTabViewSticky {
                TabSelectionView(selectedTab: $selectedTab)
                    .background(Color(red: 0.06, green: 0.02, blue: 0.13))
                    .frame(maxWidth: .infinity)
                    .transition(.opacity)
                    .zIndex(1)
            }
        }
    }
}

struct TabSelectionView: View {
    @Binding var selectedTab: AppTab
    
    var body: some View {
        HStack(spacing: 0) {
            Button(action: {
                withAnimation {
                    selectedTab = .library
                }
            }) {
                VStack(spacing: 12) {
                    Text("My Library")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(selectedTab == .library ? .white : .gray)
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(selectedTab == .library ? .white : .gray.opacity(0.5))
                }
            }
            .frame(maxWidth: .infinity)
            
            Button(action: {
                withAnimation {
                    selectedTab = .insights
                }
            }) {
                VStack(spacing: 12) {
                    Text("Insights")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(selectedTab == .insights ? .white : .gray)
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(selectedTab == .insights ? .white : .gray.opacity(0.5))
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.vertical, 8)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .preferredColorScheme(.dark)
    }
}
