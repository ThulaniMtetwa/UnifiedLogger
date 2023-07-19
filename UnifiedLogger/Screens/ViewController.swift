//
//  ViewController.swift
//  UnifiedLogger
//
//  Created by Thulani Mtetwa on 2023/07/19.
//

import UIKit
import OSLog


class ViewController: UIViewController {
    
    let logging: any UnifiedLoggerProtocol = AnotherImplementation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        logging.logEven(messageInfo: "Something went wrong", eventType: .debug, accessLevel: .private, category: .app)
    }


}

