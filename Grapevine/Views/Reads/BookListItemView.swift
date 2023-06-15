//
//  BookListItemView.swift
//  Grapevine
//
//  Created by Kĩthia Ngigĩ on 07/02/2023.
//

import SwiftUI

struct BookListItemView: View {
    let book: BookModel
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack(alignment: .center) {
            Image((book.coverImage)!)
                .resizable(resizingMode: .stretch)
                .foregroundColor(Color("main"))
                .padding(.vertical, 4.0)
                .padding(.trailing, 7.0)
                .padding(.leading, -1)
                .frame(width: 79.2
                       , height: 118.8)
                .shadow(color: colorScheme == .light ? Color.gray : Color.black, radius: 4, x: 0, y: 2)
            
            VStack(alignment: .leading) {
                HStack() {
                    Text(book.publisher)
                    Spacer()
                    if let publishDate = book.publishDate {
                            Text(BookDateModel.string(from: publishDate))
                    }
                }.lineLimit(1).font(.caption)
                    .foregroundColor(Color.gray)
                
                Text(book.title)
                    .font(.title2)
                    .fontWeight(.medium)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                
                HStack() {
                    Text(book.authors[0])
                    Spacer()
                    Text(book.genres[0])
                }.lineLimit(1).font(.subheadline)
                    .foregroundColor(Color.gray)
                
                ProgressView(value: Double(book.pagesRead) / Double(book.pages))}
        }
    }
}

struct BookListItemView_Previews: PreviewProvider {
    static var book = BookModel.sampleData[0]
    static var previews: some View {
        BookListItemView(book: book)
            .previewLayout(.fixed(width: 400, height: 65))
    }
}
