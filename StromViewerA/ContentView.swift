//
//  ContentView.swift
//  StromViewerA
//
//  Created by Weerawut on 28/12/2568 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedImage: Int?
    
    var body: some View {
        NavigationSplitView {
            List(0..<10, selection: $selectedImage) { i in
                Text("Storm: \(i+1)")
            }
        } detail: {
            Group {
                if let selectedImage {
                    Image("\(selectedImage)")
                        .resizable()
                        .scaledToFill()
                } else {
                    Text("No Selected Image")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle("Storms")
        }
        .frame(minWidth: 480, minHeight: 320)
    }
}

#Preview {
    ContentView()
}
