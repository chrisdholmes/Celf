//
//  CustomButtonView.swift
//  Celf
//
//  Created by pancake on 8/31/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct CustomButtonView: View {
    let text: String
    let action: () -> ()
    var body: some View {
        
        Button(action: action) {
            Text(text.uppercased())
                .foregroundColor(Color.white)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .padding()
                .frame(width: 300, height: 75)
                .background(Capsule())
                
        }
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView(text: "example"){
            print("example")
        }
    }
}
