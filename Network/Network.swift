//
//  Netwirk.swift
//  Network
//
//  Created by Wassim on 9/28/17.
//  Copyright © 2017 wassimseif. All rights reserved.
//

import Foundation
import RxSwift
import Moya
 class AbstractNetwork<T : Codable> {
    private var provider = MoyaProvider<NetworkProvider>()
    
}
