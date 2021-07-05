//
//  StartView.swift
//  Trening
//
//  Created by 18316409 on 21.06.2021.
//

import SwiftUI

struct TabBarView: View {
    let headup: Headup
    
    @State private var treningType = ""
    @State private var oneRepeat = ""
    @State private var twoRepeat = ""
    @State private var treeRepeat = ""
    @State private var fourRepeat = ""
    @State private var fiveRepeat = ""
    @State private var date = ""
    
    @Binding var showModal: Bool
    
    var body: some View {

        TabView {
            DetailsView(
                headup: headup,
                treningType: $treningType,
                oneRepeat: $oneRepeat,
                twoRepeat: $twoRepeat,
                treeRepeat: $treeRepeat,
                fourRepeat: $fourRepeat,
                fiveRepeat: $fiveRepeat,
                date: $date
            )
            .tabItem {
                Image(systemName: "airplane")
                Text("Show Head Up")
            }
            InputHeadUpView(
                showModal: $showModal,
                headup: headup,
                treningType: $treningType,
                oneRepeat: $oneRepeat,
                twoRepeat: $twoRepeat,
                treeRepeat: $treeRepeat,
                fourRepeat: $fourRepeat,
                fiveRepeat: $fiveRepeat,
                date: $date
            )
            .tabItem {
                Image(systemName: "airplane")
                Text("Input Head Up")
            }
        }
        .navigationBarTitle("\(headup.treningType)")
    }
}

struct StartView_Previews: PreviewProvider {
    static let headup = Headup.getHeadupList()[0]
    
    static var previews: some View {
        TabBarView(headup: headup, showModal: .constant(false))
    }
}
