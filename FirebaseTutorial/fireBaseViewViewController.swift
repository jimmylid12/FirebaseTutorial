//
//  fireBaseViewViewController.swift
//  FirebaseTutorial
//
//  Created by James Liddle on 08/10/2018.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit
import Firebase
import MobileCoreServices

class fireBaseViewViewController: UIViewController
{

    @IBOutlet weak var fieldName: UITextField!
    
    @IBOutlet weak var fieldAge: UITextField!
    
    @IBOutlet weak var fieldVenue: UITextField!
    
    @IBOutlet weak var fieldClasses: UITextField!
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    var newMedia: Bool?
    
    
    @IBOutlet weak var fieldLevel: UITextField!
    
    @IBAction func useCamera(_ sender: Any)
    {
        if UIImagePickerController.isSourceTypeAvailable(
            UIImagePickerController.SourceType.camera) {
            
            let imagePicker = UIImagePickerController()
            
            imagePicker.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
            imagePicker.sourceType =
                UIImagePickerController.SourceType.camera
            imagePicker.mediaTypes = [kUTTypeImage as String]
            imagePicker.allowsEditing = false
            
            self.present(imagePicker, animated: true,
                         completion: nil)
            newMedia = true
        }    }
    
    
    
    
    @IBAction func useCameraRoll(_ sender: Any)
    {
        if UIImagePickerController.isSourceTypeAvailable(
            UIImagePickerController.SourceType.savedPhotosAlbum) {
            let imagePicker = UIImagePickerController()
            
            imagePicker.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
            imagePicker.sourceType =
                UIImagePickerController.SourceType.photoLibrary
            imagePicker.mediaTypes = [kUTTypeImage as String]
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true,
                         completion: nil)
            newMedia = false
        }    }
    
    var ref : DatabaseReference!
    
    
    
  

    
    override func viewDidLoad()
    
    
        
        
        
    {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(fireBaseViewViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    //added the 4 of feb exit keyboard when user presses anywhere
 
        
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
