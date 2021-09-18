//
//  WriteLetterVeiw.swift
//  HifamilySwiftUI
//
//  Created by 吴柏辉 on 2021/9/17.
//

import SwiftUI

final class Letters: ObservableObject {
    @Published  var letter:String
    @Published var nickname:String
    init() {
        letter = ""
        nickname = ""
    }
}

struct WriteLetterView: View {
    
    @ObservedObject var letterr:Letters = Letters()
    var body: some View {
        
        VStack {
            UpperLine()
            Divider()
            VStack{
                HStack {
                    Text("收信人：")
                    Text("Your letter is \(letterr.letter)!")
                    TextField(
                        "User Name",
                        text: $letterr.letter
                    ) {isEditing in
                        self.letterr.letter = letterr.letter
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .keyboardType(.numberPad)
                }
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
