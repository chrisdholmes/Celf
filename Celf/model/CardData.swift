//
//  CardData.swift
//  Celf
//
//  Created by pancake on 9/2/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//
/**
 CardData - contains a DayCard and an array of cards. The first item in the cards array
 is the DayCard and it is displayed at the top of hte HomeView. Card Data will eventually
 be responsible for grabbing data either locally on Realm or via FireBase in the cloud.
 TODO
 - CRUD OPERATIONS
 */
import Foundation

class CardData {
    
    var cards:[Card] = [Card]()
    var dayCard: DayCard = DayCard()
    
    init()
    {
        print("CardData class initilalized")
        cards.append(dayCard)
    }
    
    func addCard(_ card: BadgeCard)
    {
        //add badge from the event card on the dayCard
        dayCard.badges.append(card)
        cards.append(card)
    }
    
    func getCards() -> [Card]
    {
        return cards
    }
    
    func mockCards() -> [Card]
    {
        let badgeCard = BadgeCard(category: K.meditation)
        
        
        badgeCard.notes = "I have become more mindful"
        
        let e2 = BadgeCard(category: K.journal)
        
        e2.notes = "I journaled and now better understand myself"
        
        
        
        //day card should have all the badges
        //from the events of hte day in it
        // TODO figure out logic to grab all
        // the eventcards of the day and
        // collect all those badges and add them to
        // the day card.
        dayCard.stars = 5
        
        dayCard.notes = "BBQ"
        
        let badgeCards = [
            badgeCard,e2
        ]
        
        var dayCardBadges = [BadgeCard]()
        
        for badge in badgeCards{
            dayCardBadges.append(badge)
        }
        
        dayCard.badges = dayCardBadges
        
        let cards: [Card] = [dayCard, badgeCard, e2]
        print("Mock Event Cards ran successfully : \(cards)")
        return cards
    }
    
    
    
}
