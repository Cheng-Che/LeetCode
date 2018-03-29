//
//  PowerOfThree.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/29.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation
class PowerOfThree {
    func isPowerOfThree(_ n: Int) -> Bool {
        return n>=1 && (1162261467 % n == 0) ? true : false
    }
}

