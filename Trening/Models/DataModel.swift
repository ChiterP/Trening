//
//  DataModel.swift
//  Trening
//
//  Created by 18316409 on 21.06.2021.
//

struct Headup: Codable, Hashable {
    
    let treningType: String
    let oneRepeat: String
    let twoRepeat: String
    let treeRepeat: String
    let fourRepeat: String
    let fiveRepeat: String
    let date: String
}




extension Headup {

    static func getHeadupList() -> [Headup] {

        var headups: [Headup] = []
        
        let treningTypes = DataManager.shared.treningType
        let oneRepeats = DataManager.shared.oneRepeat
        let twoRepeats = DataManager.shared.twoRepeat
        let treeRepeats = DataManager.shared.treeRepeat
        let fourRepeats = DataManager.shared.fourRepeat
        let fiveRepeats = DataManager.shared.fiveRepeat
        let dates = DataManager.shared.date
//        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        let iterationCount = min(treningTypes.count, oneRepeats.count, twoRepeats.count, treeRepeats.count, fourRepeats.count, fiveRepeats.count, dates.count )

        for index in 0..<iterationCount {
            let headup = Headup(
                treningType: treningTypes[index],
                oneRepeat: oneRepeats[index],
                twoRepeat: twoRepeats[index],
                treeRepeat: treeRepeats[index],
                fourRepeat: fourRepeats[index],
                fiveRepeat: fiveRepeats[index],
                date: dates[index]
            )

            headups.append(headup)
        }
        return headups
    }
}

