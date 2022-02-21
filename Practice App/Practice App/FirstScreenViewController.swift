//
//  FirstScreenViewController.swift
//  Practice App
//
//  Created by Shaurya on 18/02/22.
//

import UIKit

class FirstScreenViewController: UIViewController, Delegate {
    
    @IBOutlet var label: UILabel!
    
    @IBAction func presentScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondScreenViewController") as! SecondScreenViewController
        vc.del = self
        present(vc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        title = "First Screen"
    }
    
    func sendTextFieldDetails(_ text: String) {
        label.text = text
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
