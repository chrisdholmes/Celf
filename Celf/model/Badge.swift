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

