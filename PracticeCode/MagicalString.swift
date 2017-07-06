//
//  MagicalString.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/5.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class MagicalString {
    func magicalString(_ n: Int) -> Int {
        var magicArray:[Int] = [1,2,2]
        var count = 0
        var i = 2
        while i < n{
            let j = magicArray.last   // last number
            for _ in 0..<magicArray[i]{
                magicArray.append(j==1 ? 2 : 1)
            }
            i+=1
        }
        for i in 0..<n{
            if magicArray[i] == 1{
                count += 1
            }
        }
        return count
    }
}
