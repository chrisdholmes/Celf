//
//  K.swift
//  Celf
//
//  Created by pancake on 8/31/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

private let today = Date()
private let formatter = DateFormatter()


extension Date{
    
    static var date_mmddyyyy: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter.string(from: today)
    }
    
    static var time_hhmm: String {
        formatter.dateFormat = "h:mm a"
        formatter.amSymbol = "AM"
        formatter.pmSymbol = "PM"
        
        return formatter.string(from: today)
    }
    
    static var dayOfWeek: String{
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        return formatter.string(from: today)
    }
}

//MARK: - Colors
extension Color {
    
    static let brandBlue = Color("brandBlue")
    static let conquerYellow = Color("conquerYellow")
    static let exerciseRed = Color("exerciseRed")
    static let inspoIndigo = Color("inspoIndigo")
    static let meditationViolet = Color("meditationViolet")
    static let journalBlue = Color("journalBlue")
    static let talkGreen = Color("talkGreen")
    static let distortionBlack = Color("distortionBlack")
}

//MARK: - Constants K
struct K{
    static let exercise = "Exercise"
    static let talk = "Talk"
    static let meditation = "Meditate"
    static let journal = "Journal"
    static let conquer = "Conquer"
    
    static let cardArray = [exercise,talk,meditation,journal,conquer]
    
    static let cardDictionary: Dictionary<String, Color> =
        [exercise: Color.exerciseRed,
         talk: Color.talkGreen,
         meditation: Color.meditationViolet,
         journal: Color.journalBlue,
         conquer: Color.conquerYellow]
    
    static let colorArray: [Color] = [
        Color.exerciseRed,
        Color.talkGreen,
        Color.journalBlue,
        Color.conquerYellow
    ]
    
    static var badgeArray: [BadgeCard] {
        
        var badges: [BadgeCard] = [BadgeCard]()
        for card in self.cardArray{
            badges.append(BadgeCard(category: card))
            
        }
        return badges
        
    }
    
    //MARK: - CognitiveDistortions
    static let allOrNothing = "All or Nothing"
    static let overGeneralization = "Over Generalization"
    static let mentalFilter = "Mental Filter"
    static let disqualifyPositive = "Disqualifying the Positive"
    static let mindReading = "Mind Reading"
    static let fortuneTellerError = "Fortune Teller Error"
    static let magnifyMinimize = "Magnification and Minimization"
    static let emotionalReasoning = "Emotional Reasoning"
    static let shouldStatements = "Should Statements"
    static let labelingMislabeling = "Labeling and Mislabeling"
    static let personlization = "Personalization"
    
    
    static let distortions = [allOrNothing, overGeneralization, mentalFilter, disqualifyPositive, mindReading , fortuneTellerError, magnifyMinimize, emotionalReasoning, shouldStatements, labelingMislabeling,personlization]
    
    static var distortionBadges: [BadgeCard] {
        var badges: [BadgeCard] = [BadgeCard]()
        for card in self.distortions{
            badges.append(BadgeCard(category: card))
            
        }
        return badges
    }
    
    
    
}
