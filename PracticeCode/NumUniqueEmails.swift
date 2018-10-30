//
//  NumUniqueEmails.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/10/30.
//  Copyright © 2018 ccHsieh. All rights reserved.
//

import Foundation

class NumUniqueEmails {
    func numUniqueEmails(_ emails: [String]) -> Int {
        var emailSet:Set<String> = []
        for s in emails{
            let address = s.components(separatedBy: "@")
            let name = address[0].components(separatedBy: "+").first?.filter({$0 != "."})
            emailSet.insert(name!+address.last!)
        }
        return emailSet.count
    }
}
