//
//  MaxDistToClosest.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/7/2.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation
class MaxDistToClosest {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        var res = 0
        var location:[Int] = []
        for i in 0..<seats.count{
            if seats[i] == 1{
                if location.count == 0{
                    res = i
                }
                location.append(i)
                if location.count == 2{
                    if res < Int((location[1] - location[0])/2){
                        res = Int((location[1] - location[0])/2)
                    }
                    location.removeFirst()
                }
            }
        }
        return res > (seats.count - 1 - location[0]) ? res : (seats.count - 1 - location[0])
    }
}
