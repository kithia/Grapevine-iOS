//
//  BookCompletionModel.swift
//  Grapevine
//
//  Created by Kĩthia Ngigĩ on 08/06/2023.
//

import Foundation
import SwiftUI

enum BookCompletionModel {
    static func percentage(from double: Double) -> String? {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .percent
        return numberFormatter.string(from: NSNumber(value: double))
    }
}
