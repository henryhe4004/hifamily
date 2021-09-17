//
//  MemberUIView.swift
//  HifamilySwiftUI
//
//  Created by 游 on 2021/9/16.
//

import SwiftUI


struct MemberUIView: View {
    
    @State var isPressed = false //是否按压图片
    
    var body: some View {

        ZStack {
            if(isPressed){
                ScrollView(.horizontal, showsIndicators: false) {
                    Spacer()
                    
                    ZStack {
                        ReturnCardUIView()
//                        Image(systemName: "multiply.circle.fill")
//                            .resizable(resizingMode: .tile)
//                            .aspectRatio(contentMode: .fill)
//                            .foregroundColor(Color("AccentColor"))
//                            .onTapGesture {
//                                isPressed = false
//                            }
//                            .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                            .offset(x: -200, y: -250)
                            
                        
                        HStack(alignment: .center, spacing: 10) {
                            Spacer()
                            CardUIView(image: "mother",memberName:"妈妈",memberIdentity:"女儿",memberTelephone:"15025584040").padding()
                            CardUIView(image: "father",memberName:"爸爸",memberIdentity:"爸爸",memberTelephone:"15025584040").padding()
                            CardUIView(image: "sister",memberName:"姐姐",memberIdentity:"姐姐",memberTelephone:"15025584040").padding()
                            Spacer()
                        }
                        
                    }
                    Spacer()
                }
            }else{
                VStack {
                    HStack {
                        Image("grandFather")
                            .onTapGesture {
                                isPressed = true
                            }
                        Image("grandmother")
                            .onTapGesture {
                                isPressed = true
                            }
                    }
                    HStack {
                        Image("father")
                            .onTapGesture {
                                isPressed = true
                            }
                        Image("mother")
                            .onTapGesture {
                                isPressed = true
                            }
                    }
                    HStack {
                        Image("bother")
                            .onTapGesture {
                                isPressed = true
                            }
                        Image("sister")
                            .onTapGesture {
                                isPressed = true
                            }
                        
                    }
                    Image("addMember")
                }
            }
           
        }
        
        
    }
}

struct MemberUIView_Previews: PreviewProvider {
    static var previews: some View {
        MemberUIView()
    }
}
