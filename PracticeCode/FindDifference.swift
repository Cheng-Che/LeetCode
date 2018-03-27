//
//  FindDifference.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/26.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class FindDifference {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var a:UInt32 = 0
        var b:UInt32 = 0
        for i in s{
            a += (i.unicodeScalars.first!.value)
        }
        for j in t{
            b += (j.unicodeScalars.first!.value)
        }
        return Character(UnicodeScalar(b-a)!)
    }
}

/* time limit exceeded
for i in 0..<s.sorted().count{
    if t.sorted()[i] != s.sorted()[i]{
        return t.sorted()[i]
    }
}
return t.sorted().last!
 */
