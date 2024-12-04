//
//  RecentProjectView.swift
//
//
//  Created by HuyPT3 on 18/11/2024.
//

import SwiftUI

public struct RecentProjectView: View {
    @ObservedObject var store: RecentProjectStore
    @State private var showingOptions = false
    public init(store: RecentProjectStore) {
        self.store = store
    }
    
    // Floating button
    private var addButton: some View {
        Button(action: {
            showingOptions.toggle()
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
    }
    
    public var body: some View {
        ZStack {
            VStack(alignment: .leading, content: {
                Text("Recent Project")
                    .font(.largeTitle)
                    .bold()
                Group {
                    switch store.loadingState {
                    case .notStarted:
                        ProgressView()
                    case .loading:
                        ProgressView()
                    case .loaded(let result):
                        RecentProjectsGridView(result: result) { model in
                            print("Tapped on item: \(model.projectName)")
                        }
                    case .empty:
                        Text("No items found")
                    case .error(let message):
                        Text("Error: \(message)")
                    }
                }
            })
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    addButton
                }
            }
        }
        .task {
            //            await store.saveProject(RecentProjectModel(projectId: UUID().uuidString, projectName: "project1", projectCreatedDate: Date(), projectModifiedDate: Date(), projectImage: UIImage(named: "demo")))
            await store.fetchProjects()
        }
        .sheet(isPresented: $showingOptions) {
            VStack(alignment: .leading) {
                HStack {
                    Button(action: {
                        print("Tap on gallery")
                    }) {
                        HStack {
                            Image(systemName: "photo")
                            Text("Gallery")
                        }
                    }
                    Spacer()
                }
                .padding()
                
                HStack {
                    Button(action: {
                        print("Tap on top memes")
                    }) {
                        HStack {
                            Image(systemName: "star")
                            Text("Top Memes")
                        }
                    }
                    Spacer()
                }
                .padding()
                
                Spacer() // Ensures the content stretches to fill the height
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensures full space usage
            .background(Color.gray.opacity(0.1)) // Optional background
            .presentationDetents([.fraction(0.15)]) // Sets the sheet height to 15% of the screen
        }
    }
}

#Preview {
    RecentProjectView(store: RecentProjectStore())
}
