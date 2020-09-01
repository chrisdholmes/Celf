//
//  LoginView.swift
//  Celf
//
//  Created by pancake on 8/31/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        

        VStack(){
            
            Image("celf")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)
                .animation(.easeIn(duration: 0.3))
            Divider().hidden()
            TextField("user name", text: $userName)
                .frame(width: 300, height: 75)
                .font(.title)
                .padding(.horizontal)
            Divider()
            .frame(height: 2)
            .background(Color.brandBlue)
            .frame(width: 300)
            
            TextField("password", text: $password)
                .frame(width: 300, height: 75)
                .font(.title)
                .padding(.horizontal)
            
            Divider()
            .frame(height: 2)
            .background(Color.brandBlue)
                .frame(width: 300)
            
            Divider().hidden().padding(.vertical)
            CustomButtonView(text: "Login"){
                print("LoginView - Log in Button")
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
