//
//  DataTest.swift
//  HifamilySwiftUI
//
//  Created by 吴柏辉 on 2021/9/19.
//

import SwiftUI

struct DataTest: View {
    var body: some View {
        
        DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
    }
}

struct DataTest_Previews: PreviewProvider {
    static var previews: some View {
        DataTest()
    }
}
