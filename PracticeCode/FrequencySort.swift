//
//  FrequencySort.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/11.
//  Copyright © 2017年 ccHsieh. All rights reserved.

//  Sort Characters By Frequency
// beat 27.27%
import Foundation

class FrequencySort {
    func frequencySort(_ s: String) -> String {
        var ans = ""
        var items:[Character:Int] = [:]
        for i in s.characters{
            items[i] = items[i] == nil ? 1 : items[i]!+1
        }
        
        let itemResult = items.sorted { (first: (key: Character, value: Int), second: (key: Character, value: Int)) -> Bool in
            return first.value > second.value
        }
        
        for bas in itemResult{
            for _ in 0..<bas.value{
                ans.append(bas.key)
            }
        }
        return ans
    }
}
