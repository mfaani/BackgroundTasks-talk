//
//  ViewController.swift
//  Background
//
//  Created by Faani Tabrizi Nezhaad, Mohammad on 2/23/22.
//

import UIKit
import OSLog

class ViewController: UIViewController {
    var taskID: UIBackgroundTaskIdentifier = .invalid
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        taskID = UIApplication.shared.beginBackgroundTask {
//            UIApplication.shared.endBackgroundTask(taskID)
//        }
        
        taskID = UIApplication.shared.beginBackgroundTask(expirationHandler: {
//            UIApplication.shared.endBackgroundTask(self.taskID)
        })
        
        
        logAndImportantTask()
    }
    
    func logAndImportantTask() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            logger.log("timer!")

        }
    }
}
