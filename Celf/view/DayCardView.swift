//
//  DayEventView.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

/**
 
 The Day Event will display to the user an end of day report of the
 acitivties the performed to manage their stress in the form of badges.
 The badges are like the badges of accomplihsments in the Kindle App.
 Where each action that you perform such as meditation, journaling, talking to
 friend etc, are displayed to the user. There is a rating system for the day
 in the form of five stars. I want the stars to always show - and for the none filled
 stars to be empty. The DayEventView will exist inside of a list view in the
 HomeView. 
 
 
 
 */

import SwiftUI

struct DayCardView: View {
    
    @State private var bodyText: String?
    
    var body: some View {
        
        VStack{
            HStack{
                VStack{
                    // date
                    Text("00/00/00")
                }
                
                Spacer()
                HStack{
                    //number of stars
                    //needs to be 5 stars total
                    // some will be empty
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }
            }
            
            Divider()
            //symbols won of the day - updated based on events
            HStack{
                //journal badge
                BadgeInDayView(badgeName: "book.fill")
                // talk to a friend/family badge
                BadgeInDayView(badgeName: "person.2.fill")
                // watch inspirational video badge
                BadgeInDayView(badgeName: "play.fill")
                BadgeInDayView(badgeName: "leaf.arrow.circlepath")
                
            }
            
            Divider()
            //Journal Entry
       
            JournalEntryView(title: "Event - Title", bodyText:getBodyText())
       
        }
        .padding()
        .border(Color.black)
        
        
        
    }
}


func getBodyText() -> String
{
    let bodyText = "I made one million dollars today.\n"
    
    
    return bodyText
}

struct DayEventView_Previews: PreviewProvider {
    static var previews: some View {
        DayCardView()
    }
}



