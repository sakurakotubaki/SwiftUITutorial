import SwiftUI

struct TapleView: View {
    @State var formData: [(key: String, value: String)] = [
            (key: "Name", value: ""),
            (key: "Age", value: "")
        ]
    
    var body: some View {
        Form {
            ForEach(0..<formData.count, id: \.self) { index in
                TextField("Enter \(formData[index].key)", text: $formData[index].value)
            }
        }
    }
}

#Preview {
    TapleView()
}
