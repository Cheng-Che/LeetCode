//
//  FlipAndInvertImage.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/10/8.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class FlipAndInvertImage {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        return A.map({$0.reversed()}).map({$0.map({$0 == 0 ? 1 : 0 })})
    }
}
