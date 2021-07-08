//
//  GlobalView.swift
//  Trening
//
//  Created by 18316409 on 22.06.2021.
//

import SwiftUI

struct ViewTypeTrening: View {
    
    let typeTrening: TypeTrening
    
    var body: some View {
        VStack {
            Text("Список упражнений: ")
                .font(.title)
                .padding()
            Text("Список упражнений: ")
        }
        
    }
    
}



struct GlobalView_Previews: PreviewProvider {
    static let typeTrening = TypeTrening.getTypeTreningList()[0]
    
    static var previews: some View {
        ViewTypeTrening(typeTrening: typeTrening)
    }
}
