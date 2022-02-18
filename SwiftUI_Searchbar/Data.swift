import Foundation





struct Data: Identifiable {
    var title: String
    var description: String
    var id = UUID()
}



var dataLibrary = [
    Data(title: "Apple", description: "Description"),
    Data(title: "Banana", description: "Description"),
    Data(title: "Pear", description: "Description"),
    Data(title: "Orange", description: "Description"),
]
