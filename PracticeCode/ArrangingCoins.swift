//
//  ArrangingCoins.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/26.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class ArrangingCoins {
    func arrangeCoins(_ n: Int) -> Int {
        var unit = Int(sqrt(Double(n)))
        var target = 0
        while target <= n {
            unit += 1
            target = (1+unit)*unit/2
        }
        return unit-1
    }
}
