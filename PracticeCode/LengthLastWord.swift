//
//  LengthLastWord.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/6/2.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation
class Lastword {
    func lengthOfLastWord(_ s: String) -> Int {
        return (s.trimmingCharacters(in: .whitespaces).components(separatedBy: " ").last?.characters.count)!
    }
}
