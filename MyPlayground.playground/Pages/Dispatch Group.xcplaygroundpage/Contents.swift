import UIKit

let dispatchQueue = DispatchQueue(label: "Queue", qos: .userInitiated, attributes: .concurrent)
let dispatchGroup = DispatchGroup()

dispatchGroup.notify(queue: .main){
    print("This is a dispatch group notification")
}
