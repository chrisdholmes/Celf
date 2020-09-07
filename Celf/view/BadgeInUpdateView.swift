//
//  BadgeInUpdateView.swift
//  Celf
//
//  Created by pancake on 9/3/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI
/**
 
  BadgeInUpdateView provides a clickable custom button for the user
 to log the cognitive distortion or the depression combat action they took that
 day. 
 */
struct BadgeInUpdateView: View {
    var badge: BadgeCard
    var body: some View {
        
        VStack{
            Image(systemName: badge.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(10)
            .font(.system(size: 32))
                .border(Color.clear, width: 3.0)
                .foregroundColor(Color.white)
                .background(Color.clear)
                
            
            Text(badge.category)
            .foregroundColor(Color.white)
                .background(Color.clear, alignment: .bottom)
            .font(.title)
            }.frame(width: 300,height: 300)
            .background(RoundedRectangle(cornerRadius: 20)
            .fill(badge.colorName))
            
        
    }
}

struct BadgeInUpdateView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeInUpdateView(badge: BadgeCard(category: K.conquer))
    }
}
