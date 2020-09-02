//
//  QuoteManager.swift
//  Celf
//
//  Created by pancake on 8/31/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import Foundation


class QuoteManager: ObservableObject {
    @Published var quote: Quote?
    
    
    func getQuote() {
        let quotes: [Quote] = [
            Quote(speaker: "Malcolm X", quote: "Education is the passport to the future."),
            Quote(speaker:"Chadwick Boseman",
            quote: "Sometimes you need to feel the pain and sting of defeat to activate the real passion and purpose that god predestined inside of you."),
            Quote(speaker: "Justin Perry",quote: "I trust the timing of the Universe"),
            Quote(speaker: "Prince", quote:"The grind is real. There are no shortuts. But what's the alternative? Don't quit one meter before you strike gold. Keep moving forward and creating the life of your dreams.")
        ]
        
        let rand = Int.random(in: 0...quotes.count-1)
        
        quote = quotes[rand]
    
    }
    
}
