import SwiftUI

struct EditShortcutsSheet: View {
    @Environment(\.dismiss) var dismiss
    let allItems: [Item]
    @Binding var selectedItems: [String]
    var onSave: ([String]) -> Void
    @State private var tempSelectedItems: [String] = []
    @State private var showAlert: Bool = false
    var viewModel: HomeViewModel
    
    var body: some View {
        ZStack {
            Color(red: 0.16, green: 0.13, blue: 0.20)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                // Header
                HStack {
                    Text("Select max 3 shortcuts")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                    Spacer()
                    Button("Cancel") {
                        dismiss()
                    }
                    .foregroundColor(.white)
                }
                .padding(.horizontal)
                .padding(.vertical, 12)
                
                Divider()
                    .background(Color.gray.opacity(0.3))
                    .padding(.horizontal)
                
                HStack(spacing: 16) {
                    ForEach(tempSelectedItems.prefix(3), id: \.self) { itemName in
                        ZStack(alignment: .topTrailing) {
                            ShortcutButton(
                                title: itemName,
                                iconName: allItems.first(where: { $0.name == itemName })?.iconName ?? "",
                                isSelected: true,
                                action: {}
                            )
                            
                            Button {
                                tempSelectedItems.removeAll { $0 == itemName }
                            } label: {
                                ZStack {
                                    Circle()
                                        .fill(Color.red)
                                        .frame(width: 24, height: 24)
                                    
                                    Image(systemName: "minus")
                                        .font(.system(size: 14, weight: .bold))
                                        .foregroundColor(.white)
                                }
                            }
                            .offset(x: 10, y: -10)
                        }
                    }
                    .padding(.top)
                    Spacer()
                }
                .padding(.leading)
                .padding(.vertical, 10)
                
                Divider()
                    .background(Color.gray.opacity(0.3))
                    .padding(.horizontal)
                
                // Available shortcuts grid
                ScrollView {
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ], spacing: 4) {
                        ForEach(allItems.filter { !tempSelectedItems.contains($0.name) }) { item in
                            ShortcutButton(
                                title: item.name,
                                iconName: item.iconName,
                                isSelected: tempSelectedItems.contains(item.name),
                                action: {
                                    if tempSelectedItems.count < 3 {
                                        tempSelectedItems.append(item.name)
                                    }
                                }
                            )
                        }
                    }
                    .padding(.vertical)
                }
                .scrollIndicators(.hidden)
                .padding(.bottom)
                Spacer()
            }
            
            // Save button
            VStack {
                Spacer()
                Button {
                    if tempSelectedItems.count == 3 {
                        onSave(tempSelectedItems)
                        viewModel.savedShortcuts = tempSelectedItems
                        viewModel.reorderItems()
                        dismiss()
                    } else {
                        showAlert = true
                    }
                } label: {
                    Text("Save")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        .background(
                            RoundedRectangle(cornerRadius: 24)
                                .fill(Color(red: 0.41, green: 0.15, blue: 0.92))
                        )
                }
                .padding(.horizontal)
                .offset(y: 20)
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Please Select 3 Shortcuts"),
                message: Text("You must select exactly 3 shortcuts."),
                dismissButton: .default(Text("OK"))
            )
        }
        .onAppear {
            tempSelectedItems = selectedItems
        }
    }
}
struct ShortcutButton: View {
    let title: String
    let iconName: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 8) {
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .fill( Color(red: 0.1, green: 0.07, blue: 0.2))
                        .frame(width: 72, height: 72)
                    
                    Image(iconName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .foregroundColor(.white)
                }
                
                Text(title)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
            }
        }
    }
}
#Preview{
    HomeieView(viewModel: HomeViewModel())
}
