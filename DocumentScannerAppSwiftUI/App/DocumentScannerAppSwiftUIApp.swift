import SwiftUI

@main
struct DocumentScannerAppSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Document.self)
        }
    }
}
