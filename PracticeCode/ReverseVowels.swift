//
//  ReverseVowels.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/7/3.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

//39.5
class ReverseVowels {
    func reverseVowels(_ s: String) -> String {
        let vowel = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var array = Array(s)
        var vowelChar:[Character] = []
        var vowelIndex:[Int] = []
        
        for i in 0..<array.count{
            if vowel.contains(String(array[i])){
                vowelChar.append(array[i])
                vowelIndex.append(i)
            }
        }
        
        for i in 0..<vowelIndex.count{
            array[vowelIndex[i]] = vowelChar[vowelIndex.count-1-i]
        }
        
        return String(array)
    }
}
