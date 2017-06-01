//
//  checkRecord.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/1.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation
class checkRecord {
    func checkRecord(_ s: String) -> Bool {
        let array  = s.characters.map({ String($0) })
        var aCount = 0
        var lateCount = 0
        
        for bas in array{
            switch bas {
            case "A":
                aCount += 1
                lateCount = 0
                if aCount >= 2 {
                    return false
                }
            case "L":
                lateCount += 1
                if lateCount >= 3{
                    return false
                }
            default:
                lateCount = 0
            }
        }
        return true
    }
}
