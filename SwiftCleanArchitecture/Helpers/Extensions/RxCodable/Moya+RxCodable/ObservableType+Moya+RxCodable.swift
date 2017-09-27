//
//  ObservableType+Moya+RxCodable.swift
//  SwiftCleanArchitecture
//
//  Created by Wassim Seifeddine on 9/27/17.
//  Copyright © 2017 wassimseif. All rights reserved.
//

import Foundation
import Moya
import RxSwift

#if !COCOAPODS
    import RxCodable
#endif

public extension ObservableType where E == Moya.Response {
    public func map<T>(_ type: T.Type, using decoder: JSONDecoder? = nil) -> Observable<T> where T: Decodable {
        return self
            .map { response in response.data }
            .map(type, using: decoder)
    }
}
