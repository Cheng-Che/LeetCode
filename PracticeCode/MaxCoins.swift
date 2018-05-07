//
//  MaxCoins.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/4/23.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation
class MaxCoins {
    func maxCoins(_ nums: [Int]) -> Int {
        var numsTemp = nums
        let sorted = nums.enumerated().sorted(by:{$0.element > $1.element}).map{$0.offset}
        
        //print(sorted)
        
        return 0
    }
    
    func helper(nums:inout [Int])->Int{
        var count = 0
        var numsSortIndex = nums.enumerated().sorted(by:{$0.element > $1.element}).map{$0.offset}
        var bignums = numsSortIndex[0...2]
        
        for i in stride(from: nums.last!, to: 0, by: -1){
            if abs(bignums[0] - i) == 1 ||  abs(bignums[1] - i) == 1 || abs(bignums[2] - i) == 1{
                nums.remove(at: i)
                count += (helper(nums: &nums) + nums[i-1] * nums[i] * nums[i+1])
            }
        }
        return count
    }
}
