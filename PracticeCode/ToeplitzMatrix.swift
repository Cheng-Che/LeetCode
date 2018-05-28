//
//  ToeplitzMatrix.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/5/28.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class ToeplitzMatrix {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        for i in 0..<matrix.count - 1{
            for j in 0..<matrix[0].count - 1 {
                if matrix[i][j] != matrix[i+1][j+1] {
                    return false
                }
            }
        }
        return true
    }
}
