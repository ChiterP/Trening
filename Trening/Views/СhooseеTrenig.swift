//
//  СhooseеTrenig.swift
//  Trening
//
//  Created by 18316409 on 13.07.2021.
//

import SwiftUI

struct ChooseTrenig: View {
    
    @Binding var showModal: Bool
    
    @State var typeTrenings : [TypeTrening] = StorageManager.shared.fetchNameTrening()
    @State var inputTrenings : [InputTrening] = StorageManager.shared.fetchInputTrening()
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    Text("Всего типов упражнений: ")
                    Text("\(typeTrenings.count)")
                        .frame(width: 30, alignment: .leading)
                    
                }
                .padding()
                
                List {
                    ForEach(typeTrenings, id: \.self) { trening in
                        NavigationLink(destination: InTreningProcess(
                            showModal: $showModal,
                            nameTrening: trening.nameTrening
                        )
                        )
                        {
                            TreningRow(typeTrening: trening)
                        }
                    }
                    
                    .onDelete(perform: { indexSet in
                        indexSet.forEach {
                            typeTrenings.remove(at: $0)
                            StorageManager.shared.deleteNameTrening(at: $0)
                        }
                    }
                    )
                }
                .navigationBarTitle("Тренируем сейчас")
            }
        }
    }
}

struct ChooseTrenig_Previews: PreviewProvider {
    static var previews: some View {
        ChooseTrenig(
            showModal: .constant(false)
        )
    }
}




