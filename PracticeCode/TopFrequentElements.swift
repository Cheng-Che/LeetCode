//
//  TopFrequentElements.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/28.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class TopKFrequent {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var temp:[Int:Int] = [:]
        var res:[Int] = []
        var count = 0
        for i in nums{
            temp[i] = (temp[i] ?? 0) + 1
        }
        for (key,_) in (Array(temp).sorted {$0.1 > $1.1}) {
            if count < k{
                res.append(key)
                count += 1
            }
        }
 
        return res
    }
    
}
