//
//  Contact.swift
//  contacts
//
//  Created by Wish Carr on 11/22/16.
//  Copyright © 2016 David Shapiro. All rights reserved.
//

import UIKit

class Contact: NSObject {

    var name: String?
    var phoneNumber: String?
    
    init (name: String? = nil, phoneNumber: String? = nil) {
        self.name=name
        self.phoneNumber = phoneNumber
        super.init()
    }
}
