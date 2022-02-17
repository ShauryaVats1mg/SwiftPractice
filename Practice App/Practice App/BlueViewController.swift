//
//  BlueViewController.swift
//  Practice App
//
//  Created by Shaurya on 16/02/22.
//

import UIKit

extension Notification.Name{
    static let notificationName = Notification.Name("Notification Name")
}

class BlueViewController: UIViewController {

    @IBOutlet weak var notificationButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any){
        NotificationCenter.default.post(name: .notificationName, object: nil)
    }
    
    @objc func notificationFunc(notification: NSNotification){
        print("In notification function")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        title = "Blue Screen"
        
        NotificationCenter.default.addObserver(self, selector: #selector(notificationFunc(notification:)), name: .notificationName, object: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
