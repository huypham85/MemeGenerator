//
//  RecentProjectItemView.swift
//
//
//  Created by Huy Pham on 23/11/24.
//

import SwiftUI
import CoreModule

struct RecentProjectItemView: View {
    
    var model: RecentProjectModel
    private let itemWidth = (UIScreen.main.bounds.width / 2) - 20
    
    var body: some View {
        LazyVStack(content: {
            Image(uiImage: model.projectImage ?? UIImage())
                .resizable()
                .clipShape(
                    .rect(
                        topLeadingRadius: 20,
                        bottomLeadingRadius: 0,
                        bottomTrailingRadius: 0,
                        topTrailingRadius: 20
                    )
                )
                .frame(
                    width: itemWidth,
                    height: min(model.projectImage?.size.height ?? 300, 300),
                    alignment: .center
                )
                .onTapGesture {
                    print("Tapped on item")
                }
            LazyVStack(alignment: .leading, content: {
                Text(model.projectName)
                    .font(.body)
                    .lineLimit(1)
                Text(model.projectModifiedDate.toShortDateString())
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .lineLimit(1)
            })
            .frame(width: itemWidth)
        })
    }
}

#Preview {
    RecentProjectItemView(
        model: RecentProjectModel(
            projectId: "1",
            projectName: "",
            projectCreatedDate: Date(),
            projectModifiedDate: Date(),
            projectImage: nil
        )
    )
}
