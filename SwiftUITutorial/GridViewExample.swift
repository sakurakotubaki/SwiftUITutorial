import SwiftUI

struct GridViewExample: View {
    var items: Array<String> = ["chair", "desk", "mouse", "usb"]
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(items, id: \.self) { item in
                    VStack {
                        Text(item)
                        Image(item) // アセット名を直接使用
                            .resizable() // 画像のサイズを変更可能にする
                            .aspectRatio(contentMode: .fit) // アスペクト比を保持しながら画像をフレームにフィットさせる
                            .frame(width: 100, height: 100) // 画像のサイズを指定
                    }
                    .frame(width: 150, height: 150)
                    .border(Color.black, width: 2)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    GridViewExample()
}
