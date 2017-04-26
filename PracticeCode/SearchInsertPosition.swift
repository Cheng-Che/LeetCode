//
//  SearchInsertPosition.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/4/26.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class SearchInsert {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {

        for i in 0..<nums.count{
            if nums[i] >= target{
                return i
            }
        }
        
        return nums.count
    }
}
