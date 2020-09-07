//
//  Badge.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import Foundation
/**
   The BadgeCard represents  a log that the user has submitted regarding their day.
    A Badge can be a Cognitive Distortion or a Healthy Activity that the user performed
     to improve their mental health. 
 
 
 */

import UIKit
import SwiftUI

class BadgeCard: Card{
    
    var category: String = ""
    
    
    init(category: String)
    {
        self.category = category
    }
    //TODO use K.constants to update the colorName instead of
    // using this right here - this is not that good.
    var colorName: Color{
        var result = Color.brandBlue
        switch category{
        case K.meditation : result = Color.meditationViolet;
        case K.journal: result = Color.journalBlue;
        case K.talk: result = Color.talkGreen;
        case K.exercise: result = Color.exerciseRed
        case K.conquer: result = Color.conquerYellow;
        default: result = Color.distortionBlack
        }
        
        return result
    }
    
    var imageName: String {
        var result = ""
        switch category{
        case K.meditation: result = "tuningfork";
        case K.journal: result = "book.circle";
        case K.talk: result = "person.circle";
        case K.exercise: result = "heart.circle";
        case K.conquer: result = "bolt.circle";
        case K.magnifyMinimize: result = "magnifyingglass.circle";
        case K.mentalFilter: result = "line.horizontal.3.decrease.circle";
        
        default: result = "d.circle"
        }
        
        return result
    }
    
    func getCategoryForUpdateView() -> String
    {
        let arr = self.category.split(separator: " ")
        
        var result = ""
        
        for i in arr {
            result += i + "\n"
        }
        
        return result.uppercased()
        
    }
    
}

