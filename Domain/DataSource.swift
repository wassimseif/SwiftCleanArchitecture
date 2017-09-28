//
//  DataSource.swift
//  Domain
//
//  Created by Wassim on 9/28/17.
//  Copyright © 2017 wassimseif. All rights reserved.
//

import Foundation
protocol Repository {
    associatedtype T
    func getAll() -> [T]
    func getById(id: String) -> T
    func insert(item: T)
    func update(item: T)
    func clean()
    func deleteById(id: String)
    func customAction()
}

extension Repository{
    
    func customAction(){
        
    }
}
