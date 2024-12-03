//
//  ContentView.swift
//  MemeGenerator
//
//  Created by HuyPT3 on 14/11/2024.
//

import SwiftUI
import RecentProjectModule

struct ContentView: View {
    var body: some View {
        VStack {
            RecentProjectView(store: RecentProjectStore())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
