//
//  DeleteOperation2Str.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/5.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//
// 未解
import Foundation

class DeleteOperation2Str {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        let array1 = word1.map({ String($0) })
        var i = 1
        var match = ""
        while i<array1.count{ //開頭的差異
            var temp = word2
            if word2.contains(array1[i]){  //找出該開頭以下的所有字串
                var k = i+1
                if let range = temp.range(of: array1[i]){
                    temp = String(temp[range.lowerBound..<temp.endIndex])
                }
                
                while k<array1.count{
                var matchTemp = array1[i]
                    var j = k
                    while j<array1.count{
                        if let range = temp.range(of: array1[j]){
                            temp = String(temp[range.lowerBound..<temp.endIndex])
                        }
                        if temp.contains(array1[j]){
                            matchTemp.append(array1[j])
                        }
                        j+=1
                    }
                    if matchTemp.count > match.count{
                        match.removeAll()
                        match.append(matchTemp)
                    }
                    k+=1
                }
            }
            i+=1
        }
        print(match)
        
        return word1.count + word2.count - 2*(match.count)
    }
}
