//
//  Publisher.swift
//  NotificationCenter
//
//  Created by AhaanaAditya on 19/09/25.
//

import Foundation

class Publisher {
    func postNotification(event: String, data: Any) {
        PJNotificationCenter.shared.postNotification(event: event, data: data)
    }
}
