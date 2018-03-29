//
//  AddDigits.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/27.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class AddDigits {
    func addDigits(_ num: Int) -> Int {
        if num == 0 { return 0 }
        return num%9 == 0 ? 9 : num % 9
    }
}
