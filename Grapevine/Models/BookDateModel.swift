//
//  BookDateModel.swift
//  Grapevine
//
//  Created by Kĩthia Ngigĩ on 07/06/2023.
//

import Foundation

enum BookDateModel {
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM yyyy"// Specify your desired date format
        return formatter
    }()
    
    static let fullDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM. yyyy" // Specify your desired date format
        return formatter
    }()
    
    static func createDate(year: Int, month: Int, day: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        
        let calendar = Calendar.current
        return calendar.date(from: dateComponents)!
    }
    
    static func date(from string: String) -> Date? {
        return dateFormatter.date(from: string)
    }
    
    static func string(from date: Date) -> String {
        return dateFormatter.string(from: date)
    }
    
    static func fullstring(from date: Date) -> String {
        return fullDateFormatter.string(from: date)
    }
}
