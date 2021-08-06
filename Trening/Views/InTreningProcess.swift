//
//  InTreningProcess.swift
//  Trening
//
//  Created by 18316409 on 09.07.2021.
//

import SwiftUI

struct InTreningProcess: View {
    @Binding var showModal: Bool
   
    @State var repeatOne = ""
    @State var repeatTwo = ""
    @State var repeatTree = ""
    @State var repeatFour = ""
    @State var repeatFive = ""
    @State var temp = ""
//    @State var date: Date
    
    let nameTrening: String
//    let inputTrening = InputTrening
    let date = Date()
    
    
    
    var body: some View {
        VStack {
            HStack {
                Text("Тренировка: \(nameTrening) ")
                    .padding()
                Spacer()
            }
            HStack {
                VStack {
                    Text("Подход 1: ")
                        .frame(height: 30)
                    Text("Подход 2: ")
                        .frame(height: 30)
                    Text("Подход 3: ")
                        .frame(height: 30)
                    Text("Подход 4: ")
                        .frame(height: 30)
                    Text("Подход 5: ")
                        .frame(height: 30)
                }
                VStack {
                    TextField("60", text: $repeatOne)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $repeatTwo)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $repeatTree)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $repeatFour)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $repeatFive)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                }
                VStack {
                    TextField("60", text: $temp)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $temp)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $temp)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $temp)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $temp)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                }
                Spacer()
            }
            .padding()
            
            HStack {
                Text("Дата тренировки: \(date, style: .date)")
            Spacer()
            }
            .padding()
            
            
            Button("Save") {
                showModal.toggle()
//                if !treningType.isEmpty {
                StorageManager.shared.saveinputTrening(
                    inputTrening: InputTrening.init(
                        treningType: Trening.TypeTrening.init(nameTrening: nameTrening),
                        oneRepeat: repeatOne,
                        twoRepeat: repeatTwo,
                        treeRepeat: repeatTree,
                        fourRepeat: repeatFour,
                        fiveRepeat: repeatFive,
                        date: date
                )
                )
//                StorageManager.shared.saveNameTrening(
//                    nameTrening: TypeTrening.init(nameTrening: treningType)
//                )}
//                UpdateView.toggle()
                
            }
            Spacer()
        }
    }
}


struct InTreningProcess_Previews: PreviewProvider {
    static var previews: some View {
        InTreningProcess(
            showModal: .constant(false),
            nameTrening: "Текст"
        )
    }
}
