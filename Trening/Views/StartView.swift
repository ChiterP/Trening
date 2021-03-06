//
//  StartView.swift
//  Trening
//
//  Created by 18316409 on 06.07.2021.
//

import SwiftUI

struct StartView: View {
    
    @State private var isPresentedInput = false
    @State private var isPresentedShow = false
    @State private var isPresentedProcess = false
    @State private var isPresentedHistory = false
    
    
    @State private var isUpdateView = false
    
    let typeTrenings = StorageManager.shared.fetchNameTrening()
    let inputTrenings = StorageManager.shared.fetchInputTrening()
    
    @Binding var treningType: String
    
    var body: some View {
        
        VStack {
            
            Text("Мои тренировки")
                .font(.title)
                .padding()
            Button(action: { isPresentedInput.toggle() }) {
                HStack {
                    Text("Добавить упражнение")
                        .frame(alignment: .leading)
                    Spacer()
                }
            }
            .padding()
            .sheet(isPresented: $isPresentedInput) {
                InTreningTypeView(showModal: $isPresentedInput,
                                  UpdateView: $isUpdateView)
            }
            
            Button(action: {isPresentedShow.toggle() }) {
                HStack {
                    Text("Мои тренировки")
                        .frame(alignment: .leading)
                    Spacer()
                }
            }
            .padding()
            .sheet(isPresented: $isPresentedShow) {
                ShowTypeTrening(
                    showModal: $isPresentedShow)

            }
            
            Button(action: { isPresentedProcess.toggle() }) {
                HStack {
                    Text("Записать тренировку")
                        .frame(alignment: .leading)
                    Spacer()
                }
            }
            .padding()
            .sheet(isPresented: $isPresentedProcess) {
                ChooseTrenig(
                    showModal: $isPresentedProcess)

            }
            
            Button(action: { isPresentedHistory.toggle() }) {
                HStack {
                    Text("История тренировок")
                        .frame(alignment: .leading)
                    Spacer()
                }
            }
            .padding()
            .sheet(isPresented: $isPresentedHistory) {
                ViewTreningHistory(
                    showModal: $isPresentedHistory)
            }
            
            
            Spacer()
        }
    }
}


struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(treningType: .constant("Mook_2"))
    }
}
