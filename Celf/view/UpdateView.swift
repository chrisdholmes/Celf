//
//  Updateview.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

/**
 
 UpdateView is a reusable for adding cards to the CardData class.
 
 */

struct UpdateView: View {
    
    var body: some View {
        
        VStack {
            
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack {
                    ForEach(K.badgeArray){ badge in
                        
                        NavigationLink(destination: EventCardEntryView(category: badge.category)){
                            BadgeInUpdateView(badge: badge)
                        }
                        
                    }
                }
            }
            Divider().hidden()
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack {
                    ForEach(K.distortionBadges){ badge in
                        NavigationLink(destination: EventCardEntryView(category: badge.category)){
                            DistortionInUpdateView(badge: badge)
                        }.border(Color.black)
                        
                    }
                }
            }
        }
    }
}


struct UpdateView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateView()
    }
}

