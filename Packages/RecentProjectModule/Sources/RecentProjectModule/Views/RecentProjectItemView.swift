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
                .frame(width: 180, height: CGFloat.random(in: 180...300), alignment: .center)
                .onTapGesture {
                    print("Tapped on item")
                }
            LazyVStack(alignment: .leading, content: {
                Text(model.projectName)
                    .font(.body)
                    .lineLimit(1)
                Text("Date")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .lineLimit(1)
            })
            .frame(width: 180)
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
