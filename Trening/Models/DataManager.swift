//
//  DataManager.swift
//  Trening
//
//  Created by 18316409 on 22.06.2021.
//

import Foundation
import Combine

class DataManager {
    
    static let shared = DataManager()
    
    var treningType = [
        "Стойка на руках", "Присед",
        "Гипер экстензия", "Подтягивания",
        "Вис", "Бицепс бедра"
    ]

    let oneRepeat = "10"
    let twoRepeat = "20"
    let treeRepeat = "30"
    let fourRepeat = "40"
    let fiveRepeat = "50"
    let date = "01.06.2021"
    private init() {}
}


class UserManger: ObservableObject {
    @Published var isRegister = false
}
