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
        "Стойка на руках", "Присед", "Гипер экстензия", "Подтягивания",
        "Вис", "Бицепс бедра"
    ]
    
    let oneRepeat = [
        "10", "20", "30", "40", "50"
    ]
    
    let twoRepeat = [
        "10", "20", "30", "40", "50"
    ]
    
    let treeRepeat = [
        "10", "20", "30", "40", "50"
    ]
    
    let fourRepeat = [
        "10", "20", "30", "40", "50"
    ]
    
    let fiveRepeat = [
        "10", "20", "30", "40", "50"
    ]

    let date = [
        "01.06.2021", "02.06.2021", "03.06.2021", "04.06.2021", "05.06.2021"
    ]

    private init() {}
}


class UserManger: ObservableObject {
    @Published var isRegister = false
}
