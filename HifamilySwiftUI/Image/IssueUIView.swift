//
//  IssueUIView.swift
//  HifamilySwiftUI
//
//  Created by 潘炳名 on 2021/9/19.
//

import SwiftUI

struct IssueUIView: View {
    @State var people : String = "妍妍"
    @State var content : String = ""
    
    var items : [GridItem] = [
        GridItem(GridItem.Size.flexible(),spacing: 5),
        GridItem(GridItem.Size.flexible(),spacing: 5),
        GridItem(GridItem.Size.flexible(),spacing: 5)
    ]
    
    var body: some View {
        VStack{
            Divider()
            VStack {
                HStack{
                    Text("时光记录人: \(people)").font(.system(size: 25))
                        .foregroundColor(Color(red: 115/255, green: 115/255, blue: 115/255))
                        .padding(EdgeInsets(top: 30, leading: 50, bottom: 30, trailing: 0))
                    Spacer()
                }
                
            }
            ScrollView(){
                VStack{
                    TextField("记录下精彩一刻",text:$content)
                        .frame(width:280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(grayColor2)
                        .keyboardType(.default)
//                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                        .ignoresSafeArea(.keyboard)
                }
                LazyVGrid(columns: items, content: {
                    
                }
                )
                
            }
            
//            TextField
        }.navigationBarTitle(Text("新照片").foregroundColor(grayColor))
        .navigationBarItems(trailing: Button(action:{} ){
            Text("发布").foregroundColor(Color("AccentColor"))
        })
    }
}

struct IssueUIView_Previews: PreviewProvider {
    static var previews: some View {
        IssueUIView()
    }
}
