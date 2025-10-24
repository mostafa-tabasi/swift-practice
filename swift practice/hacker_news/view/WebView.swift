//
//  WebView.swift
//  swift practice
//
//  Created by mohsen tabasi on 10/24/25.
//  Copyright © 2025 mstf. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit


struct WebView : UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
