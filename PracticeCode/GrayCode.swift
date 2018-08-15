//
//  GrayCode.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/8/13.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class GrayCode {
    func grayCode(_ n: Int) -> [Int] {
        return helper(cul: [Int](), n: n, res: [0], start: 1)
    }
    
    func helper(cul:[Int], n:Int, res:[Int], start:Int)-> [Int]{
        if start > n{
            return res
        }
        var outRes = res
        var outCul:[Int] = [Int(truncating: NSDecimalNumber(decimal: Decimal(pow(2, Double(start-1)))))]
        for i in cul.reversed(){
            outCul.append(-i)
        }
        for i in outCul{
            outRes.append(outRes.last! + i)
        }
        return helper(cul: cul + outCul, n: n, res: outRes, start:start + 1)
    }
}
