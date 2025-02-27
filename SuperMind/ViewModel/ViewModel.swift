import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var isSheetPresented = false
    @Published var selectedItems: [String] = ["Meditation", "Workout", "Sleep"]
    @Published var isExpanded = false
    
    
    private var allItemsTuple = [
        ("Meditation", "Meditation"),
        ("Workout", "Body"),
        ("Sleep", "Moon"),
        ("Mantra", "lotus"),
        ("Events", "CalendarDots"),
        ("Courses", "BookOpenUser"),
        ("Community", "UsersThree"),
        ("Timer", "ClockCountdown"),
        ("Affirmation", "FlowerTulip"),
        ("Music", "MusicNotesSimple"),
        ("Journal", "Notebook")
    ]
    
    
    var allItems: [Item] {
        allItemsTuple.map { Item(name: $0.0, iconName: $0.1) }
    }
    
    @Published var savedShortcuts: [String] = []
    
    func reorderItems() {
        let savedItems = allItemsTuple.filter { savedShortcuts.contains($0.0) }
        let otherItems = allItemsTuple.filter { !savedShortcuts.contains($0.0) }
        allItemsTuple = savedItems + otherItems
    }
    
    func sortedItems() -> [Item] {
        return allItems.sorted {
            selectedItems.contains($0.name) && !selectedItems.contains($1.name)
        }
    }
    
    func displayedItems() -> [Item] {
        let filteredItems = allItems.filter { $0.name != "More" }
        
        let sortedItems = filteredItems.sorted {
            $0.name == "More" ? false : $1.name == "More" ? true : false
        }
        
        var itemsToDisplay = Array(sortedItems.prefix(3))
        if !isExpanded {
            itemsToDisplay.append(Item(name: "More", iconName: "chevron.down"))
        } else {
            itemsToDisplay.append(Item(name: "Close", iconName: "chevron.up"))
            itemsToDisplay.append(contentsOf: sortedItems.suffix(from: 3))
        }
        return itemsToDisplay
    }
    
    func toggleExpand() {
        isExpanded.toggle()
    }
    
    func saveSelectedItems(_ newSelectedItems: [String]) {
        selectedItems = newSelectedItems
        isExpanded = false
    }
}
