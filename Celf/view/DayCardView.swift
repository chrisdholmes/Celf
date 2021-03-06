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
    
    @State private var rating: Int = 0
    var dayCard: DayCard
    
    
    var body: some View {
        
        VStack{
            HStack{
                
                VStack{
                    Text(Date.dayOfWeek)
                    Text(dayCard.date)
                }
                
                Spacer()
                //RatingView gives user option to rate
                // their day from 1 to 5 stars
                RatingView(rating: $rating)
            }
            
            Divider()
            //symbols won of the day - updated based on events
            
            ScrollView(.horizontal)
            {
                HStack{
                    //display each BadgeCard added to the
                    // DayCard object in a list.
                    ForEach(0..<dayCard.badges.count){ badge in
                        BadgeInDayView(badge: self.dayCard.badges[badge])
                    }
                    
                }
            }
            
            Divider()
            //Journal Entry
            
            NotesView(category: "", notes: dayCard.notes)
            
        }
        .padding()
        .border(Color.black)
        
        
        
    }
}


struct DayEventView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        DayCardView(dayCard: DayCard())
    }
}



/**
 Rating View is for the user to rate their day based on a 5 star rating system.
  TODO
 - test out different star colors
 - test out different icons and stuff
  
 */
struct RatingView: View {
    @Binding var rating: Int
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    var offColor = Color.gray
    var onColor = Color.yellow
    var body: some View {
        
        //number of stars
        //needs to be 5 stars total
        // some will be empty
        ForEach(1..<5 + 1) { number in
            self.image(for: number)
                .foregroundColor(number > self.rating ? self.offColor : self.onColor)
                .onTapGesture {
                    self.rating = number
            }
        }
        
    }
    
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }}
