//
//  EscapeGhosts.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/6/6.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation
class EscapeGhosts {
    func escapeGhosts(_ ghosts: [[Int]], _ target: [Int]) -> Bool {
        let myDistance = abs(target[0])+abs(target[1])
        for array in ghosts{
            if abs(array[0]-target[0]) + abs(array[1]-target[1]) > myDistance{
                return false
            }
        }
        return true
    }
}
