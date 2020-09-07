//
//  CardData.swift
//  Celf
//
//  Created by pancake on 9/2/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import Foundation

class CardData {
    
    var cards:[Card] = [Card]()
    var dayCard: DayCard = DayCard()
    
    init()
    {
        print("CardData class initilalized")
        cards.append(dayCard)
    }
    
    func addCard(_ card: EventCard)
    {
        //add badge from the event card on the dayCard
        dayCard.badges.append(card.badge)
        cards.append(card)
    }
    
    func getCards() -> [Card]
    {
        return cards
    }
    
    func mockEventCards() -> [Card]
       {
           let eventCard = EventCard(category: K.meditation)


           eventCard.notes = "I have become more mindful"
           
           let e2 = EventCard(category: K.journal)
           
           e2.notes = "I journaled and now better understand myself"
           
           
           
           //day card should have all the badges
           //from the events of hte day in it
           // TODO figure out logic to grab all
           // the eventcards of the day and
           // collect all those badges and add them to
           // the day card.
           dayCard.stars = 5
           
           dayCard.notes = "BBQ"
           
           let eventCards = [
               eventCard,e2
           ]
           
           var dayCardBadges = [Badge]()
        
           for event in eventCards{
               dayCardBadges.append(event.badge)
           }
           
           dayCard.badges = dayCardBadges
           
        let cards: [Card] = [dayCard, eventCard, e2]
           print("Mock Event Cards ran successfully : \(cards)")
           return cards
       }
       
    
    
}
