//
//  InTreningTypeView.swift
//  Trening
//
//  Created by 18316409 on 06.07.2021.
//

import SwiftUI


struct InTreningTypeView: View {
    @Binding var showModal: Bool
    @Binding var UpdateView: Bool
    @State private var treningType = ""
    
    
    var body: some View {
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            HStack {
                Text("Введи название упражнения")
                    .padding()
            }
            TextField("Стойка на руках", text: $treningType)
                .padding()
                .frame(alignment: .center)
            
            
            HStack {
                Button("Exit") {
                    showModal.toggle()
                }
                Spacer()
                Button("Done") {
                    if !treningType.isEmpty {
                    StorageManager.shared.saveNameTrening(
                        nameTrening: TypeTrening.init(nameTrening: treningType)
                    )}
                    UpdateView.toggle()
                    showModal.toggle()
                }
            }
            .padding()
            Spacer()
        }
        
    }
}

struct InTreningTypeView_Previews: PreviewProvider {
    static var previews: some View {
        
        InTreningTypeView(
            showModal: .constant(false),
            UpdateView: .constant(false))
    }
}
