//
//  DayEvent.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import Foundation

/**
  A Day Event is a Date,  a star rating, a collection of badges, and a journal entry.
   
 */

struct DayCard{
    // stars in an int based on the star rating the
    // user providers for their day (1 - 5)
    var stars: Int = 0
    var badges = [Badge]()
    var entry = JournalEntry()
    var date: String = "00/00/00"
    
}
