//
//  ServiceProvider.swift
//  Network
//
//  Created by Wassim on 9/28/17.
//  Copyright © 2017 wassimseif. All rights reserved.
//

import Foundation
import Moya
public enum NetworkProvider {
    case getUsers
}

extension NetworkProvider : TargetType {
    public var baseURL: URL {
        return URL(string: "http://localhost:3000")!
    }
    public var path: String {
        switch  self  {
        case .getUsers:
            return "users"
        }
    }
    public var task: Task {
        switch self {
        case  .getUsers:
            return .requestPlain
        }
    }
    
    public var method: Moya.Method {
        switch self  {
        case  .getUsers:
            return .get
        }
    }
    
    
    
    public var headers: [String: String]? {
        return nil
    }
    public var sampleData: Data {
        return Data()
    }
}
