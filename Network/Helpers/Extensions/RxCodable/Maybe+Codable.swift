//
//  Maybe+Codable.swift
//  SwiftCleanArchitecture
//
//  Created by Wassim Seifeddine on 9/27/17.
//  Copyright © 2017 wassimseif. All rights reserved.
//

import Foundation
import RxSwift

public extension PrimitiveSequence where TraitType == MaybeTrait, ElementType == Data {
    public func map<T>(_ type: T.Type, using decoder: JSONDecoder? = nil) -> PrimitiveSequence<TraitType, T> where T: Decodable {
        return self.map { data -> T in
            let decoder = decoder ?? JSONDecoder()
            return try decoder.decode(type, from: data)
        }
    }
}

public extension PrimitiveSequence where TraitType == MaybeTrait, ElementType == String {
    public func map<T>(_ type: T.Type, using decoder: JSONDecoder? = nil) -> PrimitiveSequence<TraitType, T> where T: Decodable {
        return self
            .map { string in string.data(using: .utf8) ?? Data() }
            .map(type, using: decoder)
    }
}


