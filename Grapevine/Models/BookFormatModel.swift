//
//  BookFormatModel.swift
//  Grapevine
//
//  Created by Kĩthia Ngigĩ on 07/02/2023.
//

import Foundation
import SwiftUI

enum BookFormatModel: Int {
    case paperback;
    case hardcover;
    case leatherBound;
    case eBook;
    case audioBook;
    case cd;
    case nonTraditional;
    
    var id: Int {
        switch self {
            case .paperback: return 0
            case .hardcover: return 1
            case .leatherBound: return 2
            case .eBook: return 3
            case .audioBook: return 4
            case .cd: return 5
            case .nonTraditional: return 6
        }
    }
    
    var name: String {
        switch self {
            case .paperback: return "Paperback"
            case .hardcover: return "Hardcover"
            case .leatherBound: return "Leather-Bound"
            case .eBook: return "eBook"
            case .audioBook: return "Audiobook"
            case .cd: return "CD"
            case .nonTraditional: return "Non-Traditional"
        }
    }
    
    // TODO: Fix
    var image: String {
        switch self {
            case .paperback: return "book.closed"
            case .hardcover: return "book.closed"
            case .leatherBound: return "book.closed"
            case .eBook: return "doc.plaintext"
            case .audioBook: return "waveform"
            case .cd: return "optical.disc"
            case .nonTraditional: return "o.circle"
        }
    }
}
