//
//  UnifiedLoggerProtocolImplementation.swift
//  UnifiedLogger
//
//  Created by Thulani Mtetwa on 2023/07/19.
//

import Foundation
import os

class UnifiedLoggerProtocolImplementation: UnifiedLoggerProtocol, UnifiedLoggerInit {
    func createLog(category: SignPostCategory) -> UnifiedLoggerInit {
        return OSLog(subsystem: subSystem, category: category.rawValue)
    }
    
    func logEvent(messageInfo: String, eventType: OSLogType, accessLevel: AccessLevel, category: SignPostCategory) {
        
        guard let log = createLog(category: category) as? OSLog else {
            os_log("Failed to create OSLog instance. [Error Message: \(messageInfo).]  [Category: \(category.rawValue)]")
            return
        }
        switch accessLevel {
        case .private:
            os_log("%{private}@", log: log, messageInfo)
        case .public:
            os_log("%{public}@", log: log, messageInfo)
        }
    }
}

class AnotherImplementation : UnifiedLoggerProtocol, UnifiedLoggerInit {
    func logEvent(messageInfo: String, eventType: OSLogType, accessLevel: AccessLevel, category: SignPostCategory) {
        let log = createLog(category: category) as! Logger
        
        switch accessLevel {
        case .private:
            log.log(level: eventType, "\(messageInfo, privacy: .private)")
        case .public:
            log.log(level: eventType, "\(messageInfo, privacy: .public)")
        }
    }
    
    func createLog(category: SignPostCategory) -> UnifiedLoggerInit {
        return Logger.init(subsystem: subSystem, category: category.rawValue)
    }
}
