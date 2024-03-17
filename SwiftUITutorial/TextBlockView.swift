import SwiftUI

struct TextBlockView: View {
    @EnvironmentObject var data : DataExample
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 200, height: 60)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .cornerRadius(9)
            Text("\(data.text) : \(data.counter)")
                .foregroundColor(.white)
        }
        .onTapGesture {
            data.counter += 1
        }
    }
}

#Preview {
    TextBlockView()
}
