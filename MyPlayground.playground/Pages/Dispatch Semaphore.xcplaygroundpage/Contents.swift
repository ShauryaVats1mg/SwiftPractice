import UIKit

let semaphore = DispatchSemaphore(value: 1)

let queue = DispatchQueue(label: "Queue", attributes: .concurrent)

for i in 0 ..< 15 {
    queue.async {
        let songNumber = i + 1
        semaphore.wait()
        print("Downloading song", songNumber)
        //Time to download a song
        sleep(2)
        print("Downloaded song", songNumber)
        semaphore.signal()
    }
}
