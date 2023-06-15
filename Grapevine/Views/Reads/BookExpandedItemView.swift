//
//  BookExpandedItemView.swift
//  Grapevine
//
//  Created by Kĩthia Ngigĩ on 07/06/2023.
//

import SwiftUI

struct BookExpandedItemView: View {
    var book: BookModel
    var progress : Double
    @Environment(\.colorScheme) var colorScheme
    
    func dateToString(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        return dateFormatter.string(from: date)
    }
    
    init(book: BookModel) {
        self.book = book
        progress = Double(book.pagesRead) / Double(book.pages)
    }
    
    var body: some View {
        ScrollView() {
            ZStack(alignment: .top) {
                GeometryReader { geometry in
                    Image((book.coverImage)!)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 218)
                        .clipped()
                        .offset(y: 0)
                        .colorMultiply(.gray)
                }
                
                VStack(alignment: .center) {
                    HStack(alignment: .top) {
                        Image((book.coverImage)!)
                            .resizable(resizingMode: .stretch)
                            .foregroundColor(Color("main"))
                            .padding(.vertical, 4.0)
                            .padding(.trailing, 8.0)
                            .padding(.leading, -1)
                            .frame(width: 123.3
                                   , height: 185)
                            .shadow(color: colorScheme == .light ? Color.gray : Color.black, radius: 2, x: 0, y: 2)
                        
                        VStack(alignment: .leading) {
                            HStack() {
                                HStack {
                                    Text(book.genres[0]).font(.subheadline).italic()
                                    Spacer()
                                }
                            }
                            
                            Text(book.title)
                                .font(.title2)
                                .fontWeight(.medium).lineLimit(3)
                            
                            HStack {
                                Text(book.authors[0]).font(.title3)
                            }
                            .padding(.bottom, 8.0)
                            
                            HStack {
                                Spacer()
                                Text(book.publisher).font(.caption2).italic().lineLimit(2).multilineTextAlignment(.trailing)
                            }
                        }.padding(.top, 12.0).padding(.trailing, 12.0).fontWeight(.light).fixedSize(horizontal: false, vertical: true)
                        
                    }.padding(.top, 264)
                    
                    HStack(spacing: 20) {
                        VStack {
                            Text("\(book.pages)")
                            Text("Pages").font(.caption2).fontWeight(.regular)
                        }
                        
                        VStack {
                            if let image = book.format.image {
                                Image(image)
                            } else {
                                Text("N/A")
                            }
                            Text(book.format.name).font(.caption2).fontWeight(.regular)
                        }
                        
                        VStack {
                            Text(book.language)
                            Text("Language").font(.caption2).fontWeight(.regular)
                        }
                        
                        VStack {
                            if let publishDate = book.publishDate {
                                Text(BookDateModel.fullstring(from: publishDate))
                            } else {
                                Text("N/A")
                            }
                            Text("Date of Publication").font(.caption2).fontWeight(.regular)
                        }
                    }.font(.title3).fontWeight(.medium).padding(.vertical, 24)
                    
                    HStack {
                        Text("Progress").font(.title2).fontWeight(.medium)
                        Spacer()
                        Text("\(book.pagesRead) / \(book.pages)").font(.subheadline)
                    }
                    
                    if let percentage = BookCompletionModel.percentage(from: progress) {
                        ProgressView(value: progress)
                        HStack {
                            Spacer()
                            Text(percentage).font(.caption).padding(.bottom, 24)
                        }
                        
                    } else {
                        ProgressView(value: progress).padding(.bottom, 24)
                    }
                    
                    HStack {
                        Text("Summary").font(.title2).fontWeight(.medium)
                        Spacer()
                    }
                    Text(book.summary)
                        
                }.padding(.horizontal, 38)
            }.frame(maxHeight: .infinity)
                    .offset(y: 0)
        }.navigationTitle(book.title).navigationBarTitleDisplayMode(.inline)
    }
}

struct BookExpandedItemView_Previews: PreviewProvider {
    static var book = BookModel.sampleData[0]
    static var previews: some View {
        BookExpandedItemView(book: book)
    }
}
