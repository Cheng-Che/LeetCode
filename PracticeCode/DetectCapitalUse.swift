//
//  DetectCapitalUse.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/3/27.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class DetectCapitalUse {
    func detectCapitalUse(_ word: String) -> Bool {
        return word == word.lowercased() || word == word.uppercased() || (word.first == word.uppercased().first && word.dropFirst() == word.lowercased().dropFirst()) ? true : false
    }
}
