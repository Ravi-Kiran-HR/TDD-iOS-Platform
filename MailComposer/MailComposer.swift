//
//  MailComposer.swift
//  MailComposer
//
//  Created by Ravi Kiran HR on 24/07/20.
//  Copyright © 2020 Philips. All rights reserved.
//


import Foundation

class MailComposer {
    func composeGreeting(_ firstName: String?, _ lastName: String?) ->String?{
        if let firstName = firstName, let lastName = lastName {
            return "Good to see you! Mr.\(firstName) \(lastName)"
        }
        if let firstName = firstName {
            return "Hi \(firstName)"
        }
        if let lastName = lastName {
            return "Hello, Mr.\(lastName)"
        }
        return nil
    }
}

