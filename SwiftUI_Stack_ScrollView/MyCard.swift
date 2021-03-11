//
//  MyCard.swift
//  SwiftUI_Stack_ScrollView
//
//  Created by 김선중 on 2021/03/10.
//

import SwiftUI

struct MyCard: View {
    
    var MyImage: String
    var MyText: String
    var Houre: Int
    var Min: Int
    var BgColor: Color
    
    
    var body: some View {
        HStack {
            
            Image(systemName: "\(MyImage)")
                .font(.system(size: 50))
                .foregroundColor(.white)
                .frame(width: 90)
                .padding()

            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                Text("\(MyText)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                    .lineLimit(1)
                
                Text("예상 소요 시간 : \(Houre)시간 \(Min)분")
                    .font(.footnote)
                    .foregroundColor(.white)
                
                
            }
        }
        .frame(height: 100, alignment: .center)
        .background(BgColor)
        .cornerRadius(20)
        .padding(.horizontal, 10)
        
    }
}


struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(MyImage: "scribble.variable", MyText: "SwiftUI : Text", Houre: 1, Min: 20 , BgColor: Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
    }
}
