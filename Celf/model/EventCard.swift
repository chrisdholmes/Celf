//
//  EventCard.swift
//  Celf
//
//  Created by pancake on 9/2/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import Foundation

class EventCard : Card {
    
    var category: String = ""
    var badge: Badge
    
    
    init(category: String)
    {
        self.category = category
        self.badge = Badge(category: category)
    
    }
    
    
}
