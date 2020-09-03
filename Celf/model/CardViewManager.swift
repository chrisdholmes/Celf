//
//  CardViewManager.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import Foundation

class CardViewManager: ObservableObject{
    
    @Published var eventCards = [Card]()
    
    func fetchData()
    {
        DispatchQueue.main.async {
            self.eventCards = self.mockEventCards()
        }
    }
    
    func mockEventCards() -> [Card]
    {
        let eventCard = EventCard(category: K.meditation)


        eventCard.entry = JournalEntry(title:K.meditation,bodyText:"I have become more mindful")
        
        let e2 = EventCard(category: K.journal)
        
        e2.entry = JournalEntry(title: K.journal,bodyText:"I journaled and now better understand myself")
        
        let e3 = EventCard(category: K.exercise)
        
        e3.entry = JournalEntry(title: K.exercise, bodyText:"I exercise and strengthen my mind and body")
        
        let e4 = EventCard(category: K.talk)
        
        e4.entry = JournalEntry(title: K.talk, bodyText: "I've talked to some one that loves and guides me towards a mentally healthier future.")
        
        let e5 = EventCard(category: K.conquer)
            
            e5.entry = JournalEntry(title: K.conquer, bodyText: "I have conquered a fear and grown closer to the healthiest mental version of myself.")
        
        
        
        //day card should have all the badges
        //from the events of hte day in it
        // TODO figure out logic to grab all
        // the eventcards of the day and
        // collect all those badges and add them to
        // the day card.
        let dayCard = DayCard()
        dayCard.stars = 5
        
        dayCard.entry = JournalEntry(title: "Satisfaction",bodyText: "BBQ")
        
        let eventCards = [
            eventCard,e2,e3,e4,e5
        ]
        
        var dayCardBadges = [Badge]()
        for event in eventCards{
            dayCardBadges.append(event.badge)
        }
        
        dayCard.badges = dayCardBadges
        
        let cards = [dayCard, eventCard, e2,e3,e4,e5]
        print("Mock Event Cards ran successfully : \(cards)")
        return cards
    }
    
    
    
}
