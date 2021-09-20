//
//  TextViewDemo.swift
//  HifamilySwiftUI
//
//  Created by 游 on 2021/9/20.
//

import SwiftUI

struct TextViewDemo: View {
    
    @State var text = "此《寒食帖》为北宋元丰二年苏轼谪居黄州，于第三年（元丰五年）四月的寒食日。"
    
    var body: some View {
        VStack {

                VStack {

//                    Text("输入框 TextView")
//                        .padding()
                    TextView(
                        text: $text
                    )
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                }.frame(height:300)
                    .background(Color.orange)
                    .cornerRadius(8)
                    .padding()

               VStack {
                          Text("刚才输入的是:")
                              .padding()
                          Divider()
                          Text("\(text)")
                          Spacer()
                      }.frame(height:300)
                          .background(Color.purple)
                          .cornerRadius(8)
                          .padding()
                }
            }
    
}

struct TextViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextViewDemo()
    }
}
