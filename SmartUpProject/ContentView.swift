import SwiftUI

struct ContentView: View {
 
    @State private var showSecondView = false
    var body: some View {
        VStack {
                    if showSecondView == true {
                        TabBar()
                    } else {
                        Landing1(showSecondView: $showSecondView)
                    }
                }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
