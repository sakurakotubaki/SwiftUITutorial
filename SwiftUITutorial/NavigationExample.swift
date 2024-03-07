//import SwiftUI
//
//struct NavigationExample: View {
//    
//    
//    var body: some View {
//        NavigationStack {
//            ScrollView {
//                VStack(spacing: 40) {
//                    // 配列の値を生成する
//                    ForEach(fruit, id: \.self) { fruit in
//                        NavigationLink(value: fruit) {
//                            Text(fruit)
//                        }
//                    }
//                    
//                    ForEach(1..<10) { x in
//                        
//                        NavigationLink(value: x) {
//                            // 画面遷移先のページを書く
//                            Text("Click me: \(x)")
//                        }
//                    }
//                }
//            }
//            .navigationTitle("画面遷移")
//            .navigationDestination(for: Int.self) { value in
//                DetailView(value: value)
//            }
//            // 配列用の画面遷移のコード
//            .navigationDestination(for: String.self) { value in
//                Text("配列の値: \(value)")
//            }
//        }
//    }
//}
//
//struct DetailView: View {
//    
//    let value: Int
//    
//    init(value: Int) {
//        self.value = value
//        print("詳細ページ: \(value)")
//    }
//    
//    var body: some View {
//        Text("渡された値 \(value)")
//    }
//}
//
//#Preview {
//    ContentView()
//}
//
