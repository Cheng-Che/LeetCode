//
//  UglyNumber.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/1.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class UglyNumber {
    func isUgly(_ num: Int) -> Bool {
        var input = num
        if input == 0 { return false }
        while input % 5 == 0 { input = input / 5 }
        while input % 3 == 0 { input = input / 3 }
        while input % 2 == 0 { input = input / 2 }
        return input == 1 ? true : false
    }
}
