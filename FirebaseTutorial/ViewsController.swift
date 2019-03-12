

import UIKit
import Firebase
import MobileCoreServices




class ViewsController: UIViewController
{
    
   
    @IBOutlet weak var coachNames: UITextField!
    
    @IBOutlet weak var coachLevel: UITextField!
    
    @IBOutlet weak var coachLocation: UITextField!
    
    @IBOutlet weak var coachAgeGroup: UITextField!
    
    var ref : DatabaseReference!
    
    
    
   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
          ref = Database.database().reference()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func upload(_ sender: Any)
    {
        let coachN = coachNames.text
        ref?.child("coachNames").childByAutoId().setValue(coachN)
        
        
        let coachL = coachLevel.text
        ref?.child("coachlevel").childByAutoId().setValue(coachL)
        
       
    
        
        NSLog("Uploading...")
        
        
        
    }
    
}


