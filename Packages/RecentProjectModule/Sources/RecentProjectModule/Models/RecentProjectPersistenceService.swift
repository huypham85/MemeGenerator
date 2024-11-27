//
//  RecentProjectPersistenceService.swift
//
//
//  Created by HuyPT3 on 27/11/2024.
//

import Foundation
import RealmSwift
import CoreModule

final class RecentProjectPersistenceService: PersistenceServiceProtocol {
    typealias ObjectType = RecentProjectEntity
        
    func save(_ object: RecentProjectEntity) async throws {
        let realm = try Realm()
        try realm.write {
            realm.add(object)
        }
    }
    
    func fetchAll() async throws -> [RecentProjectEntity] {
        let realm = try Realm()
        return Array(realm.objects(RecentProjectEntity.self))
    }
    
    func delete(_ object: RecentProjectEntity) async throws {
        let realm = try Realm()
        try realm.write {
            realm.delete(object)
        }
    }
}
