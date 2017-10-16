//
//  ListUsersViewController.swift
//  SwiftCleanArchitecture
//
//  Created by Wassim on 10/16/17.
//  Copyright © 2017 wassimseif. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import Domain

protocol ListUsersViewControllerOutput {
    func getUsers(withRequest request : ListUsersModels.ListUsersViewControllerOutputRequest) -> Observable<[Domain.User]>
}

protocol ListUsersViewControllerInput {
    func display(users usrs : [Domain.User])
}
class ListUsersViewController : UIViewController, UITableViewDelegate ,UITableViewDataSource, ListUsersViewControllerInput {
    
    var users : [Domain.User] = [Domain.User]()
    @IBOutlet weak var tableView : UITableView!{
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    func getUsers(){
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.users.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func display(users usrs: [User]) {
        self.users = usrs
        self.tableView.reloadData()
    }
    
}
