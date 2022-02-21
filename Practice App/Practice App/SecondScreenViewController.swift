//
//  SecondScreenViewController.swift
//  Practice App
//
//  Created by Shaurya on 18/02/22.
//

import UIKit

protocol Delegate: Any {
    func sendTextFieldDetails(_ text: String)
}

class SecondScreenViewController: UIViewController {
    
    var del: Delegate?
    @IBOutlet var textField: UITextField!
    
    @IBAction func backbutton() {
        del?.sendTextFieldDetails(textField.text ?? "")
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        title = "Second Screen"
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
