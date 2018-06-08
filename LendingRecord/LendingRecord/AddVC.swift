//
//  AddVC.swift
//  LendingRecord
//
//  Created by Durvesh Navande on 13/03/18.
//  Copyright © 2018 reloaded. All rights reserved.
//

import UIKit
import RealmSwift

class AddVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var existingTrans: Trans?
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var givePrice: UITextField!
    @IBOutlet weak var takePrice: UITextField!
    @IBOutlet weak var giveNote: UITextField!
    @IBOutlet weak var takeNote: UITextField!
    @IBOutlet weak var nameText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
   
    }
    
    
    
    @IBAction func saveTapped(_ sender: Any) {
        
        var newTrans = Trans()
        
     
            
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
           
            if let image = myImage.image {
                if let nsData = UIImageJPEGRepresentation(image, 0.1) as NSData?{
                    newTrans.imageNSData = nsData
                }
            }
            if let name = nameText.text{
                newTrans.name = name
            }
            
        let realm = try? Realm()
            try? realm?.write {
                realm?.add(newTrans)
                
                
                let alertController = UIAlertController(title: "iOScreator", message:
                    "Saved", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)

                
            }
        
         
    }
    
    
    
    @IBAction func importImage(_ sender: Any) {
        
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing = false
        
        self.present(image, animated: true){
            
                // after completing
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            myImage.image = image
        }
        
        else{
            //error message
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
}

















