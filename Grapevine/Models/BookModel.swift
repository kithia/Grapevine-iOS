//
//  BookModel.swift
//  Grapevine
//
//  Created by Kĩthia Ngigĩ on 07/02/2023.
//

import Foundation

struct BookModel: Identifiable {
    let id: UUID
    var ISBN: String
    var coverImage: String?
    var publisher: String
    var publishDate: Date?
    var title: String
    var authors: [String]
    var genres: [String]
    var summary: String
    var language: String
    var format: BookFormatModel
    var pages: Int
    var pagesRead: Int
    
    init(id: UUID = UUID(), ISBN: String, coverImage: String?, publisher: String, publishDate: Date?, title: String, authors: [String], genres: [String], summary: String, language: String, format: BookFormatModel, pages: Int, pagesRead: Int) {
        self.id = id
        self.ISBN = ISBN
        self.coverImage = coverImage
        self.publisher = publisher
        self.publishDate = publishDate
        self.title = title
        self.authors = authors
        self.genres = genres
        self.summary = summary
        self.language = language
        self.format = format
        self.pages = pages
        self.pagesRead = pagesRead
    }
}

extension BookModel {
    static let sampleData: [BookModel] = [
        BookModel(ISBN: "9780091906818", coverImage: "bookcover_9780091906818", publisher: "Vermilion", publishDate: BookDateModel.createDate(year: 2006, month: 4, day: 6), title: "How to Win Friends and Influence People", authors: ["Dale Carnegie"], genres: ["Self-Help"], summary: """
    Millions of people around the world have improved their lives based on the teachings of Dale Carnegie. In How to Win Friends and Influence People, he offers practical advice and techniques, in his exuberant and conversational style, for how to get out of a mental rut and make life more rewarding.

    His advice has stood the test of time and will teach you how to:
    - make friends quickly and easily
    - increase your popularity
    - persuade people to follow your way of thinking
    - enable you to win new clients and customers
    - become a better speaker
    - boost enthusiasm among your colleagues

    This classic book will turn your relationships around and improve your interactions with everyone in your life.
""", language: "English", format: .paperback, pages: 304, pagesRead: 304),
        BookModel(ISBN: "9781508435303", coverImage: "bookcover_9781508435303", publisher: "CreateSpace Independent Publishing Platform", publishDate: BookDateModel.createDate(year: 2013, month: 12, day: 23), title: "Stephen Curry: The Inspirational Story of Basketball Superstar Stephen Curry", authors: ["Bill Redban"], genres: ["Biography"], summary: """
    Discover The Inspirational Story of Basketball Superstar Stephen Curry! Read on your PC, Mac, smart phone, tablet or Kindle device! You're about to discover the incredibly inspirational story of basketball superstar Stephen Curry. If you're reading this then you must be a Stephen Curry fan, like so many others. As a fan, you must wonder how this man is so talented and want to know more about him. Stephen Curry is considered as one of the greatest basketball players in the world and it's been an honor to be able to watch him play throughout his career. This book will reveal to you much about Stephen Curry's story and the many accomplishments throughout his career.

    Here Is A Preview Of What You'll Learn...
        • Youth and Family Life
        • High School and College Career
        • Professional Career and Personal Life
        • Legacy, Charitable Acts and much more!
""", language: "English", format: .paperback, pages: 60, pagesRead: 60),
        BookModel(ISBN: "9781451639612", coverImage: "bookcover_9781451639612", publisher: "Simon & Schuster", publishDate: BookDateModel.createDate(year: 2013, month: 11, day: 1), title: "The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change", authors: ["Stephen R. Covey"], genres: ["Self-Help"], summary: "One of the most inspiring and impactful books ever written, The 7 Habits of Highly Effective People has captivated readers for 25 years. It has transformed the lives of presidents and CEOs, educators and parents--in short, millions of people of all ages and occupations across the world. This twenty-fifth anniversary edition of Stephen Covey's cherished classic commemorates his timeless wisdom, and encourages us to live a life of great and enduring purpose.", language: "English", format: .paperback, pages: 391, pagesRead: 158)]
}
