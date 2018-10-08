//
//  fireBaseViewViewController.swift
//  FirebaseTutorial
//
//  Created by James Liddle on 08/10/2018.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit
import Firebase

class fireBaseViewViewController: UIViewController
{

    @IBOutlet weak var fieldName: UITextField!
    
    @IBOutlet weak var fieldAge: UITextField!
    
    
     var ref : DatabaseReference!
    
    override func viewDidLoad()
    
    
    {
        super.viewDidLoad()
        ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func upload(_ sender: Any)
    {
        let name = fieldName.text
        ref?.child("name").setValue(name)
        let age = fieldAge.text
        ref?.child("age").setValue(age)
        NSLog("Uploading...")
    }
    
    
}
