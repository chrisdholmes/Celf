//
//  HomeView.swift
//  Celf
//
//  Created by pancake on 8/31/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
           TabView {
             Text("Update Screen")
                 .tabItem {
                     Image(systemName: "plus.square.fill")
                        .font(.system(size: 40))
                      
             }
            
             Text("Friends Screen")
                 .tabItem {
                     Image(systemName: "person.fill")
                     Text("Friends")
             }
             Text("Nearby Screen")
                 .tabItem {
                     Image(systemName: "mappin.circle.fill")
                     Text("Nearby")
             }
           }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().previewDevice("iPhone XR")
    }
}
