//
//  ContentView.swift
//  T20230109
//
//  Created by 森川柏旭 on 2023/01/09.
//

import SwiftUI

struct ContentView: View {

    @State var price = "" //價格
    @State var tax = "" //稅率
    @State var total = 0.0 // 總金額
    @State var final = 0 //稅後金額
    
    var body: some View {
        VStack{
            
            Form{
                VStack {
                    Section(header :Text("算算稅後金額")){
                        TextField("價格",text:$price).keyboardType(.numberPad)
                        Spacer()
                        TextField("稅率",text:$tax).keyboardType(.numberPad)
                        Spacer()
                        HStack {
                            Button(action: {self.total = Double(self.price)! + Double(self.price)! * Double(self.tax)! / 100
                                self.final = Int(self.total)
                            }){
                                Text("確定")
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(.purple)
                                    .cornerRadius(25)
                        }
                            Button(action: {
                                self.total = 0.0
                                self.tax = ""
                            }){
                                Text("重算")
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(.purple)
                                    .cornerRadius(25)
                        }
                        }
                        Text("\(self.final)元")
                        
                        
                    }
                    
                }
 
                
            }
            takarakuzi20230109()
                .padding()
                Spacer()
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
