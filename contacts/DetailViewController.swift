//
//  DetailViewController.swift
//  contacts
//
//  Created by Wish Carr on 11/22/16.
//  Copyright © 2016 David Shapiro. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITextFieldDelegate {

    //MARK: Properties
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    var contact: Contact?
    
    //MARK: View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //making this view controller the delegate for the text fields
        self.nameField.delegate = self
        self.phoneNumberField.delegate = self
        
        //telling DetailsViewController what to do with contact object that was selected to trigger segue 
        if let contact = self.contact {
            if let name = contact.name {
                self.nameField.text = name
            }
            if let phoneNumber = contact.phoneNumber {
                self.phoneNumberField.text = phoneNumber
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //assigning values entered into textfields to appropriate contact varible
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == self.nameField {
            self.contact?.name = textField.text
        } else if textField == self.phoneNumberField {
            self.contact?.phoneNumber = textField.text
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
