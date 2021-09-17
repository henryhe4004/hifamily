//
//  SwiftUIView.swift
//  HifamilySwiftUI
//
//  Created by 潘炳名 on 2021/9/18.
//

import SwiftUI

struct SwiftUIView: View {
    @State var content : String = ""
    var body: some View {
        TextField("Hello, World!",text: $content)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
