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
    
    private let colors = K.colorArray
    private let cards = K.cardArray
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false)
        {
            HStack{
                ForEach(0 ..< cards.count){i in
                    Button(action: {print(self.cards[i])}) {
                        Text(self.cards[i])
                            .foregroundColor(Color.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                            .padding()
                            .frame(width: 300, height: 250)
                            .background( RoundedRectangle(cornerRadius: 20)
                            )
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
