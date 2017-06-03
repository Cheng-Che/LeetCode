//
//  SingleNum3.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/3.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class SingleNum3 {
    func singleNumber(_ nums: [Int]) -> [Int] {
        var sorted = nums.sorted(by: <)
        var i = 0
        var j = 0

        while i+2 < nums.count{
            if i == 0 && sorted[i] != sorted[i+1]{  //左邊界
                sorted[j] = sorted[i]
                j+=1
            }else if i+2 == nums.count-1 && sorted[i+1] != sorted[i+2]{  //右邊界
                sorted[j] = sorted[i+2]
                j+=1
            }
            if sorted[i] != sorted[i+1] && sorted[i+1] != sorted[i+2]{
                sorted[j] = sorted[i+1]
                j+=1
            }
            i+=1
        }
        return [sorted[0], sorted[1]]
    }
}
