//
//  ReorderedPowerOf2.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/8/9.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class ReorderedPowerOf2 {
    func reorderedPowerOf2(_ N: Int) -> Bool {
        let stringN = String(N)
        let upper = Int(truncating: NSDecimalNumber(decimal: Decimal(pow(10, Double(stringN.count)))))
        let dictN:[Character:Int] = dictCul(input: stringN)
        var i = 1
        while i < upper {
            if i >= upper/10{
                if dictN == dictCul(input: "\(i)"){
                    return true
                }
            }
            i*=2
        }
        return false
    }
    
    func dictCul(input:String) -> [Character:Int]{
        var temp:[Character:Int] = [:]
        for i in input{
            temp[i] = (temp[i] ?? 0) + 1
        }
        return temp
    }
}
