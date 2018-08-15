//
//  ScoreParentheses.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/8/14.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class ScoreParentheses {
    func scoreOfParentheses(_ S: String) -> Int {
        return Int("\(helper(array: S.map({String($0)})).first!)")!
    }
    
    func helper(array:[String]) -> [String]{
        if array.count == 1{ return array }
        var tempArray = array
        var i = 0
        while i < tempArray.count-1{
            if tempArray[i] == "(" && tempArray[i+1] == ")"{
                tempArray[i] = "1"
                tempArray.remove(at: i+1)

            }else if Int(String(tempArray[i])) != nil && Int(String(tempArray[i+1])) != nil{
                tempArray[i] = String(Int(tempArray[i])! + Int(tempArray[i+1])!)
                tempArray.remove(at: i+1)

            }else if i+2 < tempArray.count && tempArray[i] == "(" && Int(String(tempArray[i+1])) != nil && tempArray[i+2] == ")"{
                tempArray[i+1] =  String(Int(tempArray[i+1])! * 2)
                tempArray.remove(at: i)
                tempArray.remove(at: i+1)
            }
            i+=1
        }
        return helper(array:tempArray)
    }
}
