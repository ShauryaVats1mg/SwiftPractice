import Foundation

if let url = URL(string: "https://www.google.com") {
    // Reference to Shared Session
    let session = URLSession.shared

    // Create Request
    let request = URLRequest(url: url)

    // Create Data Task
    let dataTask = session.dataTask(with: request)
}
