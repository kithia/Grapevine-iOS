//
//  MainActivityView.swift
//  Grapevine
//
//  Created by Kĩthia Ngigĩ on 02/06/2023.
//

import SwiftUI

struct MainActivityView: View {
    
    var body: some View {
        TabView() {
            ReadsView(books: BookModel.sampleData)
                .tabItem {
                    Label("Reads", systemImage: "book")
                }
            ExploreView()
                .tabItem {
                    Label("Explore",
                          systemImage: "magnifyingglass")
                }
            BookshopsView()
                .tabItem {
                    Label("Bookshops",
                          systemImage: "location")
                }
            ConversationView()
                .tabItem {
                    Label("Conversation",
                        systemImage: "rectangle.3.group")
                }
        }
    }
}

struct MainActivityView_Previews: PreviewProvider {
    static var previews: some View {
        MainActivityView()
    }
}
