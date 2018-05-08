//
//  MinimumTime.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/5/7.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class MinimumTime {
    func findMinDifference(_ timePoints: [String]) -> Int {
        var res:[Int] = []
        var sortArray:[Int] = []
        sortArray = timePoints.map({timeToMinutes(time: $0)}).sorted(by:<)
        for j in 0..<sortArray.count - 1{
            res.append(resHelper(last: sortArray[j+1], this: sortArray[j]))
        }
        res.append(resHelper(last: sortArray.last!, this: sortArray.first!))
        return res.min()!
    }
    func timeToMinutes(time:String) -> Int{
        let timeArray = time.split(separator: ":")
        return Int(timeArray[0])! * 60 + Int(timeArray[1])!
    }
    func resHelper(last:Int, this:Int) -> Int{
        return abs(last - this) > 720 ? 1440 - abs(last - this) : abs(last - this)
    }
}
