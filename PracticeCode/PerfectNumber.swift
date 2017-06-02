//
//  PerfectNumber.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/2.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation
class PerfectNum {
    func checkPerfectNumber(_ num: Int) -> Bool {
        
        if num <= 1 { return false }
        var factor = 1
        var i = 2
        while i <= num/i{
            if num % i == 0{
                factor = factor + i + num/i
            }
            i += 1
        }
        return factor == num ? true : false
    }
    
}
