//
//  ButtonView.swift
//  Trening
//
//  Created by 18316409 on 06.07.2021.
//

import SwiftUI

struct Details: View {
    
    let typeTrening: TypeTrening
    let inputTrenings = StorageManager.shared.fetchInputTrening()
    
    @State private var isPresent = false
    
    var body: some View {
        
        VStack {
            
            
            List {
                ForEach(inputTrenings, id: \.self) { trening in
                    Text("Упражнение: \(trening.treningType.nameTrening)")
                    Text("Первый подход: \(trening.oneRepeat)")
                    Text("Второй подход: \(trening.twoRepeat)")
                    Text("Трерий подход: \(trening.treeRepeat)")
                    Text("Четвёртый подход: \(trening.fourRepeat)")
                    Text("Пятый подход: \(trening.fiveRepeat)")
                    Text("Дата: \(trening.date)")
                }
            }
        }
        
        Text("\(typeTrening.nameTrening)")
            .navigationBarTitle("\(typeTrening.nameTrening)")
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    
    static let typeTrening = TypeTrening.init(nameTrening: "Заглушка")
    
    static var previews: some View {
        Details(typeTrening: typeTrening)
        //                inputTrening: InputTrening.getInputTreningList()[0])
    }
}

