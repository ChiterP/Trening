//
//  AddTypeView.swift
//  Trening
//
//  Created by Алексей Сергейцев on 7/2/21.
//

import SwiftUI

struct AddTypeView: View {
    
    @Binding var treningType: String
    @Binding var showModal: Bool
    
    var body: some View {
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            HStack {
                Text("Введи название упражнения")
                    .padding()
                Spacer()
               
                Button("Done") {
                    showModal.toggle()
                    StorageManager.shared.saveHeadup(
                        headup: Headup.init(
                            treningType: treningType,
                            oneRepeat: "",
                            twoRepeat: "",
                            treeRepeat: "",
                            fourRepeat: "",
                            fiveRepeat: "",
                            date: ""))
                }
                .padding()
            }
            TextField("Стойка на руках", text: $treningType)
                .padding()
                .frame(alignment: .center)
            
            
            Button("Exit") {
                showModal.toggle()
            }
            .padding()
            Spacer()

        }
       
    }
}

struct AddTypeView_Previews: PreviewProvider {
    static var previews: some View {
        AddTypeView(treningType: .constant(""),
                    showModal: .constant(false)
        )
    }
}
