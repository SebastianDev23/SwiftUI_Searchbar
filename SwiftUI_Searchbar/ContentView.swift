import SwiftUI

struct ContentView: View {
    
    var data: Data
    
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(test) { library in
                    Model(data: library)
                }
            }
            .searchable(text: $searchText)
            .navigationTitle(Text("Searchbar"))
        }
    }
    var test: [Data] {
        if searchText.isEmpty {
            return dataLibrary
        } else {
            return dataLibrary.filter { ($0.title.lowercased().contains(searchText.lowercased()))}
            // lowercased is for Search, small words
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(data: dataLibrary[1])
    }
}






