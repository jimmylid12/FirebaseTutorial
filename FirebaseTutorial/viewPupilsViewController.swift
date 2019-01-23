//
//  viewPupilsViewController.swift
//  FirebaseTutorial
//
//  Created by James Liddle on 11/10/2018.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit
import Firebase

class viewPupilsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    var array = [String]()
    
    @IBOutlet weak var tableview: UITableView!
    var ref : DatabaseReference!
    var handle : DatabaseHandle!

   
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        ref = Database.database().reference()
        
        handle = ref?.child("name").observe(.childAdded, with: { (snapshot) in
            
            
            
            if let item = snapshot.value as? String
            {
                
                self.array.append(item)
                self.tableview.reloadData()
            }
            
        })
        
        self.tableview.delegate = self
        self.tableview.dataSource = self
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    
    
}

