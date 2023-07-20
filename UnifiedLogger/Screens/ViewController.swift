//
//  ViewController.swift
//  UnifiedLogger
//
//  Created by Thulani Mtetwa on 2023/07/19.
//

import UIKit
import OSLog


class ViewController: UIViewController {
    
    let logging: any UnifiedLoggerProtocol = UnifiedLoggerProtocolImplementation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        logging.logEven(messageInfo: "Something went wrong", eventType: .debug, accessLevel: .private, category: .app)
        logging.logEvent(messageInfo: "Winnin7890-", eventType: .info, accessLevel: .public, category: .app)
//        os_log("%{private}@", log: OSLog.init(subsystem: "thulz", category: "main"),"Something went wrong again")
    }


}

