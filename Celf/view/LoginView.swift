//
//  LoginView.swift
//  Celf
//
//  Created by pancake on 8/31/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

/**
    LoginView  file will allow a user to login to the Celf App
      via FireBase.

     TODO
       - update to include account login via firebase
       - only allow login button to be available once all fields are done
       - throw error is log in fails - such as bad password - no internet etc
 

*/

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
