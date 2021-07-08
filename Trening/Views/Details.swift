//
//  ButtonView.swift
//  Trening
//
//  Created by 18316409 on 06.07.2021.
//

import SwiftUI

struct Details: View {
    
    let typeTrening: TypeTrening
    
    @State private var isPresent = false
    
    var body: some View {
        
        Text("\(typeTrening.nameTrening)")
        .navigationBarTitle("\(typeTrening.nameTrening)")
    }
}

struct ButtonView_Previews: PreviewProvider {
    
    static let typeTrening = TypeTrening.getTypeTreningList()[0]
    
    static var previews: some View {
        Details(typeTrening: typeTrening)
    }
}

