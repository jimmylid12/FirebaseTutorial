//
//  testing.swift
//  FirebaseTutorial
//
//  Created by James Liddle on 27/02/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit
import Firebase
import MobileCoreServices

class testing: UIViewController
{

    @IBOutlet weak var coachName: UITextField!
    
    @IBOutlet weak var coachLevel: UITextField!
    
   
    @IBOutlet weak var coachLocation: UITextField!
    @IBOutlet weak var coachAgeGroup: UITextField!
    
      var ref : DatabaseReference!
    override func viewDidLoad()
    {
        ref = Database.database().reference()
        super.viewDidLoad()

        
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
 
    @IBAction func uploaded(_ sender: Any)
    {
        
        let coachNames = coachName.text
        ref?.child("coachName").childByAutoId().setValue(coachNames)
        
        
        let coachLevels = coachLevel.text
        ref?.child("coachLevel").childByAutoId().setValue(coachLevels)
        
        
        let coachLo = coachLocation.text
        ref?.child("coachLocation").childByAutoId().setValue(coachLo)
        
        let coachAgeG = coachAgeGroup.text
        ref?.child("coachAgeGroup").childByAutoId().setValue(coachAgeG)
        
        NSLog("Uploading...")
        
        
        
    }
    
}
