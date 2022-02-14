import Foundation

let operationQueue = OperationQueue()

//To do task that is User Interactive
operationQueue.qualityOfService = .userInteractive

//To do tasks that was initiated by the user
operationQueue.qualityOfService = .userInitiated

//To do tasks that the user isn't aware of
operationQueue.qualityOfService = .utility

//To do tasks in the background
operationQueue.qualityOfService = .background
