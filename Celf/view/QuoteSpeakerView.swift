//
//  QuoteSpeakerView.swift
//  Celf
//
//  Created by pancake on 8/31/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct QuoteSpeakerView: View {
    let quote: Quote
    
    var body: some View {
        
        VStack{
            Text("\"" + quote.quote + "\"")
                .padding()
            
            Text("- " + quote.speaker)
                .padding()
        }
    }
}

struct QuoteSpeakerView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteSpeakerView(quote: Quote(speaker: "Malcolm X",quote: "Education is the passport to the Future"))
    }
}
