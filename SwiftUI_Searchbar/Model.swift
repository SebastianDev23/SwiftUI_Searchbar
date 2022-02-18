
import SwiftUI

struct Model: View {
    
    var data: Data
    
    var body: some View {
        VStack {
            Text(data.title)
                .foregroundColor(.white)
                .frame(width: 120, height: 120)
                .background(Color.blue)
                .cornerRadius(12)
        }
    }
}
struct Model_Previews: PreviewProvider {
    static var previews: some View {
        Model(data: dataLibrary[1])
    }
}
