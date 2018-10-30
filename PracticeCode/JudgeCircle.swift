//
//  JudgeCircle.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/10/30.
//  Copyright © 2018 ccHsieh. All rights reserved.
//

import Foundation

class JudgeCircle {
    func judgeCircle(_ moves: String) -> Bool {
        var dict:[Character:Int] = ["U":0, "D":0, "R":0, "L":0]
        for s in moves{
            dict[s] = dict[s]! + 1
        }
        return dict["U"] == dict["D"] && dict["R"] == dict["L"]
    }
}
