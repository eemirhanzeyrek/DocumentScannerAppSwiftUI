import SwiftUI

struct IntroScreenView: View {
    @AppStorage("showIntroView") private var showIntroView: Bool = true
    
    var body: some View {
        VStack(spacing: 15) {
            Text("Welcome to \nDocument Scanner")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 65)
                .padding(.bottom, 35)
            
            VStack(alignment: .leading, spacing: 25) {
                PointView(
                    title: "Scan Documents",
                    image: "scanner",
                    description: "Scan your documents with ease."
                )
                PointView(
                    title: "Save Documents",
                    image: "tray.full.fill",
                    description: "Easily store your scanned documents."
                )
                PointView(
                    title: "Lock Documents",
                    image: "faceid",
                    description: "Protect your documents with FaceID so only you can access them."
                )
            }
            .padding(.horizontal, 25)
            
            Spacer(minLength: 0)
            
            Button {
                showIntroView = false
            } label: {
                Text("Start using Document Scanner")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .hSpacing(.center)
                    .padding(.vertical, 12)
                    .background(.blue.gradient, in: .capsule)
            }
        }
        .padding(15)
    }
    
    @ViewBuilder
    private func PointView(title: String, image: String, description: String) -> some View {
        HStack(spacing: 15) {
            Image(systemName: image)
                .font(.largeTitle)
                .foregroundStyle(.blue)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(description)
                    .font(.callout)
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    IntroScreenView()
}
