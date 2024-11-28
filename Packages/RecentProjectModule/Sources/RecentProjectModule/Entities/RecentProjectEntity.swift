//
//  RecentProjectEntity.swift
//
//
//  Created by HuyPT3 on 25/11/2024.
//

import Foundation
import RealmSwift
import UIKit

public class RecentProjectEntity: Object {
    @objc dynamic var projectId: String = UUID().uuidString // Primary key
    @objc dynamic var projectName: String = ""
    @objc dynamic var projectCreatedDate: Date = Date()
    @objc dynamic var projectModifiedDate: Date = Date()
    @objc dynamic var projectImage: Data? = nil
    
    override public static func primaryKey() -> String? {
        return "projectId"
    }
}

extension RecentProjectEntity {
    func translate() -> RecentProjectModel {
        return RecentProjectModel(
            projectId: projectId,
            projectName: projectName,
            projectCreatedDate: projectCreatedDate,
            projectModifiedDate: projectModifiedDate,
            projectImage: UIImage(data: projectImage ?? Data())
        )
    }
}
