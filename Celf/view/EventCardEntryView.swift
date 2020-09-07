//
//  EventCardEntryView.swift
//  Celf
//
//  Created by pancake on 9/4/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//
/**
 
 EventCardEntryView 
 */
import SwiftUI
import Foundation
import UIKit

struct EventCardEntryView: View {
    @EnvironmentObject var cardViewManager: CardViewManager
    
    var category: String
    
    var body: some View {
        
        VStack{
            VStack {
                HStack {
                    VStack{
                        Text(Date.date_mmddyyyy)
                        Text(Date.time_hhmm)
                    }
                    
                    Spacer()
                    HStack{
                        BadgeInDayView(badge: Badge(category: category))
                    }
                    
                }
                Divider()
                
                EntryJournalView(category: category)
            }
            .frame(height: 600)
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
    @EnvironmentObject var cardViewManager: CardViewManager
    @State private var eventJournalEntry = ""
    @Environment(\.presentationMode) var presentationMode

    
    var body: some View {
        VStack {
            VStack(alignment: .leading){
                
                Text(category)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                TextEditorView(text: $eventJournalEntry)
                    .onDisappear{
                        print("on Disappear: \(self.$eventJournalEntry)")
                }
                
            }
            
            CustomButtonView(text: "Submit") {
                
                print("Entry: " + self.eventJournalEntry)
               
                let eventCard = EventCard(category: self.category)
                
                eventCard.notes = self.eventJournalEntry
                
                print("Submit Wrapped: " + self.$eventJournalEntry.wrappedValue)
                                
                print("Submit Button : ", eventCard.notes)
                self.cardViewManager.addCard(eventCard)
                 self.eventJournalEntry = ""
                self.presentationMode.wrappedValue.dismiss()

                
            }.frame(width: 300, alignment: .center)
        }
        
        
    }
}


struct TextEditorView: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeUIView(context: Context) -> UITextView {
        
        
        print("TextEditorView initialized")
        print("text value: \(text)")
        let textView = UITextView()
        textView.delegate = context.coordinator
        textView.autocapitalizationType = .sentences
        textView.isSelectable = true
        textView.isUserInteractionEnabled = true
        
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
   
    }
    
    
    func makeCoordinator() -> Coordinator {
        Coordinator($text)
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        var text: Binding<String>
        
        init(_ text: Binding<String>) {
            self.text = text
        }
        
        func textViewDidChange(_ textView: UITextView) {
            self.text.wrappedValue = textView.text
        }
    }
}
