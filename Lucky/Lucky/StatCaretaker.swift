//
//  StatCaretaker.swift
//  Lucky
//
//  Created by Администратор on 24.04.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import Foundation

final class StatCaretaker {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    private let key = "results"
    
    func save(stats: [Stat]) {
        do {
            let data = try self.encoder.encode(stats)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error)
        }
    }
    
    func retrieveStats() -> [Stat] {
        guard let data = UserDefaults.standard.data(forKey: key) else {return[]}
        do {
            return try self.decoder.decode([Stat].self, from: data)
        } catch {
            print(error)
            return []
        }
    }
}
