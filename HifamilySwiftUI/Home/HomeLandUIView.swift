//
//  HomeLandUIView.swift
//  HifamilySwiftUI
//
//  Created by 游 on 2021/9/15.
//

import SwiftUI

struct HomeLandUIView: View {
    var body: some View {
 
//            Image("notice")
//                .padding(.init(top: 20, leading: -150, bottom: 0, trailing: 0))
            RoundedRectangle(cornerRadius: 27)
                .fill(LinearGradient(gradient: .init(colors: [Color("LandColorBefore"), Color("LandColorAfter")]), startPoint: /*@START_MENU_TOKEN@*/ .leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/ .trailing/*@END_MENU_TOKEN@*/))
                .frame(width: .infinity, height: 200, alignment: .center)
                .padding(EdgeInsets(top:-25,leading:0,bottom:0,trailing:0))
                .opacity(0.8)
            
        
       
    }
}

struct HomeLandUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeLandUIView()
    }
}
