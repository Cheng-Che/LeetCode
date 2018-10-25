//
//  NumSpecialEquivGroups.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/9/5.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class NumSpecialEquivGroups {
    func numSpecialEquivGroups(_ A: [String]) -> Int {
        var res:[[Character]] = []
        for str in A{
            let array = Array(str)
            var tempArray = ["", ""]
            for i in 0..<array.count{
                if i % 2 == 0{
                    tempArray[0].append(array[i])
                }else{
                    tempArray[1].append(array[i])
                }
            }
            if res.contains(tempArray[0].sorted() + tempArray[1].sorted()) == false{
                res.append(tempArray[0].sorted() + tempArray[1].sorted())
            }
        }
        return res.count
    }
}
