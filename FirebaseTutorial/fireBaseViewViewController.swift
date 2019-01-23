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
    
    @IBOutlet weak var fieldVenue: UITextField!
    
    @IBOutlet weak var fieldClasses: UITextField!
    
    
    @IBOutlet weak var fieldLevel: UITextField!
    
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
        ref?.child("name").childByAutoId().setValue(name)
        
        let age = fieldAge.text
        ref?.child("age").childByAutoId().setValue(age)
        
      
        let Classes = fieldClasses.text
        ref?.child("Classes").childByAutoId().setValue(Classes)
        
        
       let level = fieldLevel.text
        ref?.child("level").childByAutoId().setValue(level)
        
      
        let venue = fieldVenue.text
        ref?.child("venue").childByAutoId().setValue(venue)
        
       
        NSLog("Uploading...")
    }
    
    
    
    
    
}
