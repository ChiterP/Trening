////
////  ContentView.swift
////  Trening
////
////  Created by 18316409 on 21.06.2021.
////
//
//import SwiftUI
//
//struct DetailsView: View {
//    let headup: Headup
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
//        VStack {
//            VStack {
//                HStack {
//                    Text("Дата треньки: \(date)")
//                        .padding()
//                    Spacer()
//                }
//                HStack {
//                   
//                    Text(headup.oneRepeat)
//                        .padding()
//                    Text(headup.twoRepeat)
//                        .padding()
//                    Text(headup.treeRepeat)
//                        .padding()
//                    Text(headup.fourRepeat)
//                        .padding()
//                    Text(headup.fiveRepeat)
//                        .padding()
//                    Spacer()
//                }
//                Spacer()
//            }
//        }
//        .navigationBarTitle("\(headup.treningType)")
//    }
//
//}
//
//struct ContentView_Previews: PreviewProvider {
//    
//    static let headup = Headup.getHeadupList()[0]
//    
//    static var previews: some View {
//        DetailsView(
//            headup: headup,
//            treningType: .constant("Head Up"),
//            oneRepeat: .constant("10"),
//            twoRepeat: .constant("20"),
//            treeRepeat: .constant("30"),
//            fourRepeat: .constant("40"),
//            fiveRepeat: .constant("50"),
//            date: .constant("01.06.2021")
//        )
//}
//}
//
//
