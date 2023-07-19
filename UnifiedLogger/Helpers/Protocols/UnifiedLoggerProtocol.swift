//
//  UnifiedLoggerProtocol.swift
//  UnifiedLogger
//
//  Created by Thulani Mtetwa on 2023/07/19.
//

import Foundation
import os

public protocol UnifiedLoggerProtocol: AnyObject {
    func logEvent(messageInfo: String,
                 eventType: OSLogType,
                 accessLevel: AccessLevel,
                 category:SignPostCategory)
    func createLog(category: SignPostCategory) -> UnifiedLoggerInit
}

public protocol UnifiedLoggerInit {
    var subSystem: String  { get set }
}

extension UnifiedLoggerInit{
    public var subSystem: String {
        get { return Bundle.main.bundleIdentifier ?? "Logging: \(String(describing: self))" }
        set { subSystem = newValue }
    }
}

extension OSLog: UnifiedLoggerInit {}
extension Logger: UnifiedLoggerInit {}
