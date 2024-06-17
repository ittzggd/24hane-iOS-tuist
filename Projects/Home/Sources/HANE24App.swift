//
//  HANE24App.swift
//  HANE24
//
//  Created by Katherine JANG on 2/13/23.
//

import SwiftUI

@main
struct HANE24App: App {
    @StateObject var homeVM = HomeVM()
    var hane = Hane()

    var body: some Scene {
        WindowGroup {
            HomeView(homeManager: homeVM, isNoticedFundInfo: .constant(false), isNoticedTagLatencyInfo: .constant(false))
        }
    }
}
