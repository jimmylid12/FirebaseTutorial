//
//  thirdViewController.swift
//  FirebaseTutorial
//
//  Created by James Liddle on 02/10/2018.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit
import FirebaseAuth

class thirdViewController: UIViewController {

  
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    
    @IBAction func buttonclicked(sender: AnyObject)
    {
        if Auth.auth().currentUser != nil {
            do {
                try Auth.auth().signOut()
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUp")
                present(vc, animated: true, completion: nil)
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }
    
}
