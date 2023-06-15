//
//  GrapevineApp.swift
//  Grapevine
//
//  Created by Kĩthia Ngigĩ on 06/02/2023.
//

import SwiftUI

@main
struct GrapevineApp: App {
    let persistenceController = PersistenceController.shared
    @Environment(\.colorScheme) var colorScheme

    var body: some Scene {
        WindowGroup {
            MainActivityView()
                .tint(colorScheme == .light ? Color("main") : Color.white)
        }
    }
}
