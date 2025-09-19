//
//  PJObserver.swift
//  NotificationCenter
//
//  Created by AhaanaAditya on 19/09/25.
//

import Foundation


//Interface declaration to receive notification
protocol PJObserver: AnyObject {
    func receiveNotification(event: String, data: Any?)
}

//Blueprint to add, remove, and post message using notification
protocol PJObservable {
    func addObserver(observer: PJObserver, event: String)
    func removeObserver(observer: PJObserver, event: String)
    func postNotification(event: String, data: Any?)
}
