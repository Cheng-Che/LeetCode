//
//  FindPoisonedDuration.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/20.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class FindPoisonedDuration {
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
        guard timeSeries.count > 0 else { return 0 }
        var result = 0
        for i in 0..<timeSeries.count-1{
            result += timeSeries[i+1] - timeSeries[i] <= duration ? (timeSeries[i+1] - timeSeries[i]) : duration
        }
        return result + duration  // Last attack
    }
}
