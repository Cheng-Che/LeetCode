//
//  NimGame.swift
//  PracticeCode
//
//  Created by ccHsieh on 2017/7/5.
//  Copyright © 2017年 ccHsieh. All rights reserved.
//

import Foundation

class NimGame {
    func canWinNim(_ n: Int) -> Bool {
        return n%4==0 ? false : true
    }
}
