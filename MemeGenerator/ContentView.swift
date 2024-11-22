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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Image("demo")
                .resizable()
                .frame(width: 300, height: 300)
            RecentProjectView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
