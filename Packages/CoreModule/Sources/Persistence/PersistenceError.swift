//
//  PersistenceError.swift
//
//
//  Created by Huy Pham on 16/11/24.
//

import Foundation

public enum PersistenceError: Error {
    case objectNotFound
    case saveFailed
    case deleteFailed
    
    public var errorDescription: String {
        switch self {
        case .objectNotFound: 
            return "Object not found."
        case .saveFailed: 
            return "Failed to save."
        case .deleteFailed: 
            return "Failed to delete."
        }
    }
}
