//
//  SignPostCategory.swift
//  UnifiedLogger
//
//  Created by Thulani Mtetwa on 2023/07/19.
//

import Foundation

public enum SignPostCategory: String {
    case app, ui, network, repository, interactor
    
    public var rawValue: String {
        switch self {
        case .app:
            return "Application"
        case .ui:
            return "User interface/view"
        case .network:
            return "Network Layer"
        case .repository:
            return "Repository Layer"
        case .interactor:
            return "Interactor Utitlity"
        }
    }
}
