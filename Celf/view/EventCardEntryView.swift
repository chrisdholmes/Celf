//
//  EventCardEntryView.swift
//  Celf
//
//  Created by pancake on 9/4/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import SwiftUI

struct EventCardEntryView: View {
    var category: String
    
    var body: some View {
        VStack{
            VStack {
                HStack {
                    VStack{
                        Text("00/00/00")
                        Text("00:00:00 MM")
                    }
                    
                    Spacer()
                    HStack{
                        BadgeInDayView(badge: Badge(category: category))
                    }
                    
                }
                Divider()
                
                EntryJournalView(category: category)
            }
            .frame(height: 800,alignment: .top)
            .padding()
            
        }
        
        
    }
}




struct EventCardEntryView_Previews: PreviewProvider {
    static var previews: some View {
        EventCardEntryView(category: K.meditation)
    }
}

struct EntryJournalView: View {
    var category: String
   
    @State private var titleEntry = ""
    @State private var eventJournalEntry = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .leading){
                
                Text(category)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ScrollView{
                    
                    TextField("Leave your self a note...", text: $eventJournalEntry)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding()
                }.padding(1)
                    .border(Color.black)
                
            }
            
            CustomButtonView(text: "Submit") {
                
                print("Entry: " + self.eventJournalEntry)
                self.eventJournalEntry = ""
                let eventCard = EventCard(category: self.category)
                
                eventCard.entry = JournalEntry(title: self.category, bodyText: self.eventJournalEntry)
        
    
                
            }.frame(width: 300, alignment: .center)
        }
        
        
    }
}

