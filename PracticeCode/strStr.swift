//
//  strStr.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/4/28.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class StrStr {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.characters.count == 0 {
            return 0
        }else if let range = haystack.range(of: needle) {
            return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
        }
        return -1
    }
}
