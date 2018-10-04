//
//  HasGroupsSizeX.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/10/2.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class HasGroupsSizeX {
    func hasGroupsSizeX(_ deck: [Int]) -> Bool {
        var dict:[Int:Int] = [:]
        for i in deck{
            dict[i] = (dict[i] ?? 0) + 1
        }
        guard dict.values.contains(1) == false else { return false }
        
        let value:[Int] = Array(dict.values)
        for i in 0..<value.count-1{
            if value[i] != value[i+1] && gcd(a: value[i], b: value[i+1]) == 1{
                return false
            }
        }
        return true
    }
    
    private func gcd(a:Int,b:Int)->Int {
        if b == 0 {
            return a
        } else {
            return gcd(a: b, b: a % b)
        }
    }
}
//32
