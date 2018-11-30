//
//  ReorderLogFiles.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/11/15.
//  Copyright © 2018 ccHsieh. All rights reserved.
//

import Foundation

class ReorderLogFiles {
    func reorderLogFiles(_ logs: [String]) -> [String] {
        var suffix:[String] = []
        var letters:[String] = []
        var numbers:[String] = []
        
        for log in logs{
            var temp = log.components(separatedBy: " ")
            if Int(String(temp[1].first!)) == nil{ // letters
                temp.remove(at: 0)
                suffix.append(temp.joined(separator: " "))
                letters.append(log)
            }else{
                numbers.append(log)
            }
        }
        letters = suffix.enumerated().sorted(by: {$0.element < $1.element}).map({$0.offset}).map({letters[$0]})
        return letters + numbers
    }
}
