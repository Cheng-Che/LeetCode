//
//  SubdomainVisits.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/5/25.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class SubdomainVisits {
    func subdomainVisits(_ cpdomains: [String]) -> [String] {
        var splitDict:[String:Int] = [:]
        var numbers:[Int] = []
        for i in 0..<cpdomains.count{
            let tempArr = cpdomains[i].components(separatedBy: " ")
            numbers.append(Int(tempArr[0])!)
            let tempArr2:[String] = {
                var arr = tempArr[1].components(separatedBy: ".")
                for i in stride(from: arr.count-2, to: -1, by: -1){
                    arr[i] = arr[i] + "." + arr[i+1]
                }
                return arr
            }()
            for j in stride(from: tempArr2.count-1, to: -1, by: -1){
                splitDict[tempArr2[j]] = splitDict[tempArr2[j]] == nil ? numbers[i] : splitDict[tempArr2[j]]! + numbers[i]
            }
        }
        return splitDict.map({String($0.value) + " " + $0.key})
    }
}
