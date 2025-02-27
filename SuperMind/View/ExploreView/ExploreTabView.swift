import SwiftUI

struct ExploreTabView: View {
    @State private var searchText: String = ""
    
    let cards = [
        ("Manage Emotions", AnyView(ManageEmotionsCard())),
        ("Journey Progress", AnyView(JourneyProgressCard())),
        ("Freedom Series", AnyView(MeditationCardTwo().padding(.leading))),
        ("Workplace Anxiety", AnyView(RecentlyPlayedCard(duration: "5 min"))),
        ("Music Series", AnyView(FeaturedCardTwo())),
        ("Meditation Series", AnyView(FeaturedCardOne().padding(.trailing))),
        ("Workout Series", AnyView(FeaturedCardThree().padding(.leading)))
    ]
    
    var filteredCards: [(String, AnyView)] {
        if searchText.isEmpty {
            return cards
        } else {
            return cards.filter { $0.0.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    @FocusState private var firstNameFieldIsFocused: Bool
    
    var body: some View {
        VStack {
           
            HStack {
                Spacer()
                Image(systemName: "magnifyingglass.circle.fill")
                    .foregroundColor(.gray)
                TextField("", text: $searchText, prompt: Text("Explore View").foregroundColor(.gray))
                    .focused($firstNameFieldIsFocused)
                    .padding(.vertical, 8)
                    .foregroundColor(.white)
                    .onTapGesture {
                        firstNameFieldIsFocused = true
                    }
                Spacer()
                Button(action: {
                    firstNameFieldIsFocused = false
                    searchText = ""
                }, label: {
                    Image(systemName: "x.circle.fill")
                        .foregroundColor(firstNameFieldIsFocused ? .white.opacity(0.8) : .gray)
                        .padding(.trailing, 4)
                })
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(red: 0.16, green: 0.13, blue: 0.20))
            )
            .padding(.horizontal)
            
           
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(filteredCards.indices, id: \.self) { index in
                        let card = filteredCards[index]
                        
                        if card.0 == "Freedom Series" || card.0 == "Workplace Anxiety" {
                             if index > 0, filteredCards[index - 1].0 == "Freedom Series" {
                                EmptyView()
                            } else {
                                HStack(spacing: 16) {
                                    ForEach(filteredCards.filter { $0.0 == "Freedom Series" || $0.0 == "Workplace Anxiety" }, id: \.0) { groupedCard in
                                        groupedCard.1
                                            .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                                            .padding(.leading,8)
                                    }
                                }
                            }
                        } else {
                           
                            card.1
                                .frame(width: UIScreen.main.bounds.width)
                        }
                    }
                    
                    TagLine()
                        .offset(y:40)
                }
            }
            .padding(.top)
        }
        .background(
            Color(red: 0.06, green: 0.02, blue: 0.13)
        )
    }
}
#Preview {
    ExploreTabView()
}
