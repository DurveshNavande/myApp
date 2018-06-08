//
//  ViewController.swift
//  LendingRecord
//
//  Created by Durvesh Navande on 13/03/18.
//  Copyright © 2018 reloaded. All rights reserved.
//

import UIKit
import RealmSwift 

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var fetchedTrans: Results<Trans>?
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let realm = try? Realm()
        fetchedTrans = realm?.objects(Trans.self).sorted(byKeyPath: "name", ascending: true)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let count = fetchedTrans?.count{
            return count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let trans = fetchedTrans?[indexPath.row]
        
        cell.textLabel?.text = trans?.name                  // cell isnt showing anything - mc naam to likh
        return cell
    }
    
}

