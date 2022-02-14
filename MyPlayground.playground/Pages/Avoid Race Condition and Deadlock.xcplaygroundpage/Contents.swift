//: [Previous](@previous)

import Foundation
import UIKit

var balance = 1200

let serialQueue = DispatchQueue(label: "Serial Queue")
struct ATM {
    let tag: String
    func withdraw(value: Int) {
        serialQueue.async {
            print("\(self.tag): checking for sufficent balance")
            if balance > value {
                print("\(self.tag): Sufficient balance, processing withdrawal")
                // sleeping for some random time, simulating a long process
                Thread.sleep(forTimeInterval: Double.random(in: 0...2))
                
                balance -= value
                print("\(self.tag): Done: \(value) has been withdrawed")
                print("\(self.tag): current balance is \(balance)")
            }
            else {
                print("\(self.tag): Can't withdraw: insufficent balance")
            }
        }
    }
}

let withdrawalQueue = DispatchQueue(label: "Withdrawal Queue")

withdrawalQueue.async {
    let firstATM = ATM(tag: "firstATM")
    firstATM.withdraw(value: 1000)
}

withdrawalQueue.async {
    let secondATM = ATM(tag: "secondATM")
    secondATM.withdraw(value: 800)
}
