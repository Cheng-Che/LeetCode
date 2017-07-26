//
//  CountSegments.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/26.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation
class CountSegments {
    func countSegments(_ s: String) -> Int {
        return s.characters.split(separator: " ").map(String.init).count
    }
}
