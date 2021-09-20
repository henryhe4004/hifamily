//
//  DataTest.swift
//  HifamilySwiftUI
//
//  Created by 吴柏辉 on 2021/9/19.
//

import SwiftUI

struct DataTest: View {
    
    @State private var date = Date()
    
    var body: some View {
        
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Image("message-calendar")

        }
        
//        DatePicker("你还", selection: $date, in: ...Date()).datePickerStyle(WheelDatePickerStyle())
            
        
    }
}

struct DataTest_Previews: PreviewProvider {
    static var previews: some View {
        DataTest()
    }
}
