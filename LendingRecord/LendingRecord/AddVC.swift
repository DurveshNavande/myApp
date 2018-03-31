//
//  AddVC.swift
//  LendingRecord
//
//  Created by Durvesh Navande on 13/03/18.
//  Copyright © 2018 reloaded. All rights reserved.
//

import UIKit

class AddVC: UIViewController {
    
    var existingTrans: Trans?
    
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
        
        if existingTrans == nil{
            
            if let tPrice = takePrice.text{
                newTrans.price = tPrice
            }
            
            else if let gPrice = givePrice.text{
                newTrans.price = gPrice
            }
            
            print(newTrans.price)
            
            if let tNote = takeNote.text{
                newTrans.note = tNote
            }
            
            else if let gNote = giveNote.text{
                newTrans.note = gNote
            }
            print(newTrans.note)
           
            
        }
        
      
        
    }
    
    
    
    
    
}

















