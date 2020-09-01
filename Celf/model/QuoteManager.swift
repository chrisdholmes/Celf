//
//  QuoteManager.swift
//  Celf
//
//  Created by pancake on 8/31/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import Foundation


class QuoteManager {
    var quote: Quote? {
        let rand = Int.random(in:0...2)
        
        let quotes = [
            Quote(speaker: "Malcolm X", quote: "Education is the passport to the future."),
            Quote(speaker:"Chadwick Boseman",
            quote: "Sometimes you need to feel the pain and sting of defeat to activate the real passion and purpose that god predestined inside of you."),
            Quote(speaker: "Justin Perry",quote: "I trust the timing of the Universe")
        ]
        
        return quotes[rand]
    }
    
    
    func getQuote() -> Quote?{
        return quote
    }
    
}
