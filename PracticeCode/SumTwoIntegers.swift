//
//  SumTwoIntegers.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/5/4.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation
class SumTwoInt {
    
    func getSum(_ a: Int, _ b: Int) -> Int {
        var x = a
        var y = b
        
        while y != 0 {
            let c = (x&y)<<1
            x = x^y
            y = c
        }
        return x
    }

}

/*  Another answer for small numbers
 
    if (a>=0 && b>=0) || (a<0 && b<0){
        add(addUnit: abs(a))
        add(addUnit: abs(b))
        return a>=0||b>=0 ? ans.characters.count : -(ans.characters.count)
    }
    
    if abs(a)>abs(b){
        add(addUnit: abs(a))
        remove(removeUnit: abs(b))
        return a>=0 ? ans.characters.count : -(ans.characters.count)
    }else{
        add(addUnit: abs(b))
        remove(removeUnit: abs(a))
        return a>=0 ? -(ans.characters.count) : ans.characters.count
    }
    
    func add(addUnit:Int){
        for _ in 0..<addUnit{
            ans.append("1")
        }
    }
    func remove(removeUnit:Int){
        for _ in 0..<removeUnit{
            ans.remove(at: ans.startIndex)
        }
    }
 */
