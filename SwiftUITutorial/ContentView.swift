import SwiftUI

// 状態が変わる親のView
struct ContentView: View {
    @State private var isPlaying = false

    var body: some View {
        VStack {
            // このViewを呼び出して、引数で状態を渡す
            PlayerView(isPlaying: $isPlaying)
            Button(action: {
                isPlaying.toggle()
            }) {
                Text(isPlaying ? "⏹️" : "▶️")
                    .font(.system(size: 100))
            }
        }
    }
}

// 子のViewには、@Bindingを定義すると外部から引数で渡せるようになる。
struct PlayerView: View {
    @Binding var isPlaying: Bool

    var body: some View {
        Text(isPlaying ? "🚀" : "💸")
            .font(.system(size: 100))
    }
}
