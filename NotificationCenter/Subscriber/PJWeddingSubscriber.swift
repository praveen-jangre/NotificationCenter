//
//  PJWeddingSubscriber.swift
//  NotificationCenter
//
//  Created by AhaanaAditya on 19/09/25.
//

import Foundation

class PJWeddingSubscriber: PJObserver {
    
    func receiveNotification(event: String, data: Any?) {
        if event == wedding, let data = data as? Int {
            print("Wedding is on \(data)th")
        }
    }
    
    init(){
        PJNotificationCenter.shared.addObserver(observer: self, event: wedding)
    }
}






