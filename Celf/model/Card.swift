//
//  Card.swift
//  Celf
//
//  Created by pancake on 9/2/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import Foundation

class Card: Identifiable{
    
    private let today = Date()
    private let formatter = DateFormatter()
    
    init() {
        print("New Card Initialized")
    }
    
    var id: Int {
        return Int(today.timeIntervalSince1970 * 10000000)
    }
    var date: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter.string(from: today)
    }
    var time: String{
        formatter.dateFormat = "h:mm a"
        formatter.amSymbol = "AM"
        formatter.pmSymbol = "PM"
        
        return formatter.string(from: today)
    }
    var notes: String = ""
    
    
}
