//
//  HomeView.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI
/**
 The HomeView will display several different types of EventViews
 the different cards will represent a list of actions that were performed.
 Actions are going to be started, stopped, and tracked in an AddView.
 The Home view will display in a long list all the actions that have previously
 occurred in chronological order. As the different types of events occur in the AddView are updated to the App - the HomeView will udpate alongside it.
 At the end of the day - the user should perform a journal entry to write about
 how their day went, reflect on progress or just express themselves. 
 */
struct HomeView: View {
    
    var eventCards:[Card]
    
    var body: some View {
        List(eventCards){ card in
            
            if(card is DayCard)
            {
                DayCardView(dayCard: card as! DayCard)
            }
            else if(card is EventCard)
            {
                EventCardView(eventCard: card as! EventCard)
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    
    static let eventCardViewManager = CardViewManager()
    static let eventCards = eventCardViewManager.mockEventCards()
    
    static var previews: some View {
        HomeView(eventCards: eventCards)
    }
}

