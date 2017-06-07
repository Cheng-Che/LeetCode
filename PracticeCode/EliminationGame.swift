//
//  EliminationGame.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/6.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class EliminationGame {
    func lastRemaining(_ n: Int) -> Int {
        var amount = n
        var right = n
        var left = 1
        var fromLeft = true
        var i = 1
        while right != left{
            if amount % 2 == 1{
                right -= i
                left += i
            }else{
                if fromLeft == false{
                    right -= i
                }else{
                    left += i
                }
            }
            amount /= 2
            fromLeft = !fromLeft
            i *= 2
        }
        return left
    }
}
