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
    @Published var eventCardNotes: String?
    
    private var cardData: CardData
    
    init()
    {
        cardData = CardData()
    }
    
    func fetchData()
    {
        DispatchQueue.main.async {
            self.eventCards = self.cardData.getCards()
        }
    }
    
    func addCard(_ card: EventCard)
    {
        cardData.addCard(card)
    }
    
    func mockData() -> [Card]
    {
        return cardData.mockEventCards()
    }
    
    func updateEventCardNotes(notes: String)
    {
            self.eventCardNotes = notes
    }
    
    
}
