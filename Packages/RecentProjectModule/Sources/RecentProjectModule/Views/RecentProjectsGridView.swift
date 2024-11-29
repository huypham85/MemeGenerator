//
//  RecentProjectsGridView.swift
//
//
//  Created by HuyPT3 on 29/11/2024.
//

import SwiftUI

public struct RecentProjectsGridView: View {
    let result: [RecentProjectModel]
    let onProjectTap: (RecentProjectModel) -> Void

    private let homeGridItems = [GridItem(.flexible()), GridItem(.flexible())]

    public var body: some View {
        ScrollView {
            HStack(alignment: .top) {
                LazyVGrid(columns: homeGridItems) {
                    ForEach(result) { project in
                        RecentProjectItemView(model: project)
                            .onTapGesture {
                                onProjectTap(project)
                            }
                    }
                }
                LazyVGrid(columns: homeGridItems) {
                    ForEach(result) { project in
                        RecentProjectItemView(model: project)
                            .onTapGesture {
                                onProjectTap(project)
                            }
                    }
                }
            }
        }
    }
}

#Preview {
    RecentProjectsGridView(result: []) { _ in print("Tapped on item") }
}
