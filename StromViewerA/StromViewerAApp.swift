//
//  StromViewerAApp.swift
//  StromViewerA
//
//  Created by Weerawut on 28/12/2568 BE.
//

import SwiftUI

@main
struct StromViewerAApp: App {
    var body: some Scene {
        Window("Storm Viewer", id: "main") {
            ContentView()
                .onAppear {
                    NSWindow.allowsAutomaticWindowTabbing = false
                }
        }
        .commands {
            CommandGroup(replacing: .newItem) {}
            CommandGroup(replacing: .undoRedo) {}
            CommandGroup(replacing: .pasteboard, addition: {})
        }
    }
}
