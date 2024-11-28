//
//  RecentProjectPersistenceService.swift
//
//
//  Created by HuyPT3 on 27/11/2024.
//

import CoreModule
import Foundation
import RealmSwift

public class RecentProjectPersistenceService {
    
    private let realm: Realm?
    
    public init(realm: Realm? = try? Realm()) {
        self.realm = realm
    }
    
    func save(_ object: RecentProjectModel) async throws {
        try await withCheckedThrowingContinuation { continuation in
            do {
                let entity = object.translate(model: object)
                try realm?.write {
                    realm?.add(entity)
                }
                continuation.resume()
            } catch {
                continuation.resume(throwing: error)
            }
        }
    }
    
    func fetchAll() async throws -> [RecentProjectModel] {
        return await withCheckedContinuation { continuation in
            // Safely fetch objects or return an empty array
            if let realm = realm {
                let objects: [RecentProjectModel] = realm.objects(RecentProjectEntity.self)
                    .map { entity -> RecentProjectModel in
                        entity.translate()
                    }
                continuation.resume(returning: Array(objects))
            } else {
                continuation.resume(returning: [RecentProjectModel]())
            }
        }
    }
    
    func delete(_ object: RecentProjectModel) async throws {
        try await withCheckedThrowingContinuation { continuation in
            do {
                let entity = object.translate(model: object)
                try realm?.write {
                    realm?.delete(entity)
                }
                continuation.resume()
            } catch {
                continuation.resume(throwing: error)
            }
        }
    }
}
