////
////  InputView.swift
////  Trening
////
////  Created by 18316409 on 21.06.2021.
////
//
//import SwiftUI
//
//struct InputHeadUpView: View {
//
//    @State private var treningType = ""
//    @State private var oneRepeat = ""
//    @State private var twoRepeat = ""
//    @State private var treeRepeat = ""
//    @State private var fourRepeat = ""
//    @State private var fiveRepeat = ""
//    @State private var date = ""
//
//    @State private var typeTrening = ""
//    @Binding var showModal: Bool
//
//    let headup: Headup
//
//    var body: some View {
//        VStack {
//            HStack {
//                Text("Колличество подходов:")
//                    .font(.title)
//                Spacer()
//            }
//            .padding()
//
//            HStack {
//                TextField("One", text: $oneRepeat)
//                TextField("Two", text: $twoRepeat)
//                TextField("Tree", text: $treeRepeat)
//                TextField("Four", text: $fourRepeat)
//                TextField("Five", text: $fiveRepeat)
//            }
//            .textFieldStyle(RoundedBorderTextFieldStyle())
//            .padding()
//
//            HStack {
//                Text("Дата:")
//                TextField("Введи дату", text: $date)
//            }.padding()
//            Spacer()
//
//            HStack {
//                Button("Save") {
//                    StorageManager.shared.saveHeadup(
//                        headup:
//                            Headup.init(
//                                treningType: treningType,
//                                oneRepeat: oneRepeat,
//                                twoRepeat: twoRepeat,
//                                treeRepeat: treeRepeat,
//                                fourRepeat: fourRepeat,
//                                fiveRepeat: fiveRepeat,
//                                date: date
//                            )
//                    )
//                    showModal.toggle()
//                }
//                .padding()
//
//                Button("Exit") {
//                    showModal.toggle()
//                }
//                .padding()
//
//            }
//            Spacer()
//            .padding()
//        }
//    }
//}
//
//struct InputView_Previews: PreviewProvider {
//
//    static let headup = Headup.getHeadupList()[0]
//
//    static var previews: some View {
//        InputHeadUpView(
//            showModal: .constant(false),
//            headup: headup
//        )
//    }
//}
