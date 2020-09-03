//
//  EventCardView.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI
/**
   EventCardView displays an event. It displays the event in a card
    that contains the date/time, category and journal entry for the event.
    Each event contains these three items.  The EventCardView
    requires an eventCard that does not contain any null values.
 */
struct EventCardView: View {
    
    var eventCard: EventCard
    
    var body: some View {
        
        VStack{
            HStack {
                VStack{
                    Text(self.eventCard.date)
                    Text(self.eventCard.time)
                }
                
                Spacer()
                HStack{
                    BadgeInDayView(badge: self.eventCard.badge)
                }

            }
            
            Divider()
            
            JournalEntryView(
                title: self.eventCard.category,
                bodyText: self.eventCard.entry.bodyText)
            
        }
        .padding()
        .border(Color.black, width: 1)
    }
}

struct EventCardView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        EventCardView(eventCard: EventCard(category: "Meditation"))
    }
}
