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
                    TextField("最怀念的高三,和张腾，萌萌，文青她们（还有我的男朋友）一起在家给我的妹妹拍照，妹妹快点长大呀！我们就能一起去北京天安门看升国旗了",text:$content)
                        .frame(width:280,height: 300, alignment: .topLeading)
                        .foregroundColor(grayColor2)
                        .keyboardType(.default)
                        .multilineTextAlignment(.leading)
//                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                        .ignoresSafeArea(.keyboard)
                }
                LazyVGrid(columns: items, content: {
                    ForEach(1..<4){ index in
                        Image("qiqi\(index)")
                            .resizable()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
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
