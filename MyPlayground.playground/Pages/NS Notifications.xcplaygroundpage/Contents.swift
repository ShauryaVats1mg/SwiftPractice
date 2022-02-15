import Foundation

func postNotification(notification: Notification) -> Void {
    NotificationCenter.default.post(notification)
}

let notificationName = Notification.Name(rawValue: "Notification")

let notification = Notification.init(name: notificationName)

NotificationCenter.default.addObserver(forName: notificationName, object: nil, queue: nil, using: postNotification)
