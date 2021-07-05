//
//  TreningApp.swift
//  Trening
//
//  Created by 18316409 on 21.06.2021.
//

import SwiftUI

@main
struct TreningApp: App {
    
    var body: some Scene {
        let headup = Headup.getHeadupList()[0]
        
        WindowGroup {
            ScreenView(
                headup: headup,
                treningType: .constant("Стойка"),
                oneRepeat: .constant("10"),
                twoRepeat: .constant("20"),
                treeRepeat: .constant("30"),
                fourRepeat: .constant("40"),
                fiveRepeat: .constant("50"),
                date: .constant("01.06.2021")
            )
        }
    }
}
