//
//  Computer.swift
//  ComputerDatabaseTest
//
//  Created by Eduard Ovchinnikov on 16.06.2018.
//  Copyright © 2018 Эдуард Овчинников. All rights reserved.
//

import Foundation

typealias JSON = [String:AnyObject]

struct Company{
    var id: Int
    var name: String
    
    init?(dict: JSON){
        guard let id = dict["id"] as? Int,
            let name = dict["name"] as? String else { return nil}
        
        self.id = id
        self.name = name
    }
}

struct Computer{
    var id: Int
    var name: String
    var company: Company?
    
    init?(dict: JSON){
        guard let id = dict["id"] as? Int,
            let name = dict["name"] as? String else { return nil}
        
        self.id = id
        self.name = name
        
        if let company = dict["company"]{
            let companyItem = Company(dict: company as! JSON)
            self.company = companyItem
        }
        
    }
    
}

