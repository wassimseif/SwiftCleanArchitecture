//
//  GetFriendsAPIWorker.swift
//  SwiftCleanArchitecture
//
//  Created by Wassim on 10/16/17.
//  Copyright (c) 2017 wassimseif. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates
import Domain
struct GetFriendsAPIWorkerRequest {
    var userId : String
}
class GetFriendsAPIWorker {
    // MARK: Business Logic
    var request : GetFriendsAPIWorkerRequest!
    
    func work() {
        // NOTE: Do the work
        
    }
    init(withRequest request : GetFriendsAPIWorkerRequest ){
        self.request = request
    }
}
