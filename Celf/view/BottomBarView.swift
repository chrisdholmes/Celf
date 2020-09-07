//
//  HomeView.swift
//  Celf
//
//  Created by pancake on 8/31/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

/**
 
 The BottomBarView contains three SF Symbols each representing a different view for the user. The user will be presented with a Update, Event, Home, and Review options. Each option 
 
 */
import SwiftUI

struct BottomBarView: View {

    
    var body: some View {
        TabView {
            UpdateView()
            .tabItem {
                Image(systemName: "plus.square.fill")
                    .font(.system(size: 32))
                Text("Event")
            }.navigationBarTitle("Update")
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                        .font(.system(size: 32))
                    Text("Home")
            }
            .navigationBarTitle("Home")
      
            
            List{
                Text("History Screen")
            }
            .tabItem {
                Image(systemName: "gobackward")
                    .font(.system(size: 32))
                Text("Review")
            }.navigationBarTitle("History")
            
        }
        
    }
}


struct BottomBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBarView().previewDevice("iPhone XR")
    }
}

