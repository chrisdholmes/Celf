//
//  BadgeInDayView.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct BadgeInDayView: View {
    var badgeName: String
    
    var body: some View {
        Image(systemName: badgeName)
            .padding(.horizontal, 5)
            .font(.system(size: 32))
        
    }
}

struct BadgeInDayView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeInDayView(badgeName: "square")
    }
}
