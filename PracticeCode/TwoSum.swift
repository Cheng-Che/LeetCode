//
//  TwoSum.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/4/25.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var simpleNums:[Int] = []
        var indexArray:[Int] = []
        var count = 0
        
        simpleNums.append(nums[0])   //insert first numbers
        indexArray.append(1)
        for i in 0..<nums.count-1{
            let compareNum = nums[i]
            if compareNum == nums[i+1]{
                count += 1
                if count < 2{       //repeat numbers can't > 2
                    simpleNums.append(nums[i+1])
                    indexArray.append(i+2)
                }
            }else{
                count = 0
                simpleNums.append(nums[i+1])
                indexArray.append(i+2)     //because of one-based
            }
        }

        for i in 0..<simpleNums.count{
            var temp = target
            var ans:[Int] = []
            
            temp -= simpleNums[i]
            ans.insert(indexArray[i], at: 0)
            
            for j in i+1..<simpleNums.count{
                if temp - simpleNums[j] == 0{     //find two numbers
                    ans.insert(indexArray[j], at: 1)
                    return ans
                }
            }
        }
        return []    //failed
    }
}
