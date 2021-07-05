//
//  AddTypeView.swift
//  Trening
//
//  Created by Алексей Сергейцев on 7/2/21.
//

import SwiftUI

struct AddTypeView: View {
    
    @State private var typeTrening = ""
    @Binding var showModal: Bool
    
    var body: some View {
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            HStack {
                Text("Введи название упражнения")
                    .padding()
                Spacer()
                Button("Done") {
                    showModal.toggle()
                }
                .padding()
            }
            TextField("Стойка на руках", text: $typeTrening)
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
        AddTypeView(showModal: .constant(false))
    }
}
