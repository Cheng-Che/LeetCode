//
//  CustomSortString.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/10/30.
//  Copyright © 2018 ccHsieh. All rights reserved.
//

import Foundation

class CustomSortString {
    func customSortString(_ S: String, _ T: String) -> String {
        var dict:[Character:Int] = [:]
        var res = ""
        
        for ch in S{
            dict[ch] = 0
        }
        
        for ch in T{
            if dict[ch] != nil{
                dict[ch]! += 1
            }else{
                res.append(ch)
            }
        }
        
        for ch in S{
            for _ in 0..<dict[ch]!{
                res.append(ch)
            }
        }
    
        return res
    }
}
