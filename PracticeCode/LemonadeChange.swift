//
//  LemonadeChange.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/10/9.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class LemonadeChange {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var cash:[Int:Int] = [5:0, 10:0, 20:0]
        for i in bills{
            cash[i]! += 1
            if i == 20 {
                if (cash[5]! < 3 && cash[10]! < 1) || (cash[5]! < 1 && cash[10]! > 0){
                    return false
                }
                if cash[10]! > 0{
                    cash[10]! -= 1
                    cash[5]! -= 1
                }else{
                    cash[5]! -= 3
                }
            }else if i == 10{
                if cash[5]! - 1 < 0{
                    return false
                }
                cash[5]! -= 1
            }
        }
        return true
    }
}
