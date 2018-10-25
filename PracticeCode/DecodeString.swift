//
//  DecodeString.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/8.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class DecodeString {
    func decodeString(_ s: String) -> String {
        if s.contains("[") == false{ return s }
        
        let stringArray = s.map({ String($0) })
        var startBracket = 0
        let endBracket = s.distance(from: s.startIndex, to: (s.range(of: "]")!.lowerBound))
        var repeatString = ""
        for i in stride(from: endBracket-1, to: 0, by: -1){
            if stringArray[i] != "["{
                repeatString.append(stringArray[i])
            }else{  //  is "["
                var multiple = ""
                for j in stride(from: i-1, to: -1, by: -1){
                    if Int(stringArray[j]) != nil{
                        multiple.insert(Character(stringArray[j]), at: multiple.startIndex)
                    }else{
                        startBracket = j+1
                        break }
                }
                let temp = repeatString
                for _ in 0..<Int(multiple)!-1{
                    repeatString.append(temp)
                }
                repeatString = String(repeatString.reversed())
                break
            }
        }

        var previous = s.substring(to: s.index(s.startIndex, offsetBy: startBracket)) //除了...以外
        let backward = s.substring(from: s.index(s.startIndex, offsetBy: endBracket+1))
        previous.append(repeatString + backward)
        return decodeString(previous)
    }
}
