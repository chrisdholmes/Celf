//
//  ContentView.swift
//  Celf
//
//  Created by pancake on 8/31/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct WelcomeView: View
{
    var body: some View
    {
        VStack
            {
                Spacer()
                
                Image("celf").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height:300)
                    .animation(.interactiveSpring())
                
                
                QuoteSpeakerView(quote: "quote", speaker: "speaker")
                
                Spacer()
                
                CustomButtonView(text: "Register"){
                    print("Register Button")
                }
                
                Divider().hidden()
                
                
                CustomButtonView(text: "Login"){
                    print("Login Button")
                }
                
                
                
                Spacer()
                
                Button(action:{print("Forgot password")})
                {
                    Text("forgot password")
                        .font(.body)
                        .foregroundColor(.brandBlue)
                        .underline()
                }
        }.edgesIgnoringSafeArea(.top)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().previewDevice("iPhone XR")
    }
}





