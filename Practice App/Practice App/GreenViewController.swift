//
//  GreenViewController.swift
//  Practice App
//
//  Created by Shaurya on 16/02/22.
//

import UIKit

class GreenViewController: UIViewController {

    @IBAction func backButton(_ sender: Any){
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Green Screen"
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
