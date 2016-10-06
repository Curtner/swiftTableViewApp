//
//  ViewController.swift
//  Swift TableView App  - assignment
//
//  Created by BHSRam2 on 10/6/16.
//  Copyright © 2016 BHSRam2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var coolTable: UITableView!
    
    var school = ["Programming 3","AP Computer","English","Religion","Study Hall","Marketing", "History","Photography"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        coolTable.dataSource = self
        coolTable.delegate = self
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return school.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        
        
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = school[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moveSegue", sender: "🙂")
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


}

