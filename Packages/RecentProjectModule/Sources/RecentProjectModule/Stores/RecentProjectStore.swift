//
//  RecentProjectStore.swift
//
//
//  Created by Huy Pham on 26/11/24.
//

import Combine
import CoreModule
import Foundation
import RealmSwift

public class RecentProjectStore: ObservableObject {
    @Published var loadingState: LoadingState = .notStarted
    private let persistenceService: RecentProjectPersistenceService
    
    public init(
        persistenceService: RecentProjectPersistenceService = RecentProjectPersistenceService()
    ) {
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
    func saveProject(_ object: RecentProjectModel) async {
        do {
            try await persistenceService.save(object)
            print("saved projects")
        } catch {
            loadingState = .error(message: error.localizedDescription)
        }
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
