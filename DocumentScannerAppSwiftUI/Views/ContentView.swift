import SwiftUI

struct ContentView: View {
    @AppStorage("showIntroView") private var showIntroView: Bool = true
    
    var body: some View {
        HomeView()
            .sheet(isPresented: $showIntroView) {
                IntroScreenView()
                    .interactiveDismissDisabled()
            }
    }
}

#Preview {
    ContentView()
}
