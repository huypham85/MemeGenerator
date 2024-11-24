//
//  RecentProjectView.swift
//
//
//  Created by HuyPT3 on 18/11/2024.
//

import SwiftUI

public struct RecentProjectView: View {
    public init() {}
    private var imageList: some View {
        ForEach(0..<20, id: \.self) { item in
            RecentProjectItemView()
                .onTapGesture {
                    handleTap(item: item)
                }
        }
    }
    
    private func handleTap(item: Int) {
        print("Tapped on item \(item)")
        // Perform additional actions as needed
    }
    
    private var homeGridItems: [GridItem] = [
        .init(.flexible())
    ]
    
    public var body: some View {
        ZStack {
            VStack(alignment: .leading, content: {
                Text("Recent Project")
                    .font(.largeTitle)
                    .bold()
                ScrollView {
                    HStack(alignment: .top) {
                        LazyVGrid(columns: homeGridItems) {
                            imageList
                        }
                        LazyVGrid(columns: homeGridItems) {
                            imageList
                        }
                    }
                }
            })
            .padding(.init(top: 8, leading: 8, bottom: 0, trailing: 8))
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        print("Circular button tapped!")
                    }) {
                        Text("+")
                            .font(.system(size: 30, weight: .bold))
                            .foregroundColor(.white)
                            .frame(width: 60, height: 60)
                            .background(Color.blue)
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    }
                .padding(20)
                }
            }
        }
        
    }
}

#Preview {
    RecentProjectView()
}
