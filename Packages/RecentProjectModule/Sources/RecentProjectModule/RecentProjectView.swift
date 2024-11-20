//
//  RecentProjectView.swift
//
//
//  Created by HuyPT3 on 18/11/2024.
//

import SwiftUI

struct RecentProjectView: View {
    private var imageList: some View {
        ForEach(0..<50, id: \.self) { _ in
            Rectangle()
                .fill(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 180, height: CGFloat.random(in: 180...300), alignment: .center)
        }
    }
    
    
    private var homeGridItems: [GridItem] = [
        .init(.fixed(150))
    ]
    
    var body: some View {
//        Image("demo")
//            .resizable()
//            .frame(width: 300, height: 300)

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
    }
}

#Preview {
    RecentProjectView()
}
