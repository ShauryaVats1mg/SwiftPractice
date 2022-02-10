import Foundation

//Gets the Operation Queue on the main thread
var mainOperation: OperationQueue = OperationQueue.main
print(mainOperation.name!)
print(mainOperation.progress)
print(mainOperation.isSuspended)
