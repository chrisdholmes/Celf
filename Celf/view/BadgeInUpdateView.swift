//
//  BadgeInUpdateView.swift
//  Celf
//
//  Created by pancake on 9/3/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct BadgeInUpdateView: View {
    var badge: Badge
    var body: some View {
        
        VStack{
            Image(systemName: badge.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(10)
            .font(.system(size: 32))
            .border(badge.colorName, width: 3.0)
            .foregroundColor(Color.white)
            .background(badge.colorName)
                .onTapGesture {
                    print(self.badge.category)
            }
            
            Text(badge.category)
            .foregroundColor(Color.white)
            .background(badge.colorName, alignment: .bottom)
            .font(.title)
            }.frame(width: 300,height: 300)
            .background(RoundedRectangle(cornerRadius: 20)
            .fill(badge.colorName))
            
        
    }
}

struct BadgeInUpdateView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeInUpdateView(badge: Badge(category: K.conquer))
    }
}
