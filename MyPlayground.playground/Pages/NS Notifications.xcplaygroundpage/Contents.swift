import Foundation

let notificationName = Notification.Name(rawValue: "Notification")

let notification = Notification.init(name: notificationName)

NotificationCenter.default.post(notification)
