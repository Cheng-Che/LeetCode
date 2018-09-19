//
//  ReverseWords2.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/9/18.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class ReverseWords {
    func reverseWords(_ s: String) -> String {
        var res = ""
        let a = s.split(separator: " ")
        for i in 0..<a.count {
            res += a[i].reversed()
            if i < a.count-1{
                res += " "
            }
        }
        return res
    }
}
