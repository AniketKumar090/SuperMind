import SwiftUI

struct ExploreGridView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                ForEach(viewModel.displayedItems()) { item in
                    VStack(spacing: 10) {
                        Button(action: {
                            if item.name == "More" || item.name == "Close" {
                                viewModel.toggleExpand()
                            }
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(red: 0.1, green: 0.07, blue: 0.2))
                                    .frame(width: 85, height: 85)
                                VStack(spacing: 6) {
                                    if item.name == "More" || item.name == "Close" {
                                        Image(systemName: item.iconName)
                                            .font(.system(size: 30))
                                            .foregroundColor(.white)
                                            .offset(y: -5)
                                            .padding(.top)
                                    } else {
                                        Image(item.iconName)
                                            .font(.system(size: 32))
                                            .foregroundColor(.white)
                                    }
                                    Text(item.name)
                                        .font(.system(size: 14))
                                        .foregroundColor(.white)
                                }
                            }
                        }
                    }
                }
            }
            .padding(.bottom, 5)
            
            if viewModel.isExpanded {
                Button(action: {
                    viewModel.isSheetPresented = true
                }) {
                    Text("Edit Shortcuts")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 0.73, green: 0.61, blue: 1.00))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top, 10)
                }
            }
        }
        .padding(.horizontal)
        .animation(.spring(duration: 0.5), value: viewModel.isExpanded)
    }
}
