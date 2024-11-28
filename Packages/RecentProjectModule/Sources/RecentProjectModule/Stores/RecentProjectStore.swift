//
//  RecentProjectStore.swift
//
//
//  Created by Huy Pham on 26/11/24.
//

import Foundation
import Combine
import RealmSwift
import CoreModule

public class RecentProjectStore: ObservableObject {
    
    @Published var loadingState: LoadingState = .notStarted
    private let persistenceService: RecentProjectPersistenceService
    
    public init(persistenceService: RecentProjectPersistenceService) {
        self.persistenceService = persistenceService
    }
    
    enum LoadingState {
        case notStarted
        case loading
        case loaded(result: [RecentProjectModel])
        case empty
        case error(message: String)
    }
    
    @MainActor
    func fetchProjects() async {
        loadingState = .loading

        do {
            let fetchedProjects: [RecentProjectModel] = try await persistenceService.fetchAll()
            loadingState = fetchedProjects.isEmpty ? .empty : .loaded(result: fetchedProjects)
            print("Fetched projects")
        } catch {
            loadingState = .error(message: error.localizedDescription)
        }
    }
    
}
