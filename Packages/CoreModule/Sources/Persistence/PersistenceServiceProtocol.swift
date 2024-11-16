//
//  PersistenceServiceProtocol.swift
//
//
//  Created by Huy Pham on 16/11/24.
//

import Foundation

public protocol PersistenceServiceProtocol {
    associatedtype ObjectType

    func save(_ object: ObjectType) async throws
    func fetchAll() async throws -> [ObjectType]
    func delete(_ object: ObjectType) async throws
}
