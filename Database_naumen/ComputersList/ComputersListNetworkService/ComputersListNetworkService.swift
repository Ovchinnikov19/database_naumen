//
//  File.swift
//  ComputerDatabaseTest
//
//  Created by Eduard Ovchinnikov on 18.06.2018.
//  Copyright © 2018 Эдуард Овчинников. All rights reserved.
//

import Foundation

class ComputersListNetworkService {
    private init() {}
    static func getComputersList(page: Int, completion: @escaping (GetComputersResponse)->()) {
        guard let url = URL(string:"http://testwork.nsd.naumen.ru/rest/computers?p=\(page)") else { return }
        
        NetworkServiceGeneral.shared.getData(url: url){ (json) in
            do{
                let response = try GetComputersResponse(json: json)
                completion(response)
            } catch {
                print(error)
            }
            
        }
    }
}
