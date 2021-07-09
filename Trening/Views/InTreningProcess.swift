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

    let date = Date()
    
    
    var body: some View {
        VStack {
            HStack {
                Text("Выбери тренировку: ")
                    .padding()
                
                
                Text("Тут будет списочек")
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
                    TextField("60", text: $repeatOne)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $repeatOne)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $repeatOne)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $repeatOne)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                }
                VStack {
                    TextField("60", text: $repeatOne)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $repeatOne)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $repeatOne)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $repeatOne)
                        .border(Color.gray, width: 1)
                        .frame(width: 40)
                    TextField("60", text: $repeatOne)
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
            Button(action: {
                localDate()
                showModal.toggle()
            }) {
                Text("Save")
            }
            Spacer()
        }
    }
    
    func localDate() {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_RU")
        print(dateFormatter.string(from: date))
    }
    
    
}

struct InTreningProcess_Previews: PreviewProvider {
    static var previews: some View {
        InTreningProcess(
            showModal: .constant(false))
    }
}
