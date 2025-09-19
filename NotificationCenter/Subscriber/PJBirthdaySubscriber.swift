//
//  PJBirthdaySubscriber.swift
//  NotificationCenter
//
//  Created by AhaanaAditya on 19/09/25.
//

import Foundation

class PJBirthdaySubscriber: PJObserver {
    
    func receiveNotification(event: String, data: Any?) {
        if event == birthday, let data = data as? Int {
            print("Birthday is on \(data)th")
        }
    }
    
    init() {
        PJNotificationCenter.shared.addObserver(observer: self, event: birthday)
    }
}

