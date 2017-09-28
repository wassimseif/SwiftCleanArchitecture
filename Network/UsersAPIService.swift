//
//  UsersAPIService.swift
//  Network
//
//  Created by Wassim on 9/28/17.
//  Copyright © 2017 wassimseif. All rights reserved.
//

import Foundation
import Moya
import Domain
public final class UsersAPISevice{
    
    private let provider: AbstractNetwork<User>

    
    
    init(withProvider provider : AbstractNetwork<User>){
        self.provider = provider

    }
    
    public func getUsers() {
      
    }
}
