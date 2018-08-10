//
//  MaskPII.swift
//  PracticeCode
//
//  Created by ccHsieh on 2018/8/10.
//  Copyright © 2018年 ccHsieh. All rights reserved.
//

import Foundation

class MaskPII {
    func maskPII(_ S: String) -> String {
        let res = S.filter({Int("\($0)") != nil})
        var prefix = ["", "+*-", "+**-", "+***-"]
        
        if S.contains("@"){ //email
            let separate = S.lowercased().components(separatedBy: "@")
            return "\(separate[0].first!)*****\(separate[0].last!)@\(separate[1])"
        }
        return prefix[res.count-10] + "***-***-\(res[res.index(res.endIndex, offsetBy: -4)..<res.endIndex])"
    }
}
