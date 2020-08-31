//
//  ContentView.swift
//  Celf
//
//  Created by pancake on 8/31/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack{
            Spacer()
            
            Image("celf").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height:300)
            
            Spacer()
            
            CustomButtonView(text: "Register"){
                print("Register Button")
            }
            
            Divider().hidden()
            
            CustomButtonView(text: "Login"){
                print("Login Button")
            }
            
            
            Spacer()
        }
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone XR")
    }
}



struct CustomButtonView: View {
    let text: String
    let action: () -> ()
    var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(Color.white)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        .frame(width: 300, height: 75)
        .background(Color.brandBlue)
    }
}
