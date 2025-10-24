//
//  HackerNews.swift
//  swift practice
//
//  Created by mohsen tabasi on 10/23/25.
//  Copyright © 2025 mstf. All rights reserved.
//

import SwiftUI

struct HackerNews: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct HackerNews_Previews: PreviewProvider {
    static var previews: some View {
        HackerNews()
    }
}
