import SwiftUI

struct SampleView: View {
    @EnvironmentObject var data : DataExample
    
    var body: some View {
        Text("\(data.text) : \(data.counter)")
    }
}

#Preview {
    SampleView()
        .environmentObject(DataExample())
}
