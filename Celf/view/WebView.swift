//
//  WebView.swift
//  Celf
//
//  Created by pancake on 9/5/20.
//  Copyright © 2020 Christopher Holmes. All rights reserved.
//
/**
  WebView is a custom class that will be  used for displaying the user
 links to information regarding Cognitive Behavioral Therapy.
 */
import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString
        {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

