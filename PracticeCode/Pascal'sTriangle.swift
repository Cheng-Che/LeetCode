//
//  Pascal'sTriangle.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/25.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class PascalsTriangle {
    func generate(_ numRows: Int) -> [[Int]] {
        var ans:[[Int]] = [[1], [1,1]]
        if numRows <= 0 { return [] }
        if numRows == 1 { return [[1]] }
        for i in 1..<numRows-1{
            var temp:[Int] = [1]
            var temp2:[Int] = [1]
            for j in 0..<ans[i].count{
                if j+1 <= ans[i].count/2{
                    temp.append(ans[i][j] + ans[i][j+1])
                    if (ans[i].count)%2 == 1 || (ans[i].count)%2 == 0 && j+1 != ans[i].count/2{
                        temp2.insert(ans[i][j] + ans[i][j+1], at: 0)
                    }
                }else{
                    temp += temp2
                    break
                }
            }
            ans.append(temp)
        }
        return ans
    }
}

//another ans
class PascalsTriangle_1 {
    func generate(_ numRows: Int) -> [[Int]] {
        var ans:[[Int]] = [[1], [1,1]]
        if numRows <= 0 { return [] }
        if numRows == 1 { return [[1]] }
        for i in 1..<numRows-1{
            var temp:[Int] = [1,1]
            for j in 0..<ans[i].count{
                if j+1<ans[i].count{
                    temp.insert(ans[i][j] + ans[i][j+1], at: 1)
                }
            }
            ans.append(temp)
        }
        return ans
    }
}

// PascalsTriangle2
class PascalsTriangle2 {
    func getRow(_ rowIndex: Int) -> [Int] {
        var ans:[Int] = [1,1]
        if rowIndex <= 0 { return [1] }
        for _ in 1..<rowIndex{
            var temp:[Int] = [1,1]
            for j in 0..<ans.count{
                if j+1<ans.count{
                    temp.insert(ans[j] + ans[j+1], at: 1)
                }
            }
            ans = temp
        }
        return ans
    }
}
 
