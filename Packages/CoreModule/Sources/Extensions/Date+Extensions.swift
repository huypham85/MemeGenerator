//
//  File.swift
//  
//
//  Created by HuyPT3 on 28/11/2024.
//

import Foundation

public extension Date {
    func toShortDateString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM yyyy"
        return formatter.string(from: self)
    }
}

