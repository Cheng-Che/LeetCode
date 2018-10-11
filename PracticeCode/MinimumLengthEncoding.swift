//
//  MinimumLengthEncoding.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/10/9.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation
class MinimumLengthEncoding {

    func minimumLengthEncoding(_ words: [String]) -> Int {
        var count = 0
        let array:[String] = words.map({String($0.reversed())}).sorted()
        for i in 0..<array.count-1{
            count += array[i+1].hasPrefix(array[i]) == false ? (array[i].count + 1) : 0
        }
        return count + array.last!.count + 1
    }
}

