//
//  ImageUIView.swift
//  HifamilySwiftUI
//
//  Created by 潘炳名 on 2021/9/19.
//

import SwiftUI

struct ImageUIView: View {
    @State var selectWhich : [String] = ["照片","相册","回忆"]
    @State private var index : Int = -1
    var body: some View {
        VStack{
            HStack {
                Image("Iconly-Bulk-Setting")
                    .resizable()
                    .frame(width:23,
                           height:23,
                           alignment:.center)
                Spacer()
                Text("Family album")
                    .foregroundColor(Color("AccentColor"))
                    .font(.system(size: 18))
                Spacer()
                Image("Iconly-Bulk-Plus")
                    .resizable()
                    .frame(width:23,
                           height:23,
                           alignment:.center)
            }.padding()
            Divider()
            HStack{
                  
                    Button(action: {
                        if(index == -1){
                            index=1
                        }
                        
                    }){
                        HStack {
                            Image(index == 1 ? "c1" : "gray camera" )
                            Text("照片")
                            .frame(width: 40, height: 20, alignment: .center)
                            .cornerRadius(32)
                            .foregroundColor( grayColor )
                        }
                
                    }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .animation(.easeInOut)
                .background(  LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(15)
                    .shadow(color: Color.init("AccentColor"), radius: 3, x: 0.5, y: 1)
                .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
                Button(action: {
                    if(index == -1){
                        index=2
                    }
                    
                }){
                    HStack {
                        Image(index == 2 ? "orange photo" : "c2" )
                        Text("相册")
                        .frame(width: 40, height: 20, alignment: .center)
                        .cornerRadius(32)
                        .foregroundColor( grayColor )
                    }
            
                }
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .animation(.easeInOut)
            .background(  LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(15)
                .shadow(color: Color.init("AccentColor"), radius: 3, x: 0.5, y: 1)
            .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 15))
                
                Button(action: {
                    if(index == -1){
                        index=3
                    }
                    
                }){
                    HStack {
                        Image(index == 3 ? "orange video" : "c4" )
                        Text("回忆")
                        .frame(width: 40, height: 20, alignment: .center)
                        .cornerRadius(32)
                        .foregroundColor( grayColor )
                    }
            
                }
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .animation(.easeInOut)
            .background(  LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(15)
                .shadow(color: Color.init("AccentColor"), radius: 3, x: 0.5, y: 1)
            .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 15))
                }
            ScrollView(.vertical, showsIndicators: false){
                ZStack{
                    
                }
            }
        
        }
    }
}

struct ImageUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImageUIView()
    }
}
