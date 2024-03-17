import SwiftUI

@MainActor class DataExample : ObservableObject {
    @Published var text = "Counter"
    @Published var counter = 0
}

struct EnvironmentObjectView: View {
    @StateObject var data = DataExample()
    
    var body: some View {
        VStack {
            TextBlockView()
            SampleView()
        }
        .environmentObject(data)
    }
}

#Preview {
    EnvironmentObjectView()
}
