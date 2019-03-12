//
//  viewCoachesViewController.swift
//  FirebaseTutorial
//
//  Created by James Liddle on 12/03/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit
import Firebase

class viewCoachesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate

{
var array = [String]()
   
   
   
    
    
    
    @IBOutlet weak var tables: UITableView!
    var ref : DatabaseReference!
    var handle : DatabaseHandle!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        ref = Database.database().reference()
        
        
        
        handle = ref?.child("coachNames").observe(.childAdded, with: { (snapshot) in
            
        
            
            if let item = snapshot.value as? String
            {
                
                self.array.append(item)
                self.tables.reloadData()
            }
            
        })
        
        self.tables.delegate = self
        self.tables.dataSource = self
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tables.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    
    
}
