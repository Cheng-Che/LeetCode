//
//  DailyTemperatures.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/5/7.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class DailyTemperatures {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        let max = temperatures.max()
        var res:[Int] = []
        for i in 0..<temperatures.count{
            if temperatures[i] == max || i == temperatures.count - 1{
                res.append(0)
            }else{
                for j in i+1..<temperatures.count{
                    if temperatures[j] > temperatures[i]{
                        res.append(j-i)
                        break
                    }
                }
            }
  
            if i >= res.count{
                res.append(0)
            }
     
        
        }
        return res
    }
}
