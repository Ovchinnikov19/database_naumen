//
//  GetComputersResponse.swift
//  ComputerDatabaseTest
//
//  Created by Eduard Ovchinnikov on 18.06.2018.
//  Copyright © 2018 Эдуард Овчинников. All rights reserved.
//

import Foundation

struct GetComputersResponse{
    let computers: [Computer]
    
    typealias DictionaryJson = [String:Any]
    
    init(json: Any) throws {
        guard let itemsJson = json as? DictionaryJson else { throw NetworkError.failInternetError }
        guard let array = itemsJson["items"] as? [JSON] else { throw NetworkError.noInternetConnection }
        var computers = [Computer]()
        for dictionary in array {
            guard let computer = Computer(dict: dictionary) else { continue }
            computers.append(computer)
        }
        self.computers = computers
    }
    
}
