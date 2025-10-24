//
//  SwiftUIView.swift
//  swift practice
//
//  Created by mohsen tabasi on 10/24/25.
//  Copyright © 2025 mstf. All rights reserved.
//

import SwiftUI

struct NewsDetails: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct NewsDetails_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetails(url: "https://www.google.com")
    }
}
