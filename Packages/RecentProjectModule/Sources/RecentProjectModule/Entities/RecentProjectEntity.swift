//
//  RecentProjectEntity.swift
//
//
//  Created by HuyPT3 on 25/11/2024.
//

import Foundation
import RealmSwift

public class RecentProjectEntity: Object {
    @objc dynamic var projectId: String = UUID().uuidString // Primary key
    @objc dynamic var projectName: String = ""
    @objc dynamic var projectDate: String = ""
    @objc dynamic var projectCreatedDate: Date = Date()
    @objc dynamic var imageData: Data? = nil // Store image as binary data
    
    override public static func primaryKey() -> String? {
        return "projectId"
    }
}
