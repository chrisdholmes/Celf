//
//  QuoteSpeakerView.swift
//  Celf
//
//  Created by pancake on 8/31/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct QuoteSpeakerView: View {
    let quote: String
    let speaker: String
    
    var body: some View {
        
        VStack{
            Text("\"" + quote + "\"")
                .padding()
            
            Text("- " + speaker)
                .padding()
        }
    }
}

struct QuoteSpeakerView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteSpeakerView(quote:
            "Education is the passport to the Future",
            speaker: "Malcolm X")
    }
}
