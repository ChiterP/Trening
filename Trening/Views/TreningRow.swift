//
//  TreningRow.swift
//  Trening
//
//  Created by 18316409 on 07.07.2021.
//

import SwiftUI

struct TreningRow: View {
    
    let typeTrening: TypeTrening
//    let inputTrening: InputTrening
    
    var body: some View {
        HStack {
//            Text("\(inputTrening.treningType.nameTrening)")
            Text("\(typeTrening.nameTrening)")
                .frame(width: 120, alignment: .leading)
            Spacer()
        }
        
    }
    
}

struct FlightRow_Previews: PreviewProvider {
    static var previews: some View {
        TreningRow(typeTrening: TypeTrening.init(nameTrening: "Стойка"))
//        TreningRow(inputTrening: InputTrening.getInputTreningList()[0])
    }
}
