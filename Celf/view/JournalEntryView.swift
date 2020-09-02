//
//  JournalEntryView.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct JournalEntryView: View {
    var title: String
    var bodyText: String
    var body: some View {
        
       
            VStack(alignment: .leading){
                Text(title)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)
                
                
                Text(bodyText)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            }.frame(minHeight: 200, maxHeight: 300)
    
    }
    
}


struct JournalEntryView_Previews: PreviewProvider {
    static var previews: some View {
        JournalEntryView(title: "Event - Title", bodyText: "I made a million dollar today baby.")
    }
}
