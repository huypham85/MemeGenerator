//
//  RecentProjectItemView.swift
//
//
//  Created by Huy Pham on 23/11/24.
//

import SwiftUI

struct RecentProjectItemView: View {
    var body: some View {
        LazyVStack(content: {
            Image("bird", bundle: .module)
                .resizable()
                .clipShape(
                    .rect(
                        topLeadingRadius: 20,
                        bottomLeadingRadius: 0,
                        bottomTrailingRadius: 0,
                        topTrailingRadius: 20
                    )
                )
                .frame(width: 180, height: CGFloat.random(in: 180...300), alignment: .center)
                .onTapGesture {
                    print("Tapped on item")
                }
            LazyVStack(alignment: .leading, content: {
                Text("Project Name")
                    .font(.body)
                    .lineLimit(1)
                Text("2024 Nov 23")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .lineLimit(1)
            })
            .frame(width: 180)
        })
    }
}

#Preview {
    RecentProjectItemView()
}
