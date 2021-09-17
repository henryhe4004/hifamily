//
//  HomeLandUIView.swift
//  HifamilySwiftUI
//
//  Created by 游 on 2021/9/15.
//

import SwiftUI

struct HomeLandUIView: View {
    @State var FamilyTreeName = "相亲相爱一家人"
    var body: some View {
 
        ZStack {
           
            ZStack {
                
                TextField("FamilyTreeName",
                          text: $FamilyTreeName,
//                          每当用户开始或完成编辑文本时，TextField就会调用onEditingChanged关闭。它还传递一个描述开始或结束事件的布尔值。每当用户执行诸如按回车键之类的操作时，TextField就会调用onCommit闭包

                          onEditingChanged: { _ in print("changed") },
                          onCommit: { print("commit") }
                )
                    .disabled(true)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .font(.system(size: 16))
                    .foregroundColor(Color("FamliyTreeNameColor"))
                    .frame(width: 90, height: 0)
                    .offset(x: -123, y: 43)
                    .multilineTextAlignment(.center)
                Image("notice")
                    .padding(.init(top: 150, leading: -180, bottom: 0, trailing: 0))
                
            }
            RoundedRectangle(cornerRadius: 27)
                .fill(LinearGradient(gradient: .init(colors: [Color("LandColorBefore"), Color("LandColorAfter")]), startPoint:  .leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/ .trailing))
                .frame(width: .infinity, height: 200, alignment: .center)
                .padding(EdgeInsets(top:500,leading:0,bottom:0,trailing:0))
                .opacity(0.8)
        }
            
        
       
    }
}

struct HomeLandUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeLandUIView()
    }
}
