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
       @ObservedObject private var eventCardViewManager = EventCardViewManager()
    
    var body: some View {
        TabView {
            List{
                Text("Update Screen")
            }
            .tabItem {
                Image(systemName: "plus.square.fill")
                    .font(.system(size: 32))
                Text("Event")
            }.onTapGesture {
                print("Update Tab Selected")
            }
            
            HomeView(eventCards: eventCardViewManager.eventCards)
                .tabItem {
                    Image(systemName: "house.fill")
                        .font(.system(size: 32))
                    Text("Home")
            }.onAppear {
                self.eventCardViewManager.fetchData()
            }
            
            List{
                Text("History Screen")
            }
            .tabItem {
                Image(systemName: "gobackward")
                    .font(.system(size: 32))
                Text("Review")
            }.onTapGesture {
                print("History Tab Selected")
            }
            
        }.onAppear{
            print("BottomBarView appeared")
        }.onDisappear{
            print("BottomBarView disappeared")
        }
        
    }
}


struct BottomBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBarView().previewDevice("iPhone XR")
    }
}

