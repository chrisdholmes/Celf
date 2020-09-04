//
//  DistortionInUpdateView.swift
//  Celf
//
//  Created by pancake on 9/4/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct DistortionInUpdateView: View {
    var badge: Badge
  
    var body: some View {
        VStack{
            
            Text(badge.getCategoryForUpdateView())
                .bold()
                .foregroundColor(Color.white)
                .background(badge.colorName, alignment: .bottom)
                .font(.title)
                .multilineTextAlignment(.center)
            
        }.onTapGesture {
            print(self.badge.category)
        }.frame(width: 300,height: 300)
        .background(RoundedRectangle(cornerRadius: 20)
            .fill(badge.colorName))

        
    }
}
