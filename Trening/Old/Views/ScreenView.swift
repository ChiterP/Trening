////
////  ScreenView.swift
////  Trening
////
////  Created by Алексей Сергейцев on 7/2/21.
////
//
//import SwiftUI
//
//struct ScreenView: View {
//    
//    var headups: [Headup] = []
//    let headup: Headup
//    
//    var typeTrenings: [TypeTrening] = []
//    let typeTrening: TypeTrening
//    
////    init() {
////        self.headups = StorageManager.shared.fetchHeadup()
////    }
//    
//    @State private var isPresented = false
//    @State private var isPresentedInput = false
//    @State private var isPresentedHistory = false
//    @State private var isPresentedShowTreningType = false
//    
//    @Binding var treningType: String
//    @Binding var oneRepeat: String
//    @Binding var twoRepeat: String
//    @Binding var treeRepeat: String
//    @Binding var fourRepeat: String
//    @Binding var fiveRepeat: String
//    @Binding var date: String
//    
//    var body: some View {
//        
//        VStack {
//            Button(action: { isPresented.toggle() }) {
//                Text("Добавить тренировку")
//                Spacer()
//            }
//            .padding()
//            .sheet(isPresented: $isPresented) {
//                AddTypeView(treningType: $treningType, showModal: $isPresented)
//            }
//            
//            Button(action: { isPresentedInput.toggle() }) {
//                Text("Тренироваться")
//                Spacer()
//            }
//            .padding()
//            .sheet(isPresented: $isPresentedInput) {
//                InputHeadUpView(
//                    showModal: $isPresentedInput,
//                    headup: headup
//                )
//            }
//            
//            Button(action: { isPresentedHistory.toggle() }) {
//                Text("История тренировок")
//                Spacer()
//            }
//            .padding()
//            .sheet(isPresented: $isPresentedHistory) {
//                HistoryTreningView(
//                    headup: headup,
//                    showModal: $isPresentedHistory
//                )
//            }
//            
//            Button(action: { isPresentedShowTreningType.toggle() }) {
//                Text("Упражнения")
//                Spacer()
//            }
//            .padding()
//            .sheet(isPresented: $isPresentedShowTreningType) {
//                ViewTypeTrening(typeTrening: typeTrening)
//            }
//            Spacer()
//        }
//        .padding()
//    }
//}
//
//struct ScreenView_Previews: PreviewProvider {
//    
//    static let headup = Headup.getHeadupList()[0]
//    static let typeTrening = TypeTrening.getTypeTreningList()[0]
//    
//    static var previews: some View {
//        ScreenView(
//            headup: headup,
//            typeTrening: typeTrening,
//            treningType: .constant(""),
//            oneRepeat: .constant("10"),
//            twoRepeat: .constant("20"),
//            treeRepeat: .constant("30"),
//            fourRepeat: .constant("40"),
//            fiveRepeat: .constant("50"),
//            date: .constant("01.06.2021")
//        )
//    }
//}
