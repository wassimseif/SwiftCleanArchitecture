//
//  User.swift
//  Domain
//
//  Created by Wassim on 9/28/17.
//  Copyright © 2017 wassimseif. All rights reserved.
//

import Foundation
public class User : Codable{
    
}


class UserNetworkRepository : Repository{
    func getAll() -> [User] {
        return []
    }
    
    func getById(id: String) -> User {
        return User()
    }
    
    func insert(item: User) {
        
    }
    
    func update(item: User) {
        
    }
    
    func clean() {
        
    }
    
    func deleteById(id: String) {
        
    }
    
    typealias T = User
    
                                    
}
