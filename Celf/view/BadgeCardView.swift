//
//  EventCardView.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI
/**
   BadgeCardView displays an event. It displays the event in a card
    that contains the date/time, category and notes  for the event.
    Each event contains these three items.  The EventCardView
    requires an eventCard that does not contain any null values.
 */
struct BadgeCardView: View {
    
    var badgeCard: BadgeCard
    
    var body: some View {
        
        VStack{
            HStack {
                VStack{
     
                    Text(self.badgeCard.time)
                }
                
                Spacer()
                HStack{
                    BadgeInDayView(badge: self.badgeCard)
                }

            }
            
            Divider()
            
            NotesView(
                category: self.badgeCard.category,
                notes: self.badgeCard.notes)
            
        }
        .padding()
        .border(Color.black, width: 1)
    }
}

struct EventCardView_Previews: PreviewProvider {
    static var previews: some View {
    
        
        
        BadgeCardView(badgeCard: BadgeCard(category: K.meditation))
    }
}

