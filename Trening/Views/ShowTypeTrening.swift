//
//  ShowTypeTrening.swift
//  Trening
//
//  Created by 18316409 on 06.07.2021.
//

import SwiftUI

struct ShowTypeTrening: View {
    @Binding var showModal: Bool
    
    let typeTrenings : [TypeTrening] = StorageManager.shared.fetchNameTrening()
    
    var body: some View {
        
        NavigationView {
        VStack {
            HStack {
                Text("Всего типов упражнений: ")
                Text("\(typeTrenings.count)")
                    .frame(width: 120, alignment: .leading)
                
            }
            .padding()
            
            List(typeTrenings, id: \.self) { trening in
                NavigationLink(destination: Details(typeTrening: trening))
                {
                TreningRow(typeTrening: trening)
                }
            }.navigationBarTitle("Тренировки")
        }
    }
    }
}

struct ShowTypeTrening_Previews: PreviewProvider {
    
    static let typeTrenings = TypeTrening.getTypeTreningList()
    
    static var previews: some View {
        ShowTypeTrening(
            showModal: .constant(false))
    }
}
