//
//  WriteLetterVeiw.swift
//  HifamilySwiftUI
//
//  Created by 吴柏辉 on 2021/9/17.
//

import SwiftUI

struct WriteLetterView: View {
    var body: some View {
        
        VStack {
            UpperLine()
            Divider()
            VStack {
                Text("收信人：")
                    
            }
        }
    }
}

struct WriteLetterView_Previews: PreviewProvider {
    static var previews: some View {
        WriteLetterView()
    }
}

struct UpperLine: View {
    var body: some View {
        HStack {
            Image("Iconly-Bulk-Setting")
                .resizable()
                .frame(width:23,
                       height:23,
                       alignment:.center)
            Spacer()
            Text("写家书")
                .foregroundColor(grayColor2)
                .font(.system(size: 22))
            Spacer()
            Text("寄出")
                .foregroundColor(orangeColor)
                .font(.system(size: 22))
        }.padding()
    }
}