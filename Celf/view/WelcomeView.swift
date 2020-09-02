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
    @ObservedObject var quoteManager = QuoteManager()
    @State private var navLinkTag: Int? = 0
    
    
    
    var body: some View
    {
        NavigationView {
            VStack
                {
                    
                    Spacer()
                    
                    Image("celf").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height:300)
                        .animation(.interactiveSpring())
                    
                    
                    
                    QuoteSpeakerView(quote: quoteManager.quote ??
                        Quote(speaker: "Tony Baker",quote:
                            "Cram!"))
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: RegisterView(),
                                   tag: 1, selection: $navLinkTag){
                                    EmptyView()
                    }
                    CustomButtonView(text: "Register"){
                        
                        print("Register Button")
                        self.navLinkTag = 1
                    }
                    
                    
                    Divider().hidden()
                    NavigationLink(destination: LoginView(),
                                   tag: 2, selection: $navLinkTag){
                                    EmptyView()
                    }
                    
                    CustomButtonView(text: "Login"){
                        print("Login Button")
                        self.navLinkTag = 2
                    }
                    
                    
                    
                    
                    Spacer()
                    
                    /**
                     Button(action:{print("Forgot password")})
                     {
                     Text("forgot password")
                     .font(.body)
                     .foregroundColor(.brandBlue)
                     .underline()
                     }
                     */
            }.edgesIgnoringSafeArea(.top)
        }.onAppear{
            self.quoteManager.getQuote()
            
        }
    }
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().previewDevice("iPhone XR")
    }
}





