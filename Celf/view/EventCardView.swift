//
//  EventCardView.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct EventCardView: View {
    var body: some View {
        
        VStack{
            HStack {
                VStack{
                    Text("00/00/00")
                    Text("00:00:00 MM")
                }
                
                Spacer()
                HStack{
                    Image(systemName: "square.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding(5)
                    Text("Category")
                        .font(.system(size: 20))
                        .padding(5)
                }
                .border(Color.black)
                
            }
            
            Divider()
            
            JournalEntryView(title: "Category", bodyText: "I thought about so and so and so")
        }
        .padding()
        .border(Color.black, width: 1)
        
        
    }
}

struct EventCardView_Previews: PreviewProvider {
    static var previews: some View {
        EventCardView()
    }
}
