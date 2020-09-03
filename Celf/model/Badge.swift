//
//  Badge.swift
//  Celf
//
//  Created by pancake on 9/1/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//

import Foundation
/**
 Not sure if I need a badge class for the badges as the badgeName
 is just a string at this time. In the future I may need an actual badge class
 if the badges become more complicated.
 
 
 */

import UIKit
import SwiftUI

struct Badge: Identifiable{
    
    var id: Int {
        let date = Date()
        return Int(date.timeIntervalSince1970 * 10000000)
    }
    let category: String
    
    var colorName: Color{
        var result = Color.brandBlue
        switch category{
        case K.meditation : result = Color.meditationViolet;
        case K.journal: result = Color.journalBlue;
        case K.talk: result = Color.talkGreen;
        case K.exercise: result = Color.exerciseRed
        case K.conquer: result = Color.conquerYellow;
        default: result = Color.brandBlue
        }
        
        return result
    }
    
    var imageName: String {
        var result = ""
        switch category{
        case K.meditation: result = "tuningfork";
        case K.journal: result = "book.circle.fill";
        case K.talk: result = "person.2.fill";
        case K.exercise: result = "heart.circle.fill";
        case K.conquer: result = "bolt.circle.fill";
        default: result = "square"
        }
        
        return result
    }
    
    
}
