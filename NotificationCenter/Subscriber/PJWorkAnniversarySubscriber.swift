//
//  PJWorkAnniversarySubscriber.swift
//  NotificationCenter
//
//  Created by AhaanaAditya on 19/09/25.
//

import Foundation

class PJWorkAnniversarySubscriber: PJObserver {
    
    func receiveNotification(event: String, data: Any?) {
        if event == workAnniversary, let data = data as? Int {
            print("Work Anniversary is on \(data)th")
        }
    }
    
    init() {
        PJNotificationCenter.shared.addObserver(observer: self, event: workAnniversary)
    }
}
