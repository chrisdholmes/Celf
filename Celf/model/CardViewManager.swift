//
//  CardViewManager.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//
/**
 
 The CardView Manager is the class that is sitting between the View and the Model.
 It's pulling data from the model and publishing it to the view.
 TODO
 - crud operations
 */
import Foundation

class CardViewManager: ObservableObject{
    
    @Published var cards = [Card]()
    
    
    private var cardData: CardData
    
    init()
    {
        cardData = CardData()
    }
    
    func fetchData()
    {
        DispatchQueue.main.async {
            self.cards = self.cardData.getCards()
        }
    }
    
    func addCard(_ card: BadgeCard)
    {
        cardData.addCard(card)
    }
    
    func mockData()
    {
        DispatchQueue.main.async {
            self.cards = self.cardData.mockCards()
        }
    }
    
    
    
}
