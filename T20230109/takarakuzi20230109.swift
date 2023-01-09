//
//  takarakuzi20230109.swift
//  T20230109
//
//  Created by 森川柏旭 on 2023/01/09.
//

import SwiftUI


struct takarakuzi20230109: View {
    let luckyColor = ["黑","白","紅","藍","黃","綠","紫"]
    let uusei = ["吉","中吉","吉","兇","大兇"]
    let number1 = ["0","1","2","3","4","5","6","7","8","9"]
    @State private var todaytext:String = "測試今日運勢看看"
    @State private var answertext:String = "0"
    @State private var colortext :String = "0"
    @State private var todaynumber: String = "0"
    var body: some View {
        
        VStack{
            Text("測試今日運勢看看:")
                .font(.title)
            
            HStack {
                Text("今天的運勢是:")
                Text(answertext)
            }
            .font(.title3)
            .padding()
            .foregroundColor(.white)
            .background(.orange)
            .cornerRadius(25)
            HStack {
                Text("今天的幸運數字是:")
                Text(todaynumber)
            }
            .font(.title3)
            .padding()
            .foregroundColor(.white)
            .background(.orange)
            .cornerRadius(25)
            HStack {
                Text("今天的幸運色是:")
                Text(colortext)
            }
            .font(.title3)
            .padding()
            .foregroundColor(.white)
            .background(.orange)
            .cornerRadius(25)
            HStack {
                Button(action: {
                    
                    answertext = String(uusei[Int.random(in: 0...uusei.count-1)])
                    colortext = String(luckyColor[Int.random(in: 0...luckyColor.count-1)])
                    todaynumber = String(number1[Int.random(in: 0...number1.count-1)])
//                    directiontext.text = String(direction[Int.random(in: 0...direction.count-1)])
                    
                }){
                    Text("按我測試")
                        .font(.title3)
                        .padding()
                        .foregroundColor(.white)
                        .background(.purple)
                        .cornerRadius(25)
                
                        
                }
                Button(action: {
                    self.answertext = ""
                    self.colortext = ""
                    self.todaynumber = ""
                }){
                    Text("重新測試")
                        .font(.title3)
                        .padding()
                        .foregroundColor(.white)
                        .background(.purple)
                        .cornerRadius(25)
                }
            }
        }

    }
}

struct takarakuzi20230109_Previews: PreviewProvider {
    static var previews: some View {
        takarakuzi20230109()
    }
}
