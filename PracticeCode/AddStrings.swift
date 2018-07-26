//
//  AddStrings.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/7/25.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation
class AddStrings {
    func addStrings(_ num1: String, _ num2: String) -> String {
        let numDict:[Character:Int] = ["0":0, "1":1, "2":2, "3":3, "4":4, "5":5, "6":6, "7":7, "8":8, "9":9]
        let arr1 = Array(num1.reversed())
        let arr2 = Array(num2.reversed())
        var res = ""
        var lastNum = 0
        var i = 0
        while i < max(arr1.count, arr2.count){
            var temp = 0
            if i >= min(arr1.count, arr2.count){
                temp = i >= arr1.count ? numDict[arr2[i]]! + lastNum : numDict[arr1[i]]! + lastNum
            }else{
                temp = numDict[arr1[i]]! + numDict[arr2[i]]! + lastNum
            }
            if temp > 9{ //有進位
                res.append("\(temp - 10)")
                lastNum = 1
            }else{  //無進位
                res.append("\(temp)")
                lastNum = 0
            }
            i += 1
        }
        if lastNum > 0{
            res.append("1")
        }
       
        return String(res.reversed())
        
    }
}
