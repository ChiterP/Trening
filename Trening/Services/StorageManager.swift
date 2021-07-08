//
//  StorageManager.swift
//  Trening
//
//  Created by 18316409 on 23.06.2021.
//

import Foundation

class StorageManager {
    static let shared = StorageManager()
    
    private let userDefaults = UserDefaults.standard
    private let key = "headup"
    private let typeTrKey = "nameTrening"
    
    private init () {}
    
    //MARK: Headup
    func saveHeadup(headup: Headup) {
        var headups = fetchHeadup()
        headups.append(headup)
        guard let data = try? JSONEncoder().encode(headups) else { return }
        userDefaults.set(data, forKey:  key)
    }
    
    func fetchHeadup() -> [Headup] {
        guard  let data = userDefaults.object(forKey: key) as? Data else { return [] }
        guard let headups = try? JSONDecoder().decode([Headup].self, from: data) else { return []}
        return headups
        }
        
    func deleteHeadup(at index: Int) {
        var headups = fetchHeadup()
        headups.remove(at: index)
        guard let data = try? JSONEncoder().encode(headups) else { return }
        userDefaults.set(data, forKey:  key)
    }
}

extension StorageManager {
    
    //MARK: TypeTrening
    func saveNameTrening(nameTrening: TypeTrening) {
        var nameTrenings = fetchNameTrening()
        nameTrenings.append(nameTrening)
        guard let data = try? JSONEncoder().encode(nameTrenings) else { return }
        userDefaults.set(data, forKey:  typeTrKey)
    }
    
    func fetchNameTrening() -> [TypeTrening] {
        guard  let data = userDefaults.object(forKey: typeTrKey) as? Data else { return [] }
        guard let nameTrenings = try? JSONDecoder().decode([TypeTrening].self, from: data) else { return []}
        return nameTrenings
        }
        
    func deleteNameTrening(at index: Int) {
        var nameTrenings = fetchNameTrening()
        nameTrenings.remove(at: index)
        guard let data = try? JSONEncoder().encode(nameTrenings) else { return }
        userDefaults.set(data, forKey:  typeTrKey)
    }
    
}
