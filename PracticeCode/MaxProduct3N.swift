//
//  MaxProduct3N.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/4.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class MaxProduct3N {
    func maximumProduct(_ nums: [Int]) -> Int {
        let array = nums.sorted(by: >)
        return array[0]*array[1]*array[2] > array[array.count-1]*array[array.count-2]*array[0] ? array[0]*array[1]*array[2] : array[array.count-1]*array[array.count-2]*array[0]
    }
}
