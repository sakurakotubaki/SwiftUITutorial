import SwiftUI

struct NavigationExample: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 40) {
                    ForEach(1..<10) { x in
                        
                        NavigationLink(value: x) {
                            // 画面遷移先のページを書く
                            Text("Click me: \(x)")
                        }
                    }
                }
            }
            .navigationTitle("画面遷移")
            .navigationDestination(for: Int.self) { value in
                DetailView(value: value)
            }
        }
    }
}

struct DetailView: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("詳細ページ: \(value)")
    }
    
    var body: some View {
        Text("渡された値 \(value)")
    }
}

#Preview {
    ContentView()
}

