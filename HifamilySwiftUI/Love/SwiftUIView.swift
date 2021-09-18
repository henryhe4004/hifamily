//
//  SwiftUIView.swift
//  HifamilySwiftUI
//
//  Created by 潘炳名 on 2021/9/18.
//

import SwiftUI

struct SwiftUIView: View {
    @State var context : String = ""
    var body: some View {
//        TextField("Hello, World!",text: $content)
//            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
        TextField("个性化语句", text : $context)
            .frame(width:250, height: 50, alignment: .center)
            .foregroundColor(.gray)
            .textFieldStyle(UnderLineTextFieldStyle())
            .keyboardType(.asciiCapableNumberPad)
            .padding(EdgeInsets(top: 0, leading: -10, bottom: 10, trailing: 15))
            
//            .disabled(true)

    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
