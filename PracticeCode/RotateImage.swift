//
//  RotateImage.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/6/12.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class RotateImage {
    func rotate(_ matrix: inout [[Int]]) {
        rotation(start: 0, end: matrix[0].count-1, matrix: &matrix)
    }
    
    func rotation(start:Int, end:Int, matrix:inout[[Int]]){
        
        if start >= end{ return }
        var temp:[Int] = []
        for i in start...end{
            temp.append(matrix[start][i])
        }
        for i in start..<end+1{
            matrix[i][end] = temp[0]
            if end-i > 0{
                temp.append(matrix[i+1][end])
                temp.removeFirst()
            }
        }
     
        for i in start..<end+1{
            matrix[end][end-i+start] = temp[0]
            if end-i > 0{
                temp.append(matrix[end][end-i-1+start])
                temp.removeFirst()
            }
        }

        for i in start..<end+1{
            matrix[end-i+start][start] = temp[0]
            if end-i > 0{
                temp.append(matrix[end-i-1+start][start])
                temp.removeFirst()
            }
        }
        
        for i in start..<end+1{
            matrix[start][i] = temp[i-start]
        }
        rotation(start:start+1, end: end-1 , matrix: &matrix)
    }
}
