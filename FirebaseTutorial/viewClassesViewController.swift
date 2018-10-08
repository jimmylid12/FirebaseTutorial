//
//  viewClassesViewController.swift
//  FirebaseTutorial
//
//  Created by James Liddle on 04/10/2018.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit
import Firebase

class viewClassesViewController: UIViewController {

  
  
    
    @IBOutlet weak var field_name: UITextField!
    
    @IBOutlet weak var field_age: UITextField!
    var ref : DatabaseReference!
    
 
    override func viewDidLoad()
    {
        super.viewDidLoad()

        ref = Database.database().reference()
    }
    

    @IBAction func sendtofirebase(_ sender: Any)
    {
        let name = field_name.text
        ref?.child("name").setValue(name)
        let age = field_age.text
        ref?.child("age").setValue(age)
        NSLog("Uploading...")
    }
    
    // @IBAction func button2(_ sender: Any)
    // {
    
    
    
    //     self.performSegue(withIdentifier: "S4", sender: self)
    //  }
    
    
    
}
