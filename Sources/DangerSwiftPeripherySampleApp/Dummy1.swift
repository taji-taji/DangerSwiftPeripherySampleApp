//
//  File.swift
//  
//
//  Created by 多鹿豊 on 2022/04/05.
//
import Foundation

struct UsedStruct1 {
    let usedProperty: String
}

struct DummyStruct {
    func usedFunc(unusedArgument: String) {
        let usedStruct1 = UsedStruct1(usedProperty: "1")
        print(usedStruct1.usedProperty)
    }
}
