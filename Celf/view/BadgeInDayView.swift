//
//  BadgeInDayView.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct BadgeInDayView: View {
    var badge: BadgeCard
    
    var body: some View {
        Image(systemName: badge.imageName)
            .padding(10)
            .font(.system(size: 32))
            .border(badge.colorName, width: 3.0)
            .foregroundColor(Color.white)
            .background(badge.colorName)
        
    }
}

struct BadgeInDayView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeInDayView(badge: BadgeCard(category: K.conquer))
    }
}
