//
//  RecentProjectModel.swift
//
//
//  Created by HuyPT3 on 28/11/2024.
//

import Foundation
import UIKit

public struct RecentProjectModel {
    let projectId: String
    let projectName: String
    let projectCreatedDate: Date
    let projectModifiedDate: Date
    let projectImage: UIImage?
    
    public func translate(model: RecentProjectModel) -> RecentProjectEntity {
        let entity = RecentProjectEntity()
        entity.projectId = projectId
        entity.projectName = projectName
        entity.projectCreatedDate = projectCreatedDate
        entity.projectModifiedDate = projectModifiedDate
        entity.projectImage = projectImage?.jpegData(compressionQuality: 1.0)
        return entity
    }
}
