//
//  ContentView.swift
//  MemeGenerator
//
//  Created by HuyPT3 on 14/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            LazyHStack(content: {
                ForEach(1...10, id: \.self) { count in
                    Image(systemName: "heart").imageScale(.medium).foregroundStyle(.tint)
                }
            })
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
