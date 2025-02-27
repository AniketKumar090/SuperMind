import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        TabView {
            HomeieView(viewModel: viewModel)
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                        Text("Today")
                    }
                }
            
            ExploreTabView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Explore")
                    }
                }
            
            MainTabView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                        Text("You")
                    }
                }
        }
        .accentColor(.white)
        .onAppear {
            configureTabBarAppearance()
        }
    }
    
    private func configureTabBarAppearance() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = UIColor(red: 0.06, green: 0.02, blue: 0.13, alpha: 1.0)
        
        let itemAppearance = UITabBarItemAppearance()
        itemAppearance.normal.iconColor = .gray
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.gray]
        itemAppearance.selected.iconColor = .white
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        tabBarAppearance.inlineLayoutAppearance = itemAppearance
        tabBarAppearance.stackedLayoutAppearance = itemAppearance
        tabBarAppearance.compactInlineLayoutAppearance = itemAppearance
        
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
