//
//  ListUsersRouter.swift
//  SwiftCleanArchitecture
//
//  Created by Wassim on 9/28/17.
//  Copyright (c) 2017 wassimseif. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

import UIKit

protocol ListUsersRouterInput {
    
}

protocol ListUsersRouterDataSource: class {
    
}

protocol ListUsersRouterDataDestination: class {
    
}

class ListUsersRouter: ListUsersRouterInput {
    
    weak var viewController: ListUsersViewController!
    weak private var dataSource: ListUsersRouterDataSource!
    weak var dataDestination: ListUsersRouterDataDestination!
    
    init(viewController: ListUsersViewController, dataSource: ListUsersRouterDataSource, dataDestination: ListUsersRouterDataDestination) {
        self.viewController = viewController
        self.dataSource = dataSource
        self.dataDestination = dataDestination
    }
    
    // MARK: Navigation
    
    // MARK: Communication
    
    func passDataToNextScene(for segue: UIStoryboardSegue) {
        // NOTE: Teach the router which scenes it can communicate with
        
    }
}
