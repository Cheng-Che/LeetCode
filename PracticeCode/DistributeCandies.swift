//
//  DistributeCandies.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/4/2.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class DistributeCandies {
    func distributeCandies(_ candies: [Int]) -> Int {
        return Set(candies).count > candies.count/2 ? candies.count/2 : Set(candies).count
    }
}
