//
//  PowerofTwo.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/30.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation
class PowerOfTwo {
    func isPowerOfTwo(_ n: Int) -> Bool {
        return n == 1 ? true : ( n<1 || n%2 != 0) ? false : isPowerOfTwo(n/2)
    }
}
