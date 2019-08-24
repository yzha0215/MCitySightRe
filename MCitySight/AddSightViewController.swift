//
//  AddSightViewController.swift
//  MCitySight
//
//  Created by Yuqi Zhang on 24/8/19.
//  Copyright © 2019 Monash University. All rights reserved.
//

import UIKit

class AddSightViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var descField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addSightDone(_ sender: Any) {
        let name = nameField.text!
        if name.isEmpty {
            displayMessage(title: "Error", msg: "Location name cannot be empty.")
            return
        }
        // validaition: name exist
        let desc = descField.text!
        if desc.isEmpty {
            displayMessage(title: "Error", msg: "Description cannot be empty.")
            return
        }
        
        let newSight = Sight(name: name, desc: desc)
        // TODO: save new sight into database
        
        displayMessage(title: "Done", msg: "New sight successfully added.")
    }
    
    func displayMessage(title: String, msg: String){
        let alertController = UIAlertController(title: title, message: msg, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
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
