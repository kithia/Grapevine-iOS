//
//  ReadsListView.swift
//  Grapevine
//
//  Created by Kĩthia Ngigĩ on 07/02/2023.
//

import SwiftUI

struct ReadsView: View {
    let books: [BookModel]
    @State private var searchText = ""
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(books) { book in
                        NavigationLink(destination: BookExpandedItemView(book: book)) {
                            BookListItemView(book: book)
                                .padding(.vertical, 8)
                        }
                    }
                }.toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            // Perform action
                        }) { NavigationLink(destination: AddBookItemView()) {
                            Image(systemName: "person.crop.circle")
                        }
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            // Perform action
                        }) {
                            Image(systemName: "gearshape")
                        }
                    }
                }.navigationBarTitle("Reads")
                    .navigationBarTitleDisplayMode(.inline)
            }
            
            GeometryReader { geometry in
                Button(action: {
                    // Handle button tap
                }) {
                    Image(systemName: "plus")
                        .font(.system(size: 20))
                        .frame(width: 26, height: 26)
                        .padding()
                        .foregroundColor(colorScheme == .light ? Color("main") : Color.white)
                        .background(colorScheme == .light ? Color.white : Color("main"))
                        .clipShape(Circle())
                        .shadow(color: colorScheme == .light ? Color.gray : Color.black, radius: 2, x: 2, y: 2)
                }.offset(x: geometry.size.width - 80, y: geometry.size.height - 80)
            }
        }
    }
}

struct ReadsListView_Previews: PreviewProvider {
    static var previews: some View {
        ReadsView(books: BookModel.sampleData)
    }
}
