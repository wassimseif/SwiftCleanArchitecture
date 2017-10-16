//
//  ListUsersInteractor.swift
//  SwiftCleanArchitecture
//
//  Created by Wassim on 10/16/17.
//  Copyright © 2017 wassimseif. All rights reserved.
//

import Foundation
import RxSwift
import Domain


class ListUsersInteractor : ListUsersViewControllerOutput{
    
    var getUsersAPIWorker :  GetUsersAPIWorker?
    
    func getUsers(withRequest request: ListUsersModels.ListUsersViewControllerOutputRequest) -> Observable<[User]> {
        return Observable.create{ observer  in
            
            return Disposables.create {
                print(#function + " Disposed")
            }
        }
        
        
    }
    
    
}
