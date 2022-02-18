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
    
    @IBAction func presentScreenButton(_ sender: Any){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "PresentViewController") as! PresentViewController
        navigationController?.present(viewController, animated: true, completion: nil)
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
