//
//  HomeViewController.swift
//  FirebaseTutorial
//
//  Created by James Dacombe on 16/11/2016.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseStorage

class HomeViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
   
    @IBAction func testButton(_ sender: Any)
    {
        
       self.performSegue(withIdentifier: "test", sender: self)   }
    
    
    @IBAction func buttonClicked(_ sender: Any)
    {
                  self.performSegue(withIdentifier: "S1", sender: self)
    }
    
    
    
    
    @IBAction func buttonPressed(_ sender: Any)
    {
        
          self.performSegue(withIdentifier: "S2", sender: self)
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
      
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func logOutAction(sender: AnyObject)
    {
        if Auth.auth().currentUser != nil {
            do {
                try Auth.auth().signOut()
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUp")
                present(vc, animated: true, completion: nil)
                
            } catch let error as NSError {
                print(error.localizedDescription)
                print ("test")
                
            }
            
        }
    }
}
