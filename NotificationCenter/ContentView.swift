//
//  ContentView.swift
//  NotificationCenter
//
//  Created by AhaanaAditya on 19/09/25.
//

import SwiftUI

struct ContentView: View {
    
    let publisher = Publisher()
    let birthdayEvent = PJBirthdaySubscriber()
    let weddingEvent = PJWeddingSubscriber()
    let workAnniversaryEvent = PJWorkAnniversarySubscriber()
    
    var body: some View {
        VStack {
            Button("Birthday") {
                publisher.postNotification(event: birthday, data: 10)
            }
            .bold()
            .padding()
            Button("Wedding Anniversary") {
                publisher.postNotification(event: wedding, data: 06)
            }
            .bold()
            .padding()
            Button("Work Anniversary") {
                publisher.postNotification(event: workAnniversary, data: 07)
            }
            .bold()
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
