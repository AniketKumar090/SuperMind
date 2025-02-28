import SwiftUI

struct LibraryContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            RecentlyPlayedView()
            
            VStack(spacing: 0) {
                LibraryMenuItem(icon: "Heart", title: "My Favorites")
                LibraryMenuItem(icon: "Downloads", title: "Downloads")
                LibraryMenuItem(icon: "Playlist", title: "My Playlists")
                LibraryMenuItem(icon: "Enteries", title: "My Journal Entries")
            }
            .padding(.top, 12)
            
            TagLine()
                .offset(y: 40)
        }
        .padding(.top)
    }
}
