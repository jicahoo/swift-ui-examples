//
//  Bookworm1App.swift
//  Bookworm1
//
//  Created by Zhang Flash on 2021/12/23.
//

import SwiftUI

@main
struct Bookworm1App: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)

        }
    }
}
