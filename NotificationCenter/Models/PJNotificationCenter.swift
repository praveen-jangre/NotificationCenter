//
//  PJNotificationCenter.swift
//  NotificationCenter
//
//  Created by AhaanaAditya on 19/09/25.
//

import Foundation

final class PJNotificationCenter: PJObservable {
    static let shared = PJNotificationCenter() //Singleton implementation to access Notification Center similar to NSNotification Center
    
    private init () {} //Private init to make sure another instance isn't get created.
    
    private lazy var observers: [String: [PJObserver]] = .init()
    
    func addObserver(observer: PJObserver, event: String) {
        guard !(observers[event]?.contains(where: { $0 === observer }) ?? false) else {
            return
        }
        if observers[event] != nil {
            observers[event]?.append(observer)
            return
        }
        observers[event] = [observer]
    }
    
    func removeObserver(observer: PJObserver, event: String) {
        observers[event]?.removeAll(where: { $0 === observer })
    }
    
    func postNotification(event: String, data: Any?) {
        guard let observers = observers[event] else { return }
        
        for observer in observers {
            observer.receiveNotification(event: event, data: data)
        }
    }
}
