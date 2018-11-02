//
//  ReplaceWords.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/11/2.
//  Copyright © 2018 ccHsieh. All rights reserved.
//

import Foundation

class ReplaceWords {
    func replaceWords(_ dict: [String], _ sentence: String) -> String {
        var charDict:[Character:[String]] = [:]
        let array = sentence.components(separatedBy: " ")
        var res = ""
        for s in dict{
            if charDict[s.first!] == nil{
                charDict[s.first!] = [s]
            }else{
                charDict[s.first!]?.append(s)
            }
        }
        
        for s in array{
            if charDict[s.first!] != nil{
                let chSort = charDict[s.first!]!.sorted(by: <)
                for s1 in chSort{
                    if s.hasPrefix(s1) == true{
                        res.append(s1+" ")
                        break
                    }else if s1 == chSort.last!{
                        res.append(s+" ")
                    }
                }
            }else{
                res.append(s+" ")
            }
        }
        res.removeLast()
        return res
    }
}
