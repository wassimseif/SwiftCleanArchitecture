//
//  ListUsersConfigurator.swift
//  SwiftCleanArchitecture
//
//  Created by Wassim on 9/28/17.
//  Copyright (c) 2017 wassimseif. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

import UIKit

// MARK: Connect View, Interactor, and Presenter

extension ListUsersInteractor: ListUsersViewControllerOutput, ListUsersRouterDataSource, ListUsersRouterDataDestination {
}

extension ListUsersPresenter: ListUsersInteractorOutput {
}

class ListUsersConfigurator {
    // MARK: Object lifecycle
    
    static let sharedInstance = ListUsersConfigurator()
    
    private init() {}
    
    // MARK: Configuration
    
    func configure(viewController: ListUsersViewController) {
        
        let presenter = ListUsersPresenter()
        presenter.output = viewController
        
        let interactor = ListUsersInteractor()
        interactor.output = presenter
        
        let router = ListUsersRouter(viewController: viewController, dataSource: interactor, dataDestination: interactor)
        
        viewController.output = interactor
        viewController.router = router
    }
}