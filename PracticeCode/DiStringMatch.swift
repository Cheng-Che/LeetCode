//
//  DiStringMatch.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/11/30.
//  Copyright © 2018 ccHsieh. All rights reserved.
//

import Foundation


class DiStringMatch {
    func diStringMatch(_ S: String) -> [Int] {
        var number:[Character:Int] = ["I": 0, "D": S.count]
        var operation:[Character :Int] = ["I": 1, "D": -1]
        var res:[Int] = []
        for ch in S{
            res.append(number[ch]!)
            number[ch]! += operation[ch]!
        }
        res.append(number["I"]!)
        return res
    }
}
