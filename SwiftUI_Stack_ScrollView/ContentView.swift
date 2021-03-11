

import SwiftUI


struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Button(action: {
                        print("메뉴를 선택했습니다.")
                    }) {
                    Image(systemName: "list.bullet")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .padding()
                    }
                    Spacer()
                    
                    Button(action: {
                        print("계정을 선택했습니다.")
                    }) {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .padding()
                    }
                    
                }
                
                ProjectCard()
                    .padding(.bottom, 2)
                MyCard(MyImage: "scribble.variable", MyText: "SwiftUI : Text", Houre: 1, Min: 20 , BgColor: Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
                MyCard(MyImage: "arrowshape.turn.up.forward.circle", MyText: "Image", Houre: 1, Min: 10, BgColor: Color(#colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)))
                MyCard(MyImage: "server.rack", MyText: "Stack", Houre: 4, Min: 10, BgColor: Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)))
                MyCard(MyImage: "doc.text.below.ecg.fill", MyText: "View layout", Houre: 1, Min: 10, BgColor: Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                MyCard(MyImage: "books.vertical.fill", MyText: "MVVM", Houre: 8, Min: 10, BgColor: Color(#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)))
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
