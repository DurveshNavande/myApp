//
//  AddVC.swift
//  LendingRecord
//
//  Created by Durvesh Navande on 13/03/18.
//  Copyright © 2018 reloaded. All rights reserved.
//

import UIKit

class AddVC: UIViewController {
    
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var givePrice: UITextField!
    @IBOutlet weak var takePrice: UITextField!
    @IBOutlet weak var giveNote: UITextField!
    @IBOutlet weak var takeNote: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func saveTapped(_ sender: Any) {
        
        var newTrans = Trans()
        
        if let price = takePrice.text{
            newTrans.price = price
        }
        print(newTrans.price)
        
    }
    
}
