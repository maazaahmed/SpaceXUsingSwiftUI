//
//  Apollo.swift
//  SpaceX-GraphQL
//
//  Created by Macbook Pro on 13/06/2021.
//

import Foundation
import Apollo


class Network {
    static let shared = Network()
    lazy var apollo = ApolloClient(url: URL(string: "https://api.spacex.land/graphql/")!)
}
